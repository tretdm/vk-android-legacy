.class public Lcom/vkontakte/android/api/GetWallInfo;
.super Lcom/vkontakte/android/APIRequest;
.source "GetWallInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/api/GetWallInfo$Callback;
    }
.end annotation


# instance fields
.field callback:Lcom/vkontakte/android/api/GetWallInfo$Callback;

.field private id:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 15
    const-string v0, "execute.getUserInfo"

    invoke-direct {p0, v0}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 16
    iput p1, p0, Lcom/vkontakte/android/api/GetWallInfo;->id:I

    .line 17
    return-void
.end method


# virtual methods
.method public invokeCallback(Ljava/lang/Object;)V
    .locals 13
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 36
    iget-object v1, p0, Lcom/vkontakte/android/api/GetWallInfo;->callback:Lcom/vkontakte/android/api/GetWallInfo$Callback;

    if-nez v1, :cond_0

    .line 49
    .end local p1    # "result":Ljava/lang/Object;
    :goto_0
    return-void

    .line 37
    .restart local p1    # "result":Ljava/lang/Object;
    :cond_0
    instance-of v1, p1, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    if-eqz v1, :cond_1

    move-object v10, p1

    .line 38
    check-cast v10, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    .line 39
    .local v10, "er":Lcom/vkontakte/android/APIRequest$ErrorResponse;
    iget-object v1, p0, Lcom/vkontakte/android/api/GetWallInfo;->callback:Lcom/vkontakte/android/api/GetWallInfo$Callback;

    iget v2, v10, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorCode:I

    iget-object v3, v10, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorMessage:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/vkontakte/android/api/GetWallInfo$Callback;->fail(ILjava/lang/String;)V

    goto :goto_0

    .line 42
    .end local v10    # "er":Lcom/vkontakte/android/APIRequest$ErrorResponse;
    :cond_1
    :try_start_0
    check-cast p1, [Ljava/lang/Object;

    .end local p1    # "result":Ljava/lang/Object;
    move-object v0, p1

    check-cast v0, [Ljava/lang/Object;

    move-object v11, v0

    .line 43
    .local v11, "r":[Ljava/lang/Object;
    iget-object v1, p0, Lcom/vkontakte/android/api/GetWallInfo;->callback:Lcom/vkontakte/android/api/GetWallInfo$Callback;

    const/4 v2, 0x0

    aget-object v2, v11, v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v3, v11, v3

    check-cast v3, Ljava/lang/String;

    const/4 v4, 0x2

    aget-object v4, v11, v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    const/4 v5, 0x3

    aget-object v5, v11, v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    const/4 v6, 0x4

    aget-object v6, v11, v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v7, 0x5

    aget-object v7, v11, v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v8, 0x6

    aget-object v8, v11, v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/4 v9, 0x7

    aget-object v9, v11, v9

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    invoke-interface/range {v1 .. v9}, Lcom/vkontakte/android/api/GetWallInfo$Callback;->success(Ljava/lang/String;Ljava/lang/String;ZZIIIZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 44
    .end local v11    # "r":[Ljava/lang/Object;
    :catch_0
    move-exception v12

    .line 45
    .local v12, "x":Ljava/lang/Exception;
    const-string v1, "vk"

    invoke-static {v1, v12}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 46
    iget-object v1, p0, Lcom/vkontakte/android/api/GetWallInfo;->callback:Lcom/vkontakte/android/api/GetWallInfo$Callback;

    const/4 v2, -0x1

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Lcom/vkontakte/android/api/GetWallInfo$Callback;->fail(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 11
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 21
    :try_start_0
    const-string v5, "response"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 22
    const-string v5, "profile"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 23
    .local v2, "jp":Lorg/json/JSONObject;
    const-string v5, "info"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v8, "intro"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 24
    .local v1, "intro":I
    const-string v5, "exports"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 25
    .local v3, "jx":Lorg/json/JSONObject;
    const/4 v0, 0x0

    .line 26
    .local v0, "country":I
    const-string v5, "country"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 27
    const-string v5, "country"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v8, "id"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 28
    :cond_0
    const/16 v5, 0x8

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v8, 0x0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "first_name"

    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "last_name"

    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v5, v8

    const/4 v9, 0x1

    sget v8, Lcom/vkontakte/android/Global;->displayDensity:F

    const/high16 v10, 0x3f800000    # 1.0f

    cmpl-float v8, v8, v10

    if-lez v8, :cond_1

    const-string v8, "photo_100"

    :goto_0
    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v9

    const/4 v9, 0x2

    if-eqz v3, :cond_2

    const-string v8, "twitter"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    if-ne v8, v6, :cond_2

    move v8, v6

    :goto_1
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v5, v9

    const/4 v9, 0x3

    if-eqz v3, :cond_3

    const-string v8, "facebook"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    if-ne v8, v6, :cond_3

    move v8, v6

    :goto_2
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v5, v9

    const/4 v8, 0x4

    const-string v9, "time"

    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v5, v8

    const/4 v8, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v5, v8

    const/4 v8, 0x6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v5, v8

    const/4 v8, 0x7

    const-string v9, "has_new_items"

    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v9

    if-ne v9, v6, :cond_4

    :goto_3
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v8

    .line 32
    .end local v0    # "country":I
    .end local v1    # "intro":I
    .end local v2    # "jp":Lorg/json/JSONObject;
    .end local v3    # "jx":Lorg/json/JSONObject;
    :goto_4
    return-object v5

    .line 28
    .restart local v0    # "country":I
    .restart local v1    # "intro":I
    .restart local v2    # "jp":Lorg/json/JSONObject;
    .restart local v3    # "jx":Lorg/json/JSONObject;
    :cond_1
    const-string v8, "photo_50"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_2
    move v8, v7

    goto :goto_1

    :cond_3
    move v8, v7

    goto :goto_2

    :cond_4
    move v6, v7

    goto :goto_3

    .line 29
    .end local v0    # "country":I
    .end local v1    # "intro":I
    .end local v2    # "jp":Lorg/json/JSONObject;
    .end local v3    # "jx":Lorg/json/JSONObject;
    :catch_0
    move-exception v4

    .line 30
    .local v4, "x":Ljava/lang/Exception;
    const-string v5, "vk"

    invoke-static {v5, v4}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 32
    const/4 v5, 0x0

    goto :goto_4
.end method

.method public setCallback(Lcom/vkontakte/android/api/GetWallInfo$Callback;)Lcom/vkontakte/android/APIRequest;
    .locals 0
    .param p1, "cb"    # Lcom/vkontakte/android/api/GetWallInfo$Callback;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/vkontakte/android/api/GetWallInfo;->callback:Lcom/vkontakte/android/api/GetWallInfo$Callback;

    .line 53
    return-object p0
.end method
