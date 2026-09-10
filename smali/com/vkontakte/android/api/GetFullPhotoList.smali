.class public Lcom/vkontakte/android/api/GetFullPhotoList;
.super Lcom/vkontakte/android/APIRequest;
.source "GetFullPhotoList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/api/GetFullPhotoList$Callback;
    }
.end annotation


# instance fields
.field callback:Lcom/vkontakte/android/api/GetFullPhotoList$Callback;


# direct methods
.method public constructor <init>(Lcom/vkontakte/android/NewsEntry;)V
    .locals 3
    .param p1, "e"    # Lcom/vkontakte/android/NewsEntry;

    .prologue
    .line 17
    const-string v0, "photos.get"

    invoke-direct {p0, v0}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 18
    const-string v0, "feed"

    iget v1, p1, Lcom/vkontakte/android/NewsEntry;->time_l:I

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/api/GetFullPhotoList;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    .line 19
    const-string v1, "feed_type"

    iget v0, p1, Lcom/vkontakte/android/NewsEntry;->type:I

    const/4 v2, 0x7

    if-ne v0, v2, :cond_0

    const-string v0, "photo_tag"

    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/vkontakte/android/api/GetFullPhotoList;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 20
    iget v0, p1, Lcom/vkontakte/android/NewsEntry;->userID:I

    if-lez v0, :cond_1

    const-string v0, "uid"

    :goto_1
    iget v1, p1, Lcom/vkontakte/android/NewsEntry;->userID:I

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/api/GetFullPhotoList;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    .line 21
    const-string v0, "extended"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/api/GetFullPhotoList;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    .line 23
    new-instance v0, Lcom/vkontakte/android/api/GetFullPhotoList$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/api/GetFullPhotoList$1;-><init>(Lcom/vkontakte/android/api/GetFullPhotoList;)V

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/api/GetFullPhotoList;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    .line 33
    return-void

    .line 19
    :cond_0
    const-string v0, "photo"

    goto :goto_0

    .line 20
    :cond_1
    const-string v0, "gid"

    goto :goto_1
.end method


# virtual methods
.method public invokeCallback(Ljava/lang/Object;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 64
    iget-object v1, p0, Lcom/vkontakte/android/api/GetFullPhotoList;->callback:Lcom/vkontakte/android/api/GetFullPhotoList$Callback;

    if-nez v1, :cond_0

    .line 71
    .end local p1    # "result":Ljava/lang/Object;
    :goto_0
    return-void

    .line 65
    .restart local p1    # "result":Ljava/lang/Object;
    :cond_0
    instance-of v1, p1, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 66
    check-cast v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    .line 67
    .local v0, "er":Lcom/vkontakte/android/APIRequest$ErrorResponse;
    iget-object v1, p0, Lcom/vkontakte/android/api/GetFullPhotoList;->callback:Lcom/vkontakte/android/api/GetFullPhotoList$Callback;

    iget v2, v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorCode:I

    iget-object v3, v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorMessage:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/vkontakte/android/api/GetFullPhotoList$Callback;->fail(ILjava/lang/String;)V

    goto :goto_0

    .line 69
    .end local v0    # "er":Lcom/vkontakte/android/APIRequest$ErrorResponse;
    :cond_1
    iget-object v1, p0, Lcom/vkontakte/android/api/GetFullPhotoList;->callback:Lcom/vkontakte/android/api/GetFullPhotoList$Callback;

    check-cast p1, [Lcom/vkontakte/android/Photo;

    .end local p1    # "result":Ljava/lang/Object;
    invoke-interface {v1, p1}, Lcom/vkontakte/android/api/GetFullPhotoList$Callback;->success([Lcom/vkontakte/android/Photo;)V

    goto :goto_0
.end method

.method public parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 9
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    const/4 v7, 0x1

    .line 37
    :try_start_0
    const-string v6, "response"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 38
    .local v4, "r":Lorg/json/JSONArray;
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    new-array v3, v6, [Lcom/vkontakte/android/Photo;

    .line 39
    .local v3, "photos":[Lcom/vkontakte/android/Photo;
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-lt v0, v6, :cond_0

    .line 60
    .end local v0    # "i":I
    .end local v3    # "photos":[Lcom/vkontakte/android/Photo;
    .end local v4    # "r":Lorg/json/JSONArray;
    :goto_1
    return-object v3

    .line 40
    .restart local v0    # "i":I
    .restart local v3    # "photos":[Lcom/vkontakte/android/Photo;
    .restart local v4    # "r":Lorg/json/JSONArray;
    :cond_0
    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 41
    .local v1, "jp":Lorg/json/JSONObject;
    new-instance v2, Lcom/vkontakte/android/Photo;

    invoke-direct {v2}, Lcom/vkontakte/android/Photo;-><init>()V

    .line 42
    .local v2, "photo":Lcom/vkontakte/android/Photo;
    const-string v6, "aid"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v2, Lcom/vkontakte/android/Photo;->albumID:I

    .line 43
    const-string v6, "owner_id"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v2, Lcom/vkontakte/android/Photo;->ownerID:I

    .line 44
    const-string v6, "pid"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v2, Lcom/vkontakte/android/Photo;->id:I

    .line 45
    const-string v6, "src"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/vkontakte/android/Photo;->thumbURL:Ljava/lang/String;

    .line 46
    sget v6, Lcom/vkontakte/android/Global;->displayDensity:F

    const/high16 v8, 0x3f800000    # 1.0f

    cmpl-float v6, v6, v8

    if-gtz v6, :cond_1

    sget-boolean v6, Lcom/vkontakte/android/Global;->isTablet:Z

    if-eqz v6, :cond_2

    .line 47
    :cond_1
    const-string v6, "src_xbig"

    const-string v8, "src_big"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v6, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/vkontakte/android/Photo;->fullURL:Ljava/lang/String;

    .line 50
    :goto_2
    const-string v6, "text"

    const-string v8, ""

    invoke-virtual {v1, v6, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/vkontakte/android/Photo;->descr:Ljava/lang/String;

    .line 51
    sget v6, Lcom/vkontakte/android/Global;->timeDiff:I

    const-string v8, "created"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    add-int/2addr v6, v8

    iput v6, v2, Lcom/vkontakte/android/Photo;->date:I

    .line 52
    const-string v6, "likes"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    const-string v8, "user_likes"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    if-ne v6, v7, :cond_3

    move v6, v7

    :goto_3
    iput-boolean v6, v2, Lcom/vkontakte/android/Photo;->isLiked:Z

    .line 53
    const-string v6, "likes"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    const-string v8, "count"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v2, Lcom/vkontakte/android/Photo;->nLikes:I

    .line 54
    add-int/lit8 v6, v0, -0x1

    aput-object v2, v3, v6

    .line 39
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 49
    :cond_2
    const-string v6, "src_big"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/vkontakte/android/Photo;->fullURL:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 57
    .end local v0    # "i":I
    .end local v1    # "jp":Lorg/json/JSONObject;
    .end local v2    # "photo":Lcom/vkontakte/android/Photo;
    .end local v3    # "photos":[Lcom/vkontakte/android/Photo;
    .end local v4    # "r":Lorg/json/JSONArray;
    :catch_0
    move-exception v5

    .line 58
    .local v5, "x":Ljava/lang/Exception;
    const-string v6, "vk"

    invoke-static {v6, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 60
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 52
    .end local v5    # "x":Ljava/lang/Exception;
    .restart local v0    # "i":I
    .restart local v1    # "jp":Lorg/json/JSONObject;
    .restart local v2    # "photo":Lcom/vkontakte/android/Photo;
    .restart local v3    # "photos":[Lcom/vkontakte/android/Photo;
    .restart local v4    # "r":Lorg/json/JSONArray;
    :cond_3
    const/4 v6, 0x0

    goto :goto_3
.end method

.method public setCallback(Lcom/vkontakte/android/api/GetFullPhotoList$Callback;)Lcom/vkontakte/android/APIRequest;
    .locals 0
    .param p1, "cb"    # Lcom/vkontakte/android/api/GetFullPhotoList$Callback;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/vkontakte/android/api/GetFullPhotoList;->callback:Lcom/vkontakte/android/api/GetFullPhotoList$Callback;

    .line 75
    return-object p0
.end method
