.class public Lcom/vkontakte/android/api/GetMessageInfo;
.super Lcom/vkontakte/android/APIRequest;
.source "GetMessageInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/api/GetMessageInfo$Callback;
    }
.end annotation


# static fields
.field private static final CODE_MULTI:Ljava/lang/String; = "var dlg=API.messages.getDialogs({uid:%1$d})[1];return {ph:API.users.get({uids:dlg.chat_active,fields:\"%2$s\"})@.%2$s,dlg:dlg, read: API.messages.getById({mid:%3$d})[1].read_state};"

.field private static final CODE_SINGLE:Ljava/lang/String; = "return API.users.get({uids:%1$d,fields:\"%2$s\"})[0]+{read: API.messages.getById({mid:%3$d})[1].read_state};"


# instance fields
.field callback:Lcom/vkontakte/android/api/GetMessageInfo$Callback;

.field id:I


# direct methods
.method public constructor <init>(II)V
    .locals 6
    .param p1, "pid"    # I
    .param p2, "mid"    # I

    .prologue
    .line 20
    const-string v0, "execute"

    invoke-direct {p0, v0}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 21
    iput p1, p0, Lcom/vkontakte/android/api/GetMessageInfo;->id:I

    .line 22
    const-string v2, "code"

    iget v0, p0, Lcom/vkontakte/android/api/GetMessageInfo;->id:I

    const v1, 0x77359400

    if-ge v0, v1, :cond_0

    const-string v0, "return API.users.get({uids:%1$d,fields:\"%2$s\"})[0]+{read: API.messages.getById({mid:%3$d})[1].read_state};"

    :goto_0
    const/4 v1, 0x3

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v4, p0, Lcom/vkontakte/android/api/GetMessageInfo;->id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v4, 0x1

    sget v1, Lcom/vkontakte/android/Global;->displayDensity:F

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v5

    if-lez v1, :cond_1

    const-string v1, "photo_medium_rec"

    :goto_1
    aput-object v1, v3, v4

    const/4 v1, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lcom/vkontakte/android/api/GetMessageInfo;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 24
    new-instance v0, Lcom/vkontakte/android/api/GetMessageInfo$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/api/GetMessageInfo$1;-><init>(Lcom/vkontakte/android/api/GetMessageInfo;)V

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/api/GetMessageInfo;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    .line 34
    return-void

    .line 22
    :cond_0
    const-string v0, "var dlg=API.messages.getDialogs({uid:%1$d})[1];return {ph:API.users.get({uids:dlg.chat_active,fields:\"%2$s\"})@.%2$s,dlg:dlg, read: API.messages.getById({mid:%3$d})[1].read_state};"

    goto :goto_0

    :cond_1
    const-string v1, "photo_rec"

    goto :goto_1
.end method


# virtual methods
.method public invokeCallback(Ljava/lang/Object;)V
    .locals 6
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 64
    iget-object v2, p0, Lcom/vkontakte/android/api/GetMessageInfo;->callback:Lcom/vkontakte/android/api/GetMessageInfo$Callback;

    if-nez v2, :cond_0

    .line 72
    :goto_0
    return-void

    .line 65
    :cond_0
    instance-of v2, p1, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    if-eqz v2, :cond_1

    move-object v0, p1

    .line 66
    check-cast v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    .line 67
    .local v0, "er":Lcom/vkontakte/android/APIRequest$ErrorResponse;
    iget-object v2, p0, Lcom/vkontakte/android/api/GetMessageInfo;->callback:Lcom/vkontakte/android/api/GetMessageInfo$Callback;

    iget v3, v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorCode:I

    iget-object v4, v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorMessage:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Lcom/vkontakte/android/api/GetMessageInfo$Callback;->fail(ILjava/lang/String;)V

    goto :goto_0

    .end local v0    # "er":Lcom/vkontakte/android/APIRequest$ErrorResponse;
    :cond_1
    move-object v1, p1

    .line 69
    check-cast v1, [Ljava/lang/Object;

    .line 70
    .local v1, "r":[Ljava/lang/Object;
    iget-object v5, p0, Lcom/vkontakte/android/api/GetMessageInfo;->callback:Lcom/vkontakte/android/api/GetMessageInfo$Callback;

    const/4 v2, 0x0

    aget-object v2, v1, v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v3, v1, v3

    check-cast v3, Ljava/lang/String;

    const/4 v4, 0x2

    aget-object v4, v1, v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-interface {v5, v2, v3, v4}, Lcom/vkontakte/android/api/GetMessageInfo$Callback;->success(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 11
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 38
    :try_start_0
    sget v9, Lcom/vkontakte/android/Global;->displayDensity:F

    const/high16 v10, 0x3f800000    # 1.0f

    cmpl-float v9, v9, v10

    if-lez v9, :cond_0

    const-string v2, "photo_medium_rec"

    .local v2, "ph":Ljava/lang/String;
    :goto_0
    const/4 v3, 0x0

    .local v3, "photo":Ljava/lang/String;
    const/4 v1, 0x0

    .line 39
    .local v1, "name":Ljava/lang/String;
    const/4 v5, 0x0

    .line 40
    .local v5, "read":Z
    iget v9, p0, Lcom/vkontakte/android/api/GetMessageInfo;->id:I

    const v10, 0x77359400

    if-ge v9, v10, :cond_2

    .line 41
    const-string v9, "response"

    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 42
    .local v4, "r":Lorg/json/JSONObject;
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "first_name"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "last_name"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 43
    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 44
    const-string v9, "read"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    if-ne v9, v7, :cond_1

    move v5, v7

    .line 56
    .end local v4    # "r":Lorg/json/JSONObject;
    :goto_1
    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v3, v7, v8

    const/4 v8, 0x1

    aput-object v1, v7, v8

    const/4 v8, 0x2

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v7, v8

    .line 60
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "ph":Ljava/lang/String;
    .end local v3    # "photo":Ljava/lang/String;
    .end local v5    # "read":Z
    :goto_2
    return-object v7

    .line 38
    :cond_0
    const-string v2, "photo_rec"

    goto :goto_0

    .restart local v1    # "name":Ljava/lang/String;
    .restart local v2    # "ph":Ljava/lang/String;
    .restart local v3    # "photo":Ljava/lang/String;
    .restart local v4    # "r":Lorg/json/JSONObject;
    .restart local v5    # "read":Z
    :cond_1
    move v5, v8

    .line 44
    goto :goto_1

    .line 46
    .end local v4    # "r":Lorg/json/JSONObject;
    :cond_2
    const-string v9, "response"

    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    const-string v10, "ph"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 47
    .local v4, "r":Lorg/json/JSONArray;
    const-string v3, "M"

    .line 48
    if-eqz v4, :cond_3

    .line 49
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v9

    const/4 v10, 0x4

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    if-lt v0, v9, :cond_4

    .line 52
    .end local v0    # "i":I
    :cond_3
    const-string v9, "response"

    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    const-string v10, "dlg"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    const-string v10, "title"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 53
    const-string v9, "response"

    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    const-string v10, "read"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    if-ne v9, v7, :cond_5

    move v5, v7

    :goto_4
    goto :goto_1

    .line 50
    .restart local v0    # "i":I
    :cond_4
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, "|"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 49
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .end local v0    # "i":I
    :cond_5
    move v5, v8

    .line 53
    goto :goto_4

    .line 57
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "ph":Ljava/lang/String;
    .end local v3    # "photo":Ljava/lang/String;
    .end local v4    # "r":Lorg/json/JSONArray;
    .end local v5    # "read":Z
    :catch_0
    move-exception v6

    .line 58
    .local v6, "x":Ljava/lang/Exception;
    const-string v7, "vk"

    invoke-static {v7, v6}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 60
    const/4 v7, 0x0

    goto :goto_2
.end method

.method public setCallback(Lcom/vkontakte/android/api/GetMessageInfo$Callback;)Lcom/vkontakte/android/APIRequest;
    .locals 0
    .param p1, "cb"    # Lcom/vkontakte/android/api/GetMessageInfo$Callback;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/vkontakte/android/api/GetMessageInfo;->callback:Lcom/vkontakte/android/api/GetMessageInfo$Callback;

    .line 76
    return-object p0
.end method
