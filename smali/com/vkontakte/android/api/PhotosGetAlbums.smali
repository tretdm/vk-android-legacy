.class public Lcom/vkontakte/android/api/PhotosGetAlbums;
.super Lcom/vkontakte/android/APIRequest;
.source "PhotosGetAlbums.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/api/PhotosGetAlbums$Callback;
    }
.end annotation


# instance fields
.field callback:Lcom/vkontakte/android/api/PhotosGetAlbums$Callback;


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "oid"    # I

    .prologue
    .line 18
    const-string v0, "photos.getAlbums"

    invoke-direct {p0, v0}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 19
    if-lez p1, :cond_0

    const-string v0, "uid"

    :goto_0
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/api/PhotosGetAlbums;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    .line 20
    const-string v0, "need_covers"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/api/PhotosGetAlbums;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    .line 22
    new-instance v0, Lcom/vkontakte/android/api/PhotosGetAlbums$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/api/PhotosGetAlbums$1;-><init>(Lcom/vkontakte/android/api/PhotosGetAlbums;)V

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/api/PhotosGetAlbums;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    .line 32
    return-void

    .line 19
    :cond_0
    const-string v0, "gid"

    goto :goto_0
.end method


# virtual methods
.method public invokeCallback(Ljava/lang/Object;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 66
    iget-object v1, p0, Lcom/vkontakte/android/api/PhotosGetAlbums;->callback:Lcom/vkontakte/android/api/PhotosGetAlbums$Callback;

    if-nez v1, :cond_0

    .line 73
    .end local p1    # "result":Ljava/lang/Object;
    :goto_0
    return-void

    .line 67
    .restart local p1    # "result":Ljava/lang/Object;
    :cond_0
    instance-of v1, p1, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 68
    check-cast v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    .line 69
    .local v0, "er":Lcom/vkontakte/android/APIRequest$ErrorResponse;
    iget-object v1, p0, Lcom/vkontakte/android/api/PhotosGetAlbums;->callback:Lcom/vkontakte/android/api/PhotosGetAlbums$Callback;

    iget v2, v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorCode:I

    iget-object v3, v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorMessage:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/vkontakte/android/api/PhotosGetAlbums$Callback;->fail(ILjava/lang/String;)V

    goto :goto_0

    .line 71
    .end local v0    # "er":Lcom/vkontakte/android/APIRequest$ErrorResponse;
    :cond_1
    iget-object v1, p0, Lcom/vkontakte/android/api/PhotosGetAlbums;->callback:Lcom/vkontakte/android/api/PhotosGetAlbums$Callback;

    check-cast p1, Ljava/util/Vector;

    .end local p1    # "result":Ljava/lang/Object;
    invoke-interface {v1, p1}, Lcom/vkontakte/android/api/PhotosGetAlbums$Callback;->success(Ljava/util/Vector;)V

    goto :goto_0
.end method

.method public parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 9
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    const/4 v7, 0x1

    .line 36
    :try_start_0
    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    .line 38
    .local v4, "result":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/api/PhotoAlbum;>;"
    const-string v6, "response"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 39
    .local v1, "al":Lorg/json/JSONArray;
    if-eqz v1, :cond_0

    .line 40
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-lt v2, v6, :cond_1

    .line 62
    .end local v1    # "al":Lorg/json/JSONArray;
    .end local v2    # "i":I
    .end local v4    # "result":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/api/PhotoAlbum;>;"
    :cond_0
    :goto_1
    return-object v4

    .line 41
    .restart local v1    # "al":Lorg/json/JSONArray;
    .restart local v2    # "i":I
    .restart local v4    # "result":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/api/PhotoAlbum;>;"
    :cond_1
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 42
    .local v3, "ja":Lorg/json/JSONObject;
    new-instance v0, Lcom/vkontakte/android/api/PhotoAlbum;

    invoke-direct {v0}, Lcom/vkontakte/android/api/PhotoAlbum;-><init>()V

    .line 43
    .local v0, "a":Lcom/vkontakte/android/api/PhotoAlbum;
    const-string v6, "created"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v0, Lcom/vkontakte/android/api/PhotoAlbum;->created:I

    .line 44
    const-string v6, "updated"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v0, Lcom/vkontakte/android/api/PhotoAlbum;->updated:I

    .line 45
    const-string v6, "title"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/vkontakte/android/api/PhotoAlbum;->title:Ljava/lang/String;

    .line 46
    iget-object v6, v0, Lcom/vkontakte/android/api/PhotoAlbum;->title:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_2

    sget-object v6, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v8, 0x7f090193

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/vkontakte/android/api/PhotoAlbum;->title:Ljava/lang/String;

    .line 47
    :cond_2
    const-string v6, "description"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/vkontakte/android/api/PhotoAlbum;->descr:Ljava/lang/String;

    .line 48
    const-string v6, "aid"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v0, Lcom/vkontakte/android/api/PhotoAlbum;->id:I

    .line 49
    const-string v6, "owner_id"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v0, Lcom/vkontakte/android/api/PhotoAlbum;->oid:I

    .line 50
    const-string v6, "size"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v0, Lcom/vkontakte/android/api/PhotoAlbum;->numPhotos:I

    .line 51
    const-string v6, "privacy"

    const/4 v8, -0x1

    invoke-virtual {v3, v6, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    iput v6, v0, Lcom/vkontakte/android/api/PhotoAlbum;->privacy:I

    .line 52
    const-string v6, "thumb_src"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/vkontakte/android/api/PhotoAlbum;->thumbURL:Ljava/lang/String;

    .line 53
    const-string v6, "can_upload"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v6, "can_upload"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    if-ne v6, v7, :cond_4

    move v6, v7

    :goto_2
    iput-boolean v6, v0, Lcom/vkontakte/android/api/PhotoAlbum;->canUpload:Z

    .line 54
    :cond_3
    invoke-virtual {v4, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 53
    :cond_4
    const/4 v6, 0x0

    goto :goto_2

    .line 59
    .end local v0    # "a":Lcom/vkontakte/android/api/PhotoAlbum;
    .end local v1    # "al":Lorg/json/JSONArray;
    .end local v2    # "i":I
    .end local v3    # "ja":Lorg/json/JSONObject;
    .end local v4    # "result":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/api/PhotoAlbum;>;"
    :catch_0
    move-exception v5

    .line 60
    .local v5, "x":Ljava/lang/Exception;
    const-string v6, "vk"

    invoke-static {v6, v5}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 62
    const/4 v4, 0x0

    goto/16 :goto_1
.end method

.method public setCallback(Lcom/vkontakte/android/api/PhotosGetAlbums$Callback;)Lcom/vkontakte/android/APIRequest;
    .locals 0
    .param p1, "cb"    # Lcom/vkontakte/android/api/PhotosGetAlbums$Callback;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/vkontakte/android/api/PhotosGetAlbums;->callback:Lcom/vkontakte/android/api/PhotosGetAlbums$Callback;

    .line 77
    return-object p0
.end method
