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
.method public constructor <init>(ZIIZI)V
    .locals 3
    .param p1, "add"    # Z
    .param p2, "oid"    # I
    .param p3, "pid"    # I
    .param p4, "pub"    # Z
    .param p5, "type"    # I

    .prologue
    const/4 v2, 0x1

    .line 12
    if-nez p5, :cond_5

    if-eqz p1, :cond_4

    const-string v0, "wall.addLike"

    :goto_0
    invoke-direct {p0, v0}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 14
    if-nez p5, :cond_0

    .line 15
    const-string v0, "owner_id"

    invoke-virtual {p0, v0, p2}, Lcom/vkontakte/android/api/WallLike;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    const-string v1, "post_id"

    invoke-virtual {v0, v1, p3}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    .line 16
    if-eqz p1, :cond_0

    if-eqz p4, :cond_0

    const-string v0, "need_publish"

    invoke-virtual {p0, v0, v2}, Lcom/vkontakte/android/api/WallLike;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    .line 18
    :cond_0
    if-ne p5, v2, :cond_1

    .line 19
    const-string v0, "type"

    const-string v1, "photo"

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/api/WallLike;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    const-string v1, "owner_id"

    invoke-virtual {v0, v1, p2}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    const-string v1, "item_id"

    invoke-virtual {v0, v1, p3}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    .line 21
    :cond_1
    const/4 v0, 0x2

    if-ne p5, v0, :cond_2

    .line 22
    const-string v0, "type"

    const-string v1, "video"

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/api/WallLike;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    const-string v1, "owner_id"

    invoke-virtual {v0, v1, p2}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    const-string v1, "item_id"

    invoke-virtual {v0, v1, p3}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    .line 24
    :cond_2
    const/4 v0, 0x5

    if-ne p5, v0, :cond_3

    .line 25
    const-string v0, "type"

    const-string v1, "comment"

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/api/WallLike;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    const-string v1, "owner_id"

    invoke-virtual {v0, v1, p2}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    const-string v1, "item_id"

    invoke-virtual {v0, v1, p3}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    .line 28
    :cond_3
    new-instance v0, Lcom/vkontakte/android/api/WallLike$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/api/WallLike$1;-><init>(Lcom/vkontakte/android/api/WallLike;)V

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/api/WallLike;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    .line 38
    return-void

    .line 12
    :cond_4
    const-string v0, "wall.deleteLike"

    goto :goto_0

    :cond_5
    if-eqz p1, :cond_6

    const-string v0, "likes.add"

    goto :goto_0

    :cond_6
    const-string v0, "likes.delete"

    goto :goto_0
.end method


# virtual methods
.method public parse(Lorg/json/JSONObject;)V
    .locals 6
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    .line 42
    :try_start_0
    const-string v1, "response"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "likes"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 43
    .local v0, "likes":I
    iget-object v1, p0, Lcom/vkontakte/android/api/WallLike;->callback:Lcom/vkontakte/android/api/WallLike$Callback;

    if-eqz v1, :cond_0

    .line 44
    iget-object v1, p0, Lcom/vkontakte/android/api/WallLike;->callback:Lcom/vkontakte/android/api/WallLike$Callback;

    const-string v2, "response"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "reposts"

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "response"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "reposted_post_id"

    const/4 v5, -0x1

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    invoke-interface {v1, v0, v2, v3}, Lcom/vkontakte/android/api/WallLike$Callback;->success(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    .end local v0    # "likes":I
    :cond_0
    :goto_0
    return-void

    .line 45
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public setCallback(Lcom/vkontakte/android/api/WallLike$Callback;)Lcom/vkontakte/android/APIRequest;
    .locals 0
    .param p1, "cb"    # Lcom/vkontakte/android/api/WallLike$Callback;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/vkontakte/android/api/WallLike;->callback:Lcom/vkontakte/android/api/WallLike$Callback;

    .line 51
    return-object p0
.end method
