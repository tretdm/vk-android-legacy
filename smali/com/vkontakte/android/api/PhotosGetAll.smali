.class public Lcom/vkontakte/android/api/PhotosGetAll;
.super Lcom/vkontakte/android/APIRequest;
.source "PhotosGetAll.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/api/PhotosGetAll$Callback;
    }
.end annotation


# instance fields
.field callback:Lcom/vkontakte/android/api/PhotosGetAll$Callback;


# direct methods
.method public constructor <init>(III)V
    .locals 3
    .param p1, "oid"    # I
    .param p2, "offset"    # I
    .param p3, "count"    # I

    .prologue
    const/4 v2, 0x1

    .line 16
    const-string v0, "photos.getAll"

    invoke-direct {p0, v0}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 17
    const-string v0, "owner_id"

    invoke-virtual {p0, v0, p1}, Lcom/vkontakte/android/api/PhotosGetAll;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    const-string v1, "offset"

    invoke-virtual {v0, v1, p2}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    const-string v1, "count"

    invoke-virtual {v0, v1, p3}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    const-string v1, "extended"

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    .line 18
    const-string v0, "photo_sizes"

    invoke-virtual {p0, v0, v2}, Lcom/vkontakte/android/api/PhotosGetAll;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    .line 19
    return-void
.end method


# virtual methods
.method public invokeCallback(Ljava/lang/Object;)V
    .locals 5
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 66
    iget-object v2, p0, Lcom/vkontakte/android/api/PhotosGetAll;->callback:Lcom/vkontakte/android/api/PhotosGetAll$Callback;

    if-nez v2, :cond_0

    .line 74
    :goto_0
    return-void

    .line 67
    :cond_0
    instance-of v2, p1, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    if-eqz v2, :cond_1

    move-object v0, p1

    .line 68
    check-cast v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    .line 69
    .local v0, "er":Lcom/vkontakte/android/APIRequest$ErrorResponse;
    iget-object v2, p0, Lcom/vkontakte/android/api/PhotosGetAll;->callback:Lcom/vkontakte/android/api/PhotosGetAll$Callback;

    iget v3, v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorCode:I

    iget-object v4, v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorMessage:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Lcom/vkontakte/android/api/PhotosGetAll$Callback;->fail(ILjava/lang/String;)V

    goto :goto_0

    .end local v0    # "er":Lcom/vkontakte/android/APIRequest$ErrorResponse;
    :cond_1
    move-object v1, p1

    .line 71
    check-cast v1, [Ljava/lang/Object;

    .line 72
    .local v1, "r":[Ljava/lang/Object;
    iget-object v3, p0, Lcom/vkontakte/android/api/PhotosGetAll;->callback:Lcom/vkontakte/android/api/PhotosGetAll$Callback;

    const/4 v2, 0x0

    aget-object v2, v1, v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v2, 0x1

    aget-object v2, v1, v2

    check-cast v2, Ljava/util/Vector;

    invoke-interface {v3, v4, v2}, Lcom/vkontakte/android/api/PhotosGetAll$Callback;->success(ILjava/util/Vector;)V

    goto :goto_0
.end method

.method public parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 14
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    .line 23
    :try_start_0
    const-string v11, "response"

    invoke-virtual {p1, v11}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 24
    .local v0, "arr":Lorg/json/JSONArray;
    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    .line 25
    .local v6, "photos":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/Photo;>;"
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-lt v1, v11, :cond_0

    .line 59
    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v0, v13}, Lorg/json/JSONArray;->getInt(I)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    aput-object v6, v11, v12

    .line 62
    .end local v0    # "arr":Lorg/json/JSONArray;
    .end local v1    # "i":I
    .end local v6    # "photos":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/Photo;>;"
    :goto_1
    return-object v11

    .line 26
    .restart local v0    # "arr":Lorg/json/JSONArray;
    .restart local v1    # "i":I
    .restart local v6    # "photos":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/Photo;>;"
    :cond_0
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 27
    .local v4, "jp":Lorg/json/JSONObject;
    new-instance v5, Lcom/vkontakte/android/Photo;

    invoke-direct {v5}, Lcom/vkontakte/android/Photo;-><init>()V

    .line 28
    .local v5, "photo":Lcom/vkontakte/android/Photo;
    const-string v11, "aid"

    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v11

    iput v11, v5, Lcom/vkontakte/android/Photo;->albumID:I

    .line 29
    const-string v11, "owner_id"

    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v11

    iput v11, v5, Lcom/vkontakte/android/Photo;->ownerID:I

    .line 30
    const-string v11, "pid"

    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v11

    iput v11, v5, Lcom/vkontakte/android/Photo;->id:I

    .line 31
    const-string v11, "sizes"

    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    .line 32
    .local v7, "sizes":Lorg/json/JSONArray;
    const/4 v9, 0x0

    .local v9, "srcY":Ljava/lang/String;
    const/4 v8, 0x0

    .line 33
    .local v8, "srcX":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_2
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-lt v3, v11, :cond_3

    .line 45
    sget v11, Lcom/vkontakte/android/Global;->displayDensity:F

    const/high16 v12, 0x3f800000    # 1.0f

    cmpl-float v11, v11, v12

    if-gtz v11, :cond_1

    sget-boolean v11, Lcom/vkontakte/android/Global;->isTablet:Z

    if-eqz v11, :cond_8

    .line 46
    :cond_1
    if-eqz v9, :cond_7

    .end local v9    # "srcY":Ljava/lang/String;
    :goto_3
    iput-object v9, v5, Lcom/vkontakte/android/Photo;->fullURL:Ljava/lang/String;

    .line 49
    :goto_4
    const-string v11, "lat"

    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    const-string v11, "long"

    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 50
    const-string v11, "lat"

    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v11

    iput-wide v11, v5, Lcom/vkontakte/android/Photo;->lat:D

    .line 51
    const-string v11, "long"

    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v11

    iput-wide v11, v5, Lcom/vkontakte/android/Photo;->lon:D

    .line 53
    :cond_2
    const-string v11, "text"

    const-string v12, ""

    invoke-virtual {v4, v11, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v5, Lcom/vkontakte/android/Photo;->descr:Ljava/lang/String;

    .line 54
    sget v11, Lcom/vkontakte/android/Global;->timeDiff:I

    const-string v12, "created"

    invoke-virtual {v4, v12}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v12

    add-int/2addr v11, v12

    iput v11, v5, Lcom/vkontakte/android/Photo;->date:I

    .line 55
    const-string v11, "likes"

    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    const-string v12, "user_likes"

    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_9

    const/4 v11, 0x1

    :goto_5
    iput-boolean v11, v5, Lcom/vkontakte/android/Photo;->isLiked:Z

    .line 56
    const-string v11, "likes"

    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    const-string v12, "count"

    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v11

    iput v11, v5, Lcom/vkontakte/android/Photo;->nLikes:I

    .line 57
    invoke-virtual {v6, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 25
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 34
    .restart local v9    # "srcY":Ljava/lang/String;
    :cond_3
    invoke-virtual {v7, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 35
    .local v10, "sz":Lorg/json/JSONObject;
    new-instance v2, Lcom/vkontakte/android/Photo$Image;

    invoke-direct {v2}, Lcom/vkontakte/android/Photo$Image;-><init>()V

    .line 36
    .local v2, "im":Lcom/vkontakte/android/Photo$Image;
    const-string v11, "type"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Ljava/lang/String;->charAt(I)C

    move-result v11

    iput-char v11, v2, Lcom/vkontakte/android/Photo$Image;->type:C

    .line 37
    const-string v11, "src"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v2, Lcom/vkontakte/android/Photo$Image;->url:Ljava/lang/String;

    .line 38
    const-string v11, "width"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v11

    iput v11, v2, Lcom/vkontakte/android/Photo$Image;->width:I

    .line 39
    const-string v11, "height"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v11

    iput v11, v2, Lcom/vkontakte/android/Photo$Image;->height:I

    .line 40
    iget-object v11, v5, Lcom/vkontakte/android/Photo;->sizes:Ljava/util/ArrayList;

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    iget-char v11, v2, Lcom/vkontakte/android/Photo$Image;->type:C

    const/16 v12, 0x79

    if-ne v11, v12, :cond_4

    iget-object v9, v2, Lcom/vkontakte/android/Photo$Image;->url:Ljava/lang/String;

    .line 42
    :cond_4
    iget-char v11, v2, Lcom/vkontakte/android/Photo$Image;->type:C

    const/16 v12, 0x78

    if-ne v11, v12, :cond_5

    iget-object v8, v2, Lcom/vkontakte/android/Photo$Image;->url:Ljava/lang/String;

    .line 43
    :cond_5
    iget-char v11, v2, Lcom/vkontakte/android/Photo$Image;->type:C

    const/16 v12, 0x6d

    if-ne v11, v12, :cond_6

    iget-object v11, v2, Lcom/vkontakte/android/Photo$Image;->url:Ljava/lang/String;

    iput-object v11, v5, Lcom/vkontakte/android/Photo;->thumbURL:Ljava/lang/String;

    .line 33
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2

    .end local v2    # "im":Lcom/vkontakte/android/Photo$Image;
    .end local v10    # "sz":Lorg/json/JSONObject;
    :cond_7
    move-object v9, v8

    .line 46
    goto/16 :goto_3

    .line 48
    :cond_8
    iput-object v8, v5, Lcom/vkontakte/android/Photo;->fullURL:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_4

    .line 60
    .end local v0    # "arr":Lorg/json/JSONArray;
    .end local v1    # "i":I
    .end local v3    # "j":I
    .end local v4    # "jp":Lorg/json/JSONObject;
    .end local v5    # "photo":Lcom/vkontakte/android/Photo;
    .end local v6    # "photos":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/Photo;>;"
    .end local v7    # "sizes":Lorg/json/JSONArray;
    .end local v8    # "srcX":Ljava/lang/String;
    .end local v9    # "srcY":Ljava/lang/String;
    :catch_0
    move-exception v11

    .line 62
    const/4 v11, 0x0

    goto/16 :goto_1

    .line 55
    .restart local v0    # "arr":Lorg/json/JSONArray;
    .restart local v1    # "i":I
    .restart local v3    # "j":I
    .restart local v4    # "jp":Lorg/json/JSONObject;
    .restart local v5    # "photo":Lcom/vkontakte/android/Photo;
    .restart local v6    # "photos":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/Photo;>;"
    .restart local v7    # "sizes":Lorg/json/JSONArray;
    .restart local v8    # "srcX":Ljava/lang/String;
    :cond_9
    const/4 v11, 0x0

    goto :goto_5
.end method

.method public setCallback(Lcom/vkontakte/android/api/PhotosGetAll$Callback;)Lcom/vkontakte/android/APIRequest;
    .locals 0
    .param p1, "cb"    # Lcom/vkontakte/android/api/PhotosGetAll$Callback;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/vkontakte/android/api/PhotosGetAll;->callback:Lcom/vkontakte/android/api/PhotosGetAll$Callback;

    .line 78
    return-object p0
.end method
