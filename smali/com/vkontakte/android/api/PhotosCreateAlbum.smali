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
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "descr"    # Ljava/lang/String;
    .param p3, "privacy"    # I

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

    .line 16
    new-instance v0, Lcom/vkontakte/android/api/PhotosCreateAlbum$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/api/PhotosCreateAlbum$1;-><init>(Lcom/vkontakte/android/api/PhotosCreateAlbum;)V

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/api/PhotosCreateAlbum;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    .line 26
    return-void
.end method


# virtual methods
.method public invokeCallback(Ljava/lang/Object;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 50
    iget-object v1, p0, Lcom/vkontakte/android/api/PhotosCreateAlbum;->callback:Lcom/vkontakte/android/api/PhotosCreateAlbum$Callback;

    if-nez v1, :cond_0

    .line 57
    .end local p1    # "result":Ljava/lang/Object;
    :goto_0
    return-void

    .line 51
    .restart local p1    # "result":Ljava/lang/Object;
    :cond_0
    instance-of v1, p1, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 52
    check-cast v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    .line 53
    .local v0, "er":Lcom/vkontakte/android/APIRequest$ErrorResponse;
    iget-object v1, p0, Lcom/vkontakte/android/api/PhotosCreateAlbum;->callback:Lcom/vkontakte/android/api/PhotosCreateAlbum$Callback;

    iget v2, v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorCode:I

    iget-object v3, v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorMessage:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/vkontakte/android/api/PhotosCreateAlbum$Callback;->fail(ILjava/lang/String;)V

    goto :goto_0

    .line 55
    .end local v0    # "er":Lcom/vkontakte/android/APIRequest$ErrorResponse;
    :cond_1
    iget-object v1, p0, Lcom/vkontakte/android/api/PhotosCreateAlbum;->callback:Lcom/vkontakte/android/api/PhotosCreateAlbum$Callback;

    check-cast p1, Lcom/vkontakte/android/api/PhotoAlbum;

    .end local p1    # "result":Ljava/lang/Object;
    invoke-interface {v1, p1}, Lcom/vkontakte/android/api/PhotosCreateAlbum$Callback;->success(Lcom/vkontakte/android/api/PhotoAlbum;)V

    goto :goto_0
.end method

.method public parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 5
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    .line 30
    :try_start_0
    new-instance v0, Lcom/vkontakte/android/api/PhotoAlbum;

    invoke-direct {v0}, Lcom/vkontakte/android/api/PhotoAlbum;-><init>()V

    .line 31
    .local v0, "a":Lcom/vkontakte/android/api/PhotoAlbum;
    const-string v3, "response"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 33
    .local v1, "ja":Lorg/json/JSONObject;
    const-string v3, "created"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/vkontakte/android/api/PhotoAlbum;->created:I

    .line 34
    const-string v3, "updated"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/vkontakte/android/api/PhotoAlbum;->updated:I

    .line 35
    const-string v3, "title"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/vkontakte/android/api/PhotoAlbum;->title:Ljava/lang/String;

    .line 36
    const-string v3, "description"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/vkontakte/android/api/PhotoAlbum;->descr:Ljava/lang/String;

    .line 37
    const-string v3, "aid"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/vkontakte/android/api/PhotoAlbum;->id:I

    .line 38
    const-string v3, "owner_id"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/vkontakte/android/api/PhotoAlbum;->oid:I

    .line 39
    const-string v3, "size"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/vkontakte/android/api/PhotoAlbum;->numPhotos:I

    .line 40
    const-string v3, "privacy"

    const/4 v4, -0x1

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, v0, Lcom/vkontakte/android/api/PhotoAlbum;->privacy:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    .end local v0    # "a":Lcom/vkontakte/android/api/PhotoAlbum;
    .end local v1    # "ja":Lorg/json/JSONObject;
    :goto_0
    return-object v0

    .line 43
    :catch_0
    move-exception v2

    .line 44
    .local v2, "x":Ljava/lang/Exception;
    const-string v3, "vk"

    invoke-static {v3, v2}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 46
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCallback(Lcom/vkontakte/android/api/PhotosCreateAlbum$Callback;)Lcom/vkontakte/android/APIRequest;
    .locals 0
    .param p1, "cb"    # Lcom/vkontakte/android/api/PhotosCreateAlbum$Callback;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/vkontakte/android/api/PhotosCreateAlbum;->callback:Lcom/vkontakte/android/api/PhotosCreateAlbum$Callback;

    .line 61
    return-object p0
.end method
