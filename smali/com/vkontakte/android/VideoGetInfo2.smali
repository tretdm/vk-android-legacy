.class public Lcom/vkontakte/android/VideoGetInfo2;
.super Lcom/vkontakte/android/APIRequest;
.source "VideoGetInfo2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/VideoGetInfo2$Callback;
    }
.end annotation


# static fields
.field private static final CODE:Ljava/lang/String; = "return {l:API.likes.getList({type:\"video\",item_id:%1$d,owner_id:%2$d,count:1}).count,il:API.likes.isLiked({type:\"video\",item_id:%1$d,owner_id:%2$d}),a:%3$s[0],c:API.video.getComments({vid:%1$d,owner_id:%2$d,count:1})[0]};"

.field private static final CODE_GROUP:Ljava/lang/String; = "API.groups.getById({gid:%d})"

.field private static final CODE_USER:Ljava/lang/String; = "API.getProfiles({uids:%d,fields:\"photo_rec,photo_medium_rec\"})"


# instance fields
.field callback:Lcom/vkontakte/android/VideoGetInfo2$Callback;

.field private vf:Lcom/vkontakte/android/api/VideoFile;


# direct methods
.method public constructor <init>(Lcom/vkontakte/android/api/VideoFile;)V
    .locals 7
    .param p1, "f"    # Lcom/vkontakte/android/api/VideoFile;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 18
    const-string v1, "execute"

    invoke-direct {p0, v1}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 19
    iget v1, p1, Lcom/vkontakte/android/api/VideoFile;->oid:I

    if-lez v1, :cond_0

    const-string v1, "API.getProfiles({uids:%d,fields:\"photo_rec,photo_medium_rec\"})"

    new-array v2, v6, [Ljava/lang/Object;

    iget v3, p1, Lcom/vkontakte/android/api/VideoFile;->oid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 20
    .local v0, "pc":Ljava/lang/String;
    :goto_0
    const-string v1, "code"

    const-string v2, "return {l:API.likes.getList({type:\"video\",item_id:%1$d,owner_id:%2$d,count:1}).count,il:API.likes.isLiked({type:\"video\",item_id:%1$d,owner_id:%2$d}),a:%3$s[0],c:API.video.getComments({vid:%1$d,owner_id:%2$d,count:1})[0]};"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p1, Lcom/vkontakte/android/api/VideoFile;->vid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    iget v4, p1, Lcom/vkontakte/android/api/VideoFile;->oid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    const/4 v4, 0x2

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/vkontakte/android/VideoGetInfo2;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 21
    iput-object p1, p0, Lcom/vkontakte/android/VideoGetInfo2;->vf:Lcom/vkontakte/android/api/VideoFile;

    .line 22
    return-void

    .line 19
    .end local v0    # "pc":Ljava/lang/String;
    :cond_0
    const-string v1, "API.groups.getById({gid:%d})"

    new-array v2, v6, [Ljava/lang/Object;

    iget v3, p1, Lcom/vkontakte/android/api/VideoFile;->oid:I

    neg-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public invokeCallback(Ljava/lang/Object;)V
    .locals 9
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    const/4 v8, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 49
    iget-object v0, p0, Lcom/vkontakte/android/VideoGetInfo2;->callback:Lcom/vkontakte/android/VideoGetInfo2$Callback;

    if-nez v0, :cond_0

    .line 59
    :goto_0
    return-void

    .line 51
    :cond_0
    instance-of v0, p1, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    if-eqz v0, :cond_1

    move-object v6, p1

    .line 52
    check-cast v6, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    .line 53
    .local v6, "er":Lcom/vkontakte/android/APIRequest$ErrorResponse;
    iget-object v0, p0, Lcom/vkontakte/android/VideoGetInfo2;->callback:Lcom/vkontakte/android/VideoGetInfo2$Callback;

    iget v1, v6, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorCode:I

    iget-object v2, v6, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorMessage:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/vkontakte/android/VideoGetInfo2$Callback;->fail(ILjava/lang/String;)V

    goto :goto_0

    .end local v6    # "er":Lcom/vkontakte/android/APIRequest$ErrorResponse;
    :cond_1
    move-object v7, p1

    .line 55
    check-cast v7, [Ljava/lang/Object;

    .line 56
    .local v7, "r":[Ljava/lang/Object;
    const-string v0, "vk"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v2, v7, v5

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, v7, v8

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Lcom/vkontakte/android/VideoGetInfo2;->callback:Lcom/vkontakte/android/VideoGetInfo2$Callback;

    aget-object v1, v7, v4

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-object v2, v7, v3

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v3, :cond_2

    move v2, v3

    :goto_1
    const/4 v3, 0x2

    aget-object v3, v7, v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aget-object v4, v7, v5

    check-cast v4, Ljava/lang/String;

    aget-object v5, v7, v8

    check-cast v5, Ljava/lang/String;

    invoke-interface/range {v0 .. v5}, Lcom/vkontakte/android/VideoGetInfo2$Callback;->success(IZILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move v2, v4

    goto :goto_1
.end method

.method public parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 8
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    const/high16 v7, 0x3f800000    # 1.0f

    .line 26
    :try_start_0
    const-string v4, "response"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 27
    const-string v4, "a"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 28
    .local v0, "a":Lorg/json/JSONObject;
    const-string v4, "vk"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "a="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    const-string v4, "first_name"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 30
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "first_name"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "last_name"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 31
    .local v1, "name":Ljava/lang/String;
    sget v4, Lcom/vkontakte/android/Global;->displayDensity:F

    cmpl-float v4, v4, v7

    if-lez v4, :cond_0

    const-string v4, "photo_medium_rec"

    :goto_0
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 36
    .local v2, "photo":Ljava/lang/String;
    :goto_1
    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "l"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "il"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "c"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    aput-object v1, v4, v5

    const/4 v5, 0x4

    aput-object v2, v4, v5

    .line 40
    .end local v0    # "a":Lorg/json/JSONObject;
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "photo":Ljava/lang/String;
    :goto_2
    return-object v4

    .line 31
    .restart local v0    # "a":Lorg/json/JSONObject;
    .restart local v1    # "name":Ljava/lang/String;
    :cond_0
    const-string v4, "photo_rec"

    goto :goto_0

    .line 33
    .end local v1    # "name":Ljava/lang/String;
    :cond_1
    const-string v4, "name"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 34
    .restart local v1    # "name":Ljava/lang/String;
    sget v4, Lcom/vkontakte/android/Global;->displayDensity:F

    cmpl-float v4, v4, v7

    if-lez v4, :cond_2

    const-string v4, "photo_medium"

    :goto_3
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "photo":Ljava/lang/String;
    goto :goto_1

    .end local v2    # "photo":Ljava/lang/String;
    :cond_2
    const-string v4, "photo"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 37
    .end local v0    # "a":Lorg/json/JSONObject;
    .end local v1    # "name":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 38
    .local v3, "x":Ljava/lang/Exception;
    const-string v4, "vk"

    invoke-static {v4, v3}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 40
    const/4 v4, 0x0

    goto :goto_2
.end method

.method public setCallback(Lcom/vkontakte/android/VideoGetInfo2$Callback;)Lcom/vkontakte/android/APIRequest;
    .locals 0
    .param p1, "cb"    # Lcom/vkontakte/android/VideoGetInfo2$Callback;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/vkontakte/android/VideoGetInfo2;->callback:Lcom/vkontakte/android/VideoGetInfo2$Callback;

    .line 45
    return-object p0
.end method
