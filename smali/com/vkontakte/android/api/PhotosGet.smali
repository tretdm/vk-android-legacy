.class public Lcom/vkontakte/android/api/PhotosGet;
.super Lcom/vkontakte/android/APIRequest;
.source "PhotosGet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/api/PhotosGet$Callback;
    }
.end annotation


# instance fields
.field callback:Lcom/vkontakte/android/api/PhotosGet$Callback;

.field uid:I


# direct methods
.method public constructor <init>(II)V
    .locals 3
    .param p1, "uid"    # I
    .param p2, "aid"    # I

    .prologue
    .line 19
    const-string v0, "photos.get"

    invoke-direct {p0, v0}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 20
    iput p1, p0, Lcom/vkontakte/android/api/PhotosGet;->uid:I

    .line 21
    const-string v0, "aid"

    invoke-virtual {p0, v0, p2}, Lcom/vkontakte/android/api/PhotosGet;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    move-result-object v1

    if-lez p1, :cond_0

    const-string v0, "uid"

    :goto_0
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    const-string v1, "extended"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    .line 23
    new-instance v0, Lcom/vkontakte/android/api/PhotosGet$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/api/PhotosGet$1;-><init>(Lcom/vkontakte/android/api/PhotosGet;)V

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/api/PhotosGet;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    .line 33
    return-void

    .line 21
    :cond_0
    const-string v0, "gid"

    goto :goto_0
.end method


# virtual methods
.method public parse(Lorg/json/JSONObject;)V
    .locals 9
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    const/4 v7, 0x1

    .line 37
    :try_start_0
    const-string v6, "response"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 38
    .local v0, "arr":Lorg/json/JSONArray;
    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    .line 39
    .local v4, "photos":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/Photo;>;"
    if-eqz v0, :cond_0

    .line 40
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-lt v1, v6, :cond_2

    .line 58
    .end local v1    # "i":I
    :cond_0
    iget-object v6, p0, Lcom/vkontakte/android/api/PhotosGet;->callback:Lcom/vkontakte/android/api/PhotosGet$Callback;

    if-eqz v6, :cond_1

    .line 59
    iget-object v6, p0, Lcom/vkontakte/android/api/PhotosGet;->callback:Lcom/vkontakte/android/api/PhotosGet$Callback;

    invoke-interface {v6, v4}, Lcom/vkontakte/android/api/PhotosGet$Callback;->success(Ljava/util/Vector;)V

    .line 63
    .end local v0    # "arr":Lorg/json/JSONArray;
    .end local v4    # "photos":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/Photo;>;"
    :cond_1
    :goto_1
    return-void

    .line 41
    .restart local v0    # "arr":Lorg/json/JSONArray;
    .restart local v1    # "i":I
    .restart local v4    # "photos":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/Photo;>;"
    :cond_2
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 42
    .local v2, "jp":Lorg/json/JSONObject;
    new-instance v3, Lcom/vkontakte/android/Photo;

    invoke-direct {v3}, Lcom/vkontakte/android/Photo;-><init>()V

    .line 43
    .local v3, "photo":Lcom/vkontakte/android/Photo;
    const-string v6, "aid"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v3, Lcom/vkontakte/android/Photo;->albumID:I

    .line 44
    iget v6, p0, Lcom/vkontakte/android/api/PhotosGet;->uid:I

    iput v6, v3, Lcom/vkontakte/android/Photo;->ownerID:I

    .line 45
    const-string v6, "pid"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v3, Lcom/vkontakte/android/Photo;->id:I

    .line 46
    const-string v6, "src"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/vkontakte/android/Photo;->thumbURL:Ljava/lang/String;

    .line 47
    sget v6, Lcom/vkontakte/android/Global;->displayDensity:F

    const/high16 v8, 0x3f800000    # 1.0f

    cmpl-float v6, v6, v8

    if-gtz v6, :cond_3

    sget-boolean v6, Lcom/vkontakte/android/Global;->isTablet:Z

    if-eqz v6, :cond_4

    .line 48
    :cond_3
    const-string v6, "src_xbig"

    const-string v8, "src_big"

    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v6, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/vkontakte/android/Photo;->fullURL:Ljava/lang/String;

    .line 51
    :goto_2
    const-string v6, "text"

    const-string v8, ""

    invoke-virtual {v2, v6, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/vkontakte/android/Photo;->descr:Ljava/lang/String;

    .line 52
    sget v6, Lcom/vkontakte/android/Global;->timeDiff:I

    const-string v8, "created"

    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    add-int/2addr v6, v8

    iput v6, v3, Lcom/vkontakte/android/Photo;->date:I

    .line 53
    const-string v6, "likes"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    const-string v8, "user_likes"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    if-ne v6, v7, :cond_5

    move v6, v7

    :goto_3
    iput-boolean v6, v3, Lcom/vkontakte/android/Photo;->isLiked:Z

    .line 54
    const-string v6, "likes"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    const-string v8, "count"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v3, Lcom/vkontakte/android/Photo;->nLikes:I

    .line 55
    invoke-virtual {v4, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 40
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 50
    :cond_4
    const-string v6, "src_big"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/vkontakte/android/Photo;->fullURL:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 60
    .end local v0    # "arr":Lorg/json/JSONArray;
    .end local v1    # "i":I
    .end local v2    # "jp":Lorg/json/JSONObject;
    .end local v3    # "photo":Lcom/vkontakte/android/Photo;
    .end local v4    # "photos":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/Photo;>;"
    :catch_0
    move-exception v5

    .line 61
    .local v5, "x":Ljava/lang/Exception;
    const-string v6, "vk"

    invoke-static {v6, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 53
    .end local v5    # "x":Ljava/lang/Exception;
    .restart local v0    # "arr":Lorg/json/JSONArray;
    .restart local v1    # "i":I
    .restart local v2    # "jp":Lorg/json/JSONObject;
    .restart local v3    # "photo":Lcom/vkontakte/android/Photo;
    .restart local v4    # "photos":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/Photo;>;"
    :cond_5
    const/4 v6, 0x0

    goto :goto_3
.end method

.method public setCallback(Lcom/vkontakte/android/api/PhotosGet$Callback;)Lcom/vkontakte/android/APIRequest;
    .locals 0
    .param p1, "cb"    # Lcom/vkontakte/android/api/PhotosGet$Callback;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/vkontakte/android/api/PhotosGet;->callback:Lcom/vkontakte/android/api/PhotosGet$Callback;

    .line 67
    return-object p0
.end method
