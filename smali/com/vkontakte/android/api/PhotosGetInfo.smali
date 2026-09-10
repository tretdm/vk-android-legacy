.class public Lcom/vkontakte/android/api/PhotosGetInfo;
.super Lcom/vkontakte/android/APIRequest;
.source "PhotosGetInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/api/PhotosGetInfo$Callback;
    }
.end annotation


# instance fields
.field callback:Lcom/vkontakte/android/api/PhotosGetInfo$Callback;


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .locals 4
    .param p1, "oid"    # I
    .param p2, "pid"    # I
    .param p3, "akey"    # Ljava/lang/String;

    .prologue
    .line 13
    const-string v0, "photos.getById"

    invoke-direct {p0, v0}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 14
    const-string v1, "photos"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/vkontakte/android/api/PhotosGetInfo;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 15
    const-string v0, "extended"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/api/PhotosGetInfo;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    .line 16
    return-void

    .line 14
    :cond_0
    const-string v0, ""

    goto :goto_0
.end method


# virtual methods
.method public invokeCallback(Ljava/lang/Object;)V
    .locals 8
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/vkontakte/android/api/PhotosGetInfo;->callback:Lcom/vkontakte/android/api/PhotosGetInfo$Callback;

    if-nez v0, :cond_0

    .line 42
    :goto_0
    return-void

    .line 35
    :cond_0
    instance-of v0, p1, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    if-eqz v0, :cond_1

    move-object v6, p1

    .line 36
    check-cast v6, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    .line 37
    .local v6, "er":Lcom/vkontakte/android/APIRequest$ErrorResponse;
    iget-object v0, p0, Lcom/vkontakte/android/api/PhotosGetInfo;->callback:Lcom/vkontakte/android/api/PhotosGetInfo$Callback;

    iget v1, v6, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorCode:I

    iget-object v2, v6, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorMessage:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/vkontakte/android/api/PhotosGetInfo$Callback;->fail(ILjava/lang/String;)V

    goto :goto_0

    .end local v6    # "er":Lcom/vkontakte/android/APIRequest$ErrorResponse;
    :cond_1
    move-object v7, p1

    .line 39
    check-cast v7, [Ljava/lang/Object;

    .line 40
    .local v7, "r":[Ljava/lang/Object;
    iget-object v0, p0, Lcom/vkontakte/android/api/PhotosGetInfo;->callback:Lcom/vkontakte/android/api/PhotosGetInfo$Callback;

    const/4 v1, 0x0

    aget-object v1, v7, v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    aget-object v2, v7, v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x2

    aget-object v3, v7, v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x3

    aget-object v4, v7, v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    const/4 v5, 0x4

    aget-object v5, v7, v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-interface/range {v0 .. v5}, Lcom/vkontakte/android/api/PhotosGetInfo$Callback;->success(IIIZZ)V

    goto :goto_0
.end method

.method public parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 8
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 20
    :try_start_0
    const-string v1, "response"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 21
    .local v0, "p":Lorg/json/JSONObject;
    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "likes"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "count"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v4

    const/4 v4, 0x1

    const-string v5, "comments"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "count"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v4

    const/4 v4, 0x2

    const-string v5, "tags"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "count"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v4

    const/4 v5, 0x3

    const-string v4, "likes"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v6, "user_likes"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    if-ne v4, v2, :cond_0

    move v4, v2

    :goto_0
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v1, v5

    const/4 v4, 0x4

    const-string v5, "likes"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "can_comment"

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v2, :cond_1

    :goto_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    .end local v0    # "p":Lorg/json/JSONObject;
    :goto_2
    return-object v1

    .restart local v0    # "p":Lorg/json/JSONObject;
    :cond_0
    move v4, v3

    .line 21
    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_1

    .line 22
    .end local v0    # "p":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 24
    const/4 v1, 0x0

    goto :goto_2
.end method

.method public setCallback(Lcom/vkontakte/android/api/PhotosGetInfo$Callback;)Lcom/vkontakte/android/APIRequest;
    .locals 0
    .param p1, "cb"    # Lcom/vkontakte/android/api/PhotosGetInfo$Callback;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/vkontakte/android/api/PhotosGetInfo;->callback:Lcom/vkontakte/android/api/PhotosGetInfo$Callback;

    .line 29
    return-object p0
.end method
