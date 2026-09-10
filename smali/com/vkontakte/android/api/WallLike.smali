.class public Lcom/vkontakte/android/api/WallLike;
.super Lcom/vkontakte/android/APIRequest;
.source "WallLike.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/api/WallLike$Callback;
    }
.end annotation


# instance fields
.field callback:Lcom/vkontakte/android/api/WallLike$Callback;


# direct methods
.method public constructor <init>(ZIIZIILjava/lang/String;)V
    .locals 4
    .param p1, "add"    # Z
    .param p2, "oid"    # I
    .param p3, "pid"    # I
    .param p4, "pub"    # Z
    .param p5, "type"    # I
    .param p6, "parentType"    # I
    .param p7, "akey"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 12
    if-nez p5, :cond_6

    if-eqz p1, :cond_5

    const-string v1, "wall.addLike"

    :goto_0
    invoke-direct {p0, v1}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 14
    if-nez p5, :cond_0

    .line 15
    const-string v1, "owner_id"

    invoke-virtual {p0, v1, p2}, Lcom/vkontakte/android/api/WallLike;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    move-result-object v1

    const-string v2, "post_id"

    invoke-virtual {v1, v2, p3}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    .line 16
    if-eqz p1, :cond_0

    if-eqz p4, :cond_0

    const-string v1, "need_publish"

    invoke-virtual {p0, v1, v3}, Lcom/vkontakte/android/api/WallLike;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    .line 18
    :cond_0
    if-ne p5, v3, :cond_1

    .line 19
    const-string v1, "type"

    const-string v2, "photo"

    invoke-virtual {p0, v1, v2}, Lcom/vkontakte/android/api/WallLike;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    move-result-object v1

    const-string v2, "owner_id"

    invoke-virtual {v1, v2, p2}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    move-result-object v1

    const-string v2, "item_id"

    invoke-virtual {v1, v2, p3}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    .line 20
    if-eqz p7, :cond_1

    invoke-virtual {p7}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    const-string v1, "access_key"

    invoke-virtual {p0, v1, p7}, Lcom/vkontakte/android/api/WallLike;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 22
    :cond_1
    const/4 v1, 0x2

    if-ne p5, v1, :cond_2

    .line 23
    const-string v1, "type"

    const-string v2, "video"

    invoke-virtual {p0, v1, v2}, Lcom/vkontakte/android/api/WallLike;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    move-result-object v1

    const-string v2, "owner_id"

    invoke-virtual {v1, v2, p2}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    move-result-object v1

    const-string v2, "item_id"

    invoke-virtual {v1, v2, p3}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    .line 24
    if-eqz p7, :cond_2

    invoke-virtual {p7}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    const-string v1, "access_key"

    invoke-virtual {p0, v1, p7}, Lcom/vkontakte/android/api/WallLike;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 26
    :cond_2
    const/4 v1, 0x5

    if-ne p5, v1, :cond_3

    .line 27
    const-string v0, ""

    .line 28
    .local v0, "t":Ljava/lang/String;
    packed-switch p6, :pswitch_data_0

    .line 39
    :goto_1
    :pswitch_0
    const-string v1, "type"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "comment"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/vkontakte/android/api/WallLike;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    move-result-object v1

    const-string v2, "owner_id"

    invoke-virtual {v1, v2, p2}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    move-result-object v1

    const-string v2, "item_id"

    invoke-virtual {v1, v2, p3}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    .line 41
    .end local v0    # "t":Ljava/lang/String;
    :cond_3
    const/4 v1, 0x4

    if-ne p5, v1, :cond_4

    .line 42
    const-string v1, "type"

    const-string v2, "topic"

    invoke-virtual {p0, v1, v2}, Lcom/vkontakte/android/api/WallLike;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    move-result-object v1

    const-string v2, "owner_id"

    invoke-virtual {v1, v2, p2}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    move-result-object v1

    const-string v2, "item_id"

    invoke-virtual {v1, v2, p3}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    .line 44
    :cond_4
    return-void

    .line 12
    :cond_5
    const-string v1, "wall.deleteLike"

    goto/16 :goto_0

    :cond_6
    if-eqz p1, :cond_7

    const-string v1, "likes.add"

    goto/16 :goto_0

    :cond_7
    const-string v1, "likes.delete"

    goto/16 :goto_0

    .line 30
    .restart local v0    # "t":Ljava/lang/String;
    :pswitch_1
    const-string v0, "photo_"

    .line 31
    goto :goto_1

    .line 33
    :pswitch_2
    const-string v0, "video_"

    .line 34
    goto :goto_1

    .line 36
    :pswitch_3
    const-string v0, "topic_"

    goto :goto_1

    .line 28
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public invokeCallback(Ljava/lang/Object;)V
    .locals 6
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 56
    iget-object v2, p0, Lcom/vkontakte/android/api/WallLike;->callback:Lcom/vkontakte/android/api/WallLike$Callback;

    if-nez v2, :cond_0

    .line 64
    .end local p1    # "result":Ljava/lang/Object;
    :goto_0
    return-void

    .line 57
    .restart local p1    # "result":Ljava/lang/Object;
    :cond_0
    instance-of v2, p1, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    if-eqz v2, :cond_1

    move-object v0, p1

    .line 58
    check-cast v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    .line 59
    .local v0, "er":Lcom/vkontakte/android/APIRequest$ErrorResponse;
    iget-object v2, p0, Lcom/vkontakte/android/api/WallLike;->callback:Lcom/vkontakte/android/api/WallLike$Callback;

    iget v3, v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorCode:I

    iget-object v4, v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorMessage:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Lcom/vkontakte/android/api/WallLike$Callback;->fail(ILjava/lang/String;)V

    goto :goto_0

    .line 61
    .end local v0    # "er":Lcom/vkontakte/android/APIRequest$ErrorResponse;
    :cond_1
    check-cast p1, [I

    .end local p1    # "result":Ljava/lang/Object;
    move-object v1, p1

    check-cast v1, [I

    .line 62
    .local v1, "r":[I
    iget-object v2, p0, Lcom/vkontakte/android/api/WallLike;->callback:Lcom/vkontakte/android/api/WallLike$Callback;

    const/4 v3, 0x0

    aget v3, v1, v3

    const/4 v4, 0x1

    aget v4, v1, v4

    const/4 v5, 0x2

    aget v5, v1, v5

    invoke-interface {v2, v3, v4, v5}, Lcom/vkontakte/android/api/WallLike$Callback;->success(III)V

    goto :goto_0
.end method

.method public parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 6
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    .line 48
    :try_start_0
    const-string v1, "response"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "likes"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 49
    .local v0, "likes":I
    const/4 v1, 0x3

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput v0, v1, v2

    const/4 v2, 0x1

    const-string v3, "response"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "reposts"

    const/4 v5, -0x1

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    aput v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "response"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "reposted_post_id"

    const/4 v5, -0x1

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    aput v3, v1, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    .end local v0    # "likes":I
    :goto_0
    return-object v1

    .line 50
    :catch_0
    move-exception v1

    .line 52
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setCallback(Lcom/vkontakte/android/api/WallLike$Callback;)Lcom/vkontakte/android/APIRequest;
    .locals 0
    .param p1, "cb"    # Lcom/vkontakte/android/api/WallLike$Callback;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/vkontakte/android/api/WallLike;->callback:Lcom/vkontakte/android/api/WallLike$Callback;

    .line 68
    return-object p0
.end method
