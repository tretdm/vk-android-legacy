.class public Lcom/vkontakte/android/api/PhotosCreateAlbum;
.super Lcom/vkontakte/android/APIRequest;
.source "PhotosCreateAlbum.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/api/PhotosCreateAlbum$Callback;
    }
.end annotation


# instance fields
.field callback:Lcom/vkontakte/android/api/PhotosCreateAlbum$Callback;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 2
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "descr"    # Ljava/lang/String;
    .param p3, "privacy"    # I
    .param p4, "gid"    # I

    .prologue
    .line 13
    const-string v0, "photos.createAlbum"

    invoke-direct {p0, v0}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 14
    const-string v0, "title"

    invoke-virtual {p0, v0, p1}, Lcom/vkontakte/android/api/PhotosCreateAlbum;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    const-string v1, "description"

    invoke-virtual {v0, v1, p2}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    const-string v1, "privacy"

    invoke-virtual {v0, v1, p3}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    .line 15
    if-eqz p4, :cond_0

    const-string v0, "group_id"

    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/api/PhotosCreateAlbum;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    .line 16
    :cond_0
    return-void
.end method


# virtual methods
.method public invokeCallback(Ljava/lang/Object;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 31
    iget-object v1, p0, Lcom/vkontakte/android/api/PhotosCreateAlbum;->callback:Lcom/vkontakte/android/api/PhotosCreateAlbum$Callback;

    if-nez v1, :cond_0

    .line 38
    .end local p1    # "result":Ljava/lang/Object;
    :goto_0
    return-void

    .line 32
    .restart local p1    # "result":Ljava/lang/Object;
    :cond_0
    instance-of v1, p1, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 33
    check-cast v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    .line 34
    .local v0, "er":Lcom/vkontakte/android/APIRequest$ErrorResponse;
    iget-object v1, p0, Lcom/vkontakte/android/api/PhotosCreateAlbum;->callback:Lcom/vkontakte/android/api/PhotosCreateAlbum$Callback;

    iget v2, v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorCode:I

    iget-object v3, v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorMessage:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/vkontakte/android/api/PhotosCreateAlbum$Callback;->fail(ILjava/lang/String;)V

    goto :goto_0

    .line 36
    .end local v0    # "er":Lcom/vkontakte/android/APIRequest$ErrorResponse;
    :cond_1
    iget-object v1, p0, Lcom/vkontakte/android/api/PhotosCreateAlbum;->callback:Lcom/vkontakte/android/api/PhotosCreateAlbum$Callback;

    check-cast p1, Lcom/vkontakte/android/api/PhotoAlbum;

    .end local p1    # "result":Ljava/lang/Object;
    invoke-interface {v1, p1}, Lcom/vkontakte/android/api/PhotosCreateAlbum$Callback;->success(Lcom/vkontakte/android/api/PhotoAlbum;)V

    goto :goto_0
.end method

.method public parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 4
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    .line 20
    :try_start_0
    const-string v3, "response"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 21
    .local v1, "ja":Lorg/json/JSONObject;
    new-instance v0, Lcom/vkontakte/android/api/PhotoAlbum;

    invoke-direct {v0, v1}, Lcom/vkontakte/android/api/PhotoAlbum;-><init>(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    .end local v1    # "ja":Lorg/json/JSONObject;
    :goto_0
    return-object v0

    .line 24
    :catch_0
    move-exception v2

    .line 25
    .local v2, "x":Ljava/lang/Exception;
    const-string v3, "vk"

    invoke-static {v3, v2}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 27
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCallback(Lcom/vkontakte/android/api/PhotosCreateAlbum$Callback;)Lcom/vkontakte/android/APIRequest;
    .locals 0
    .param p1, "cb"    # Lcom/vkontakte/android/api/PhotosCreateAlbum$Callback;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/vkontakte/android/api/PhotosCreateAlbum;->callback:Lcom/vkontakte/android/api/PhotosCreateAlbum$Callback;

    .line 42
    return-object p0
.end method
