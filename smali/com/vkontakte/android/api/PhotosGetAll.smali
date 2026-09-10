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

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    .line 19
    new-instance v0, Lcom/vkontakte/android/api/PhotosGetAll$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/api/PhotosGetAll$1;-><init>(Lcom/vkontakte/android/api/PhotosGetAll;)V

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/api/PhotosGetAll;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    .line 29
    return-void
.end method


# virtual methods
.method public parse(Lorg/json/JSONObject;)V
    .locals 9
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 33
    :try_start_0
    const-string v5, "response"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 34
    .local v0, "arr":Lorg/json/JSONArray;
    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    .line 35
    .local v4, "photos":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/Photo;>;"
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-lt v1, v5, :cond_1

    .line 52
    iget-object v5, p0, Lcom/vkontakte/android/api/PhotosGetAll;->callback:Lcom/vkontakte/android/api/PhotosGetAll$Callback;

    if-eqz v5, :cond_0

    .line 53
    iget-object v5, p0, Lcom/vkontakte/android/api/PhotosGetAll;->callback:Lcom/vkontakte/android/api/PhotosGetAll$Callback;

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Lorg/json/JSONArray;->getInt(I)I

    move-result v6

    invoke-interface {v5, v6, v4}, Lcom/vkontakte/android/api/PhotosGetAll$Callback;->success(ILjava/util/Vector;)V

    .line 56
    .end local v0    # "arr":Lorg/json/JSONArray;
    .end local v1    # "i":I
    .end local v4    # "photos":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/Photo;>;"
    :cond_0
    :goto_1
    return-void

    .line 36
    .restart local v0    # "arr":Lorg/json/JSONArray;
    .restart local v1    # "i":I
    .restart local v4    # "photos":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/Photo;>;"
    :cond_1
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 37
    .local v2, "jp":Lorg/json/JSONObject;
    new-instance v3, Lcom/vkontakte/android/Photo;

    invoke-direct {v3}, Lcom/vkontakte/android/Photo;-><init>()V

    .line 38
    .local v3, "photo":Lcom/vkontakte/android/Photo;
    const-string v5, "aid"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v3, Lcom/vkontakte/android/Photo;->albumID:I

    .line 39
    const-string v5, "owner_id"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v3, Lcom/vkontakte/android/Photo;->ownerID:I

    .line 40
    const-string v5, "pid"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v3, Lcom/vkontakte/android/Photo;->id:I

    .line 41
    const-string v5, "src"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/vkontakte/android/Photo;->thumbURL:Ljava/lang/String;

    .line 42
    sget v5, Lcom/vkontakte/android/Global;->displayDensity:F

    const/high16 v8, 0x3f800000    # 1.0f

    cmpl-float v5, v5, v8

    if-gtz v5, :cond_2

    sget-boolean v5, Lcom/vkontakte/android/Global;->isTablet:Z

    if-eqz v5, :cond_3

    .line 43
    :cond_2
    const-string v5, "src_xbig"

    const-string v8, "src_big"

    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v5, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/vkontakte/android/Photo;->fullURL:Ljava/lang/String;

    .line 46
    :goto_2
    const-string v5, "text"

    const-string v8, ""

    invoke-virtual {v2, v5, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/vkontakte/android/Photo;->descr:Ljava/lang/String;

    .line 47
    sget v5, Lcom/vkontakte/android/Global;->timeDiff:I

    const-string v8, "created"

    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    add-int/2addr v5, v8

    iput v5, v3, Lcom/vkontakte/android/Photo;->date:I

    .line 48
    const-string v5, "likes"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v8, "user_likes"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    if-ne v5, v6, :cond_4

    move v5, v6

    :goto_3
    iput-boolean v5, v3, Lcom/vkontakte/android/Photo;->isLiked:Z

    .line 49
    const-string v5, "likes"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v8, "count"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v3, Lcom/vkontakte/android/Photo;->nLikes:I

    .line 50
    invoke-virtual {v4, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 35
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 45
    :cond_3
    const-string v5, "src_big"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/vkontakte/android/Photo;->fullURL:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 54
    .end local v0    # "arr":Lorg/json/JSONArray;
    .end local v1    # "i":I
    .end local v2    # "jp":Lorg/json/JSONObject;
    .end local v3    # "photo":Lcom/vkontakte/android/Photo;
    .end local v4    # "photos":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/Photo;>;"
    :catch_0
    move-exception v5

    goto/16 :goto_1

    .restart local v0    # "arr":Lorg/json/JSONArray;
    .restart local v1    # "i":I
    .restart local v2    # "jp":Lorg/json/JSONObject;
    .restart local v3    # "photo":Lcom/vkontakte/android/Photo;
    .restart local v4    # "photos":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/Photo;>;"
    :cond_4
    move v5, v7

    .line 48
    goto :goto_3
.end method

.method public setCallback(Lcom/vkontakte/android/api/PhotosGetAll$Callback;)Lcom/vkontakte/android/APIRequest;
    .locals 0
    .param p1, "cb"    # Lcom/vkontakte/android/api/PhotosGetAll$Callback;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/vkontakte/android/api/PhotosGetAll;->callback:Lcom/vkontakte/android/api/PhotosGetAll$Callback;

    .line 60
    return-object p0
.end method
