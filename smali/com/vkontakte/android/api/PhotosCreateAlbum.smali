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
.method public parse(Lorg/json/JSONObject;)V
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

    .line 42
    iget-object v3, p0, Lcom/vkontakte/android/api/PhotosCreateAlbum;->callback:Lcom/vkontakte/android/api/PhotosCreateAlbum$Callback;

    if-eqz v3, :cond_0

    .line 43
    iget-object v3, p0, Lcom/vkontakte/android/api/PhotosCreateAlbum;->callback:Lcom/vkontakte/android/api/PhotosCreateAlbum$Callback;

    invoke-interface {v3, v0}, Lcom/vkontakte/android/api/PhotosCreateAlbum$Callback;->success(Lcom/vkontakte/android/api/PhotoAlbum;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    .end local v0    # "a":Lcom/vkontakte/android/api/PhotoAlbum;
    .end local v1    # "ja":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    return-void

    .line 44
    :catch_0
    move-exception v2

    .line 45
    .local v2, "x":Ljava/lang/Exception;
    const-string v3, "vk"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setCallback(Lcom/vkontakte/android/api/PhotosCreateAlbum$Callback;)Lcom/vkontakte/android/APIRequest;
    .locals 0
    .param p1, "cb"    # Lcom/vkontakte/android/api/PhotosCreateAlbum$Callback;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/vkontakte/android/api/PhotosCreateAlbum;->callback:Lcom/vkontakte/android/api/PhotosCreateAlbum$Callback;

    .line 51
    return-object p0
.end method
