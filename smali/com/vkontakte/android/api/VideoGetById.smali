.class public Lcom/vkontakte/android/api/VideoGetById;
.super Lcom/vkontakte/android/APIRequest;
.source "VideoGetById.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/api/VideoGetById$Callback;
    }
.end annotation


# instance fields
.field callback:Lcom/vkontakte/android/api/VideoGetById$Callback;


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .locals 3
    .param p1, "oid"    # I
    .param p2, "vid"    # I
    .param p3, "accessKey"    # Ljava/lang/String;

    .prologue
    .line 13
    const-string v0, "video.get"

    invoke-direct {p0, v0}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 14
    const-string v0, "videos"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/api/VideoGetById;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 15
    const-string v0, "extended"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/api/VideoGetById;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    .line 16
    if-eqz p3, :cond_0

    .line 17
    const-string v0, "access_key"

    invoke-virtual {p0, v0, p3}, Lcom/vkontakte/android/api/VideoGetById;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 18
    :cond_0
    return-void
.end method


# virtual methods
.method public invokeCallback(Ljava/lang/Object;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 36
    iget-object v1, p0, Lcom/vkontakte/android/api/VideoGetById;->callback:Lcom/vkontakte/android/api/VideoGetById$Callback;

    if-nez v1, :cond_0

    .line 43
    .end local p1    # "result":Ljava/lang/Object;
    :goto_0
    return-void

    .line 37
    .restart local p1    # "result":Ljava/lang/Object;
    :cond_0
    instance-of v1, p1, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 38
    check-cast v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    .line 39
    .local v0, "er":Lcom/vkontakte/android/APIRequest$ErrorResponse;
    iget-object v1, p0, Lcom/vkontakte/android/api/VideoGetById;->callback:Lcom/vkontakte/android/api/VideoGetById$Callback;

    iget v2, v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorCode:I

    iget-object v3, v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorMessage:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/vkontakte/android/api/VideoGetById$Callback;->fail(ILjava/lang/String;)V

    goto :goto_0

    .line 41
    .end local v0    # "er":Lcom/vkontakte/android/APIRequest$ErrorResponse;
    :cond_1
    iget-object v1, p0, Lcom/vkontakte/android/api/VideoGetById;->callback:Lcom/vkontakte/android/api/VideoGetById$Callback;

    check-cast p1, Lcom/vkontakte/android/api/VideoFile;

    .end local p1    # "result":Ljava/lang/Object;
    invoke-interface {v1, p1}, Lcom/vkontakte/android/api/VideoGetById$Callback;->success(Lcom/vkontakte/android/api/VideoFile;)V

    goto :goto_0
.end method

.method public parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 5
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    .line 22
    :try_start_0
    const-string v4, "response"

    invoke-static {p1, v4}, Lcom/vkontakte/android/api/APIUtils;->unwrapArray(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/vkontakte/android/api/JSONArrayWithCount;

    move-result-object v4

    iget-object v0, v4, Lcom/vkontakte/android/api/JSONArrayWithCount;->array:Lorg/json/JSONArray;

    .line 23
    .local v0, "a":Lorg/json/JSONArray;
    new-instance v2, Lcom/vkontakte/android/api/VideoFile;

    invoke-direct {v2}, Lcom/vkontakte/android/api/VideoFile;-><init>()V

    .line 24
    .local v2, "v":Lcom/vkontakte/android/api/VideoFile;
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 25
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 26
    .local v1, "jv":Lorg/json/JSONObject;
    new-instance v2, Lcom/vkontakte/android/api/VideoFile;

    .end local v2    # "v":Lcom/vkontakte/android/api/VideoFile;
    invoke-direct {v2, v1}, Lcom/vkontakte/android/api/VideoFile;-><init>(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    .end local v0    # "a":Lorg/json/JSONArray;
    .end local v1    # "jv":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    return-object v2

    .line 29
    :catch_0
    move-exception v3

    .line 30
    .local v3, "x":Ljava/lang/Exception;
    const-string v4, "vk"

    invoke-static {v4, v3}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 32
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public setCallback(Lcom/vkontakte/android/api/VideoGetById$Callback;)Lcom/vkontakte/android/APIRequest;
    .locals 0
    .param p1, "cb"    # Lcom/vkontakte/android/api/VideoGetById$Callback;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/vkontakte/android/api/VideoGetById;->callback:Lcom/vkontakte/android/api/VideoGetById$Callback;

    .line 47
    return-object p0
.end method
