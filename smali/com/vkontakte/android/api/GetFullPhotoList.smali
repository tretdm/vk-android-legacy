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
    .line 15
    const-string v0, "photos.get"

    invoke-direct {p0, v0}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 16
    const-string v0, "feed"

    iget v1, p1, Lcom/vkontakte/android/NewsEntry;->time_l:I

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/api/GetFullPhotoList;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    .line 17
    const-string v1, "feed_type"

    iget v0, p1, Lcom/vkontakte/android/NewsEntry;->type:I

    const/4 v2, 0x7

    if-ne v0, v2, :cond_0

    const-string v0, "photo_tag"

    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/vkontakte/android/api/GetFullPhotoList;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 18
    const-string v0, "uid"

    iget v1, p1, Lcom/vkontakte/android/NewsEntry;->userID:I

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/api/GetFullPhotoList;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    .line 19
    const-string v0, "extended"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/api/GetFullPhotoList;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    .line 21
    new-instance v0, Lcom/vkontakte/android/api/GetFullPhotoList$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/api/GetFullPhotoList$1;-><init>(Lcom/vkontakte/android/api/GetFullPhotoList;)V

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/api/GetFullPhotoList;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    .line 30
    return-void

    .line 17
    :cond_0
    const-string v0, "photo"

    goto :goto_0
.end method


# virtual methods
.method public parse(Lorg/json/JSONObject;)V
    .locals 8
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    const/4 v6, 0x1

    .line 35
    :try_start_0
    const-string v5, "response"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 36
    .local v4, "r":Lorg/json/JSONArray;
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    new-array v3, v5, [Lcom/vkontakte/android/Photo;

    .line 37
    .local v3, "photos":[Lcom/vkontakte/android/Photo;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-lt v0, v5, :cond_1

    .line 54
    iget-object v5, p0, Lcom/vkontakte/android/api/GetFullPhotoList;->callback:Lcom/vkontakte/android/api/GetFullPhotoList$Callback;

    if-eqz v5, :cond_0

    .line 55
    iget-object v5, p0, Lcom/vkontakte/android/api/GetFullPhotoList;->callback:Lcom/vkontakte/android/api/GetFullPhotoList$Callback;

    invoke-interface {v5, v3}, Lcom/vkontakte/android/api/GetFullPhotoList$Callback;->success([Lcom/vkontakte/android/Photo;)V

    .line 58
    .end local v0    # "i":I
    .end local v3    # "photos":[Lcom/vkontakte/android/Photo;
    .end local v4    # "r":Lorg/json/JSONArray;
    :cond_0
    :goto_1
    return-void

    .line 38
    .restart local v0    # "i":I
    .restart local v3    # "photos":[Lcom/vkontakte/android/Photo;
    .restart local v4    # "r":Lorg/json/JSONArray;
    :cond_1
    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 39
    .local v1, "jp":Lorg/json/JSONObject;
    new-instance v2, Lcom/vkontakte/android/Photo;

    invoke-direct {v2}, Lcom/vkontakte/android/Photo;-><init>()V

    .line 40
    .local v2, "photo":Lcom/vkontakte/android/Photo;
    const-string v5, "aid"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v2, Lcom/vkontakte/android/Photo;->albumID:I

    .line 41
    const-string v5, "owner_id"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v2, Lcom/vkontakte/android/Photo;->ownerID:I

    .line 42
    const-string v5, "pid"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v2, Lcom/vkontakte/android/Photo;->id:I

    .line 43
    const-string v5, "src"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/vkontakte/android/Photo;->thumbURL:Ljava/lang/String;

    .line 44
    sget v5, Lcom/vkontakte/android/Global;->displayDensity:F

    const/high16 v7, 0x3f800000    # 1.0f

    cmpl-float v5, v5, v7

    if-gtz v5, :cond_2

    sget-boolean v5, Lcom/vkontakte/android/Global;->isTablet:Z

    if-eqz v5, :cond_3

    .line 45
    :cond_2
    const-string v5, "src_xbig"

    const-string v7, "src_big"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v5, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/vkontakte/android/Photo;->fullURL:Ljava/lang/String;

    .line 48
    :goto_2
    const-string v5, "text"

    const-string v7, ""

    invoke-virtual {v1, v5, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/vkontakte/android/Photo;->descr:Ljava/lang/String;

    .line 49
    sget v5, Lcom/vkontakte/android/Global;->timeDiff:I

    const-string v7, "created"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    add-int/2addr v5, v7

    iput v5, v2, Lcom/vkontakte/android/Photo;->date:I

    .line 50
    const-string v5, "likes"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v7, "user_likes"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    if-ne v5, v6, :cond_4

    move v5, v6

    :goto_3
    iput-boolean v5, v2, Lcom/vkontakte/android/Photo;->isLiked:Z

    .line 51
    const-string v5, "likes"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v7, "count"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v2, Lcom/vkontakte/android/Photo;->nLikes:I

    .line 52
    aput-object v2, v3, v0

    .line 37
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 47
    :cond_3
    const-string v5, "src_big"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/vkontakte/android/Photo;->fullURL:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 56
    .end local v0    # "i":I
    .end local v1    # "jp":Lorg/json/JSONObject;
    .end local v2    # "photo":Lcom/vkontakte/android/Photo;
    .end local v3    # "photos":[Lcom/vkontakte/android/Photo;
    .end local v4    # "r":Lorg/json/JSONArray;
    :catch_0
    move-exception v5

    goto/16 :goto_1

    .line 50
    .restart local v0    # "i":I
    .restart local v1    # "jp":Lorg/json/JSONObject;
    .restart local v2    # "photo":Lcom/vkontakte/android/Photo;
    .restart local v3    # "photos":[Lcom/vkontakte/android/Photo;
    .restart local v4    # "r":Lorg/json/JSONArray;
    :cond_4
    const/4 v5, 0x0

    goto :goto_3
.end method

.method public setCallback(Lcom/vkontakte/android/api/GetFullPhotoList$Callback;)Lcom/vkontakte/android/APIRequest;
    .locals 0
    .param p1, "cb"    # Lcom/vkontakte/android/api/GetFullPhotoList$Callback;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/vkontakte/android/api/GetFullPhotoList;->callback:Lcom/vkontakte/android/api/GetFullPhotoList$Callback;

    .line 62
    return-object p0
.end method
