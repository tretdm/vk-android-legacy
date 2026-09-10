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
    .locals 4
    .param p1, "e"    # Lcom/vkontakte/android/NewsEntry;

    .prologue
    const/4 v3, 0x1

    .line 18
    const-string v0, "photos.get"

    invoke-direct {p0, v0}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 19
    const-string v0, "feed"

    iget v1, p1, Lcom/vkontakte/android/NewsEntry;->time:I

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/api/GetFullPhotoList;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    .line 20
    const-string v1, "feed_type"

    iget v0, p1, Lcom/vkontakte/android/NewsEntry;->type:I

    const/4 v2, 0x7

    if-ne v0, v2, :cond_0

    const-string v0, "photo_tag"

    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/vkontakte/android/api/GetFullPhotoList;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 21
    iget v0, p1, Lcom/vkontakte/android/NewsEntry;->userID:I

    if-lez v0, :cond_2

    const-string v0, "user_id"

    :goto_1
    iget v1, p1, Lcom/vkontakte/android/NewsEntry;->userID:I

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/api/GetFullPhotoList;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    .line 22
    const-string v0, "extended"

    invoke-virtual {p0, v0, v3}, Lcom/vkontakte/android/api/GetFullPhotoList;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    .line 23
    const-string v0, "photo_sizes"

    invoke-virtual {p0, v0, v3}, Lcom/vkontakte/android/api/GetFullPhotoList;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    .line 24
    return-void

    .line 20
    :cond_0
    iget v0, p1, Lcom/vkontakte/android/NewsEntry;->type:I

    const/16 v2, 0x9

    if-ne v0, v2, :cond_1

    const-string v0, "wall_photo"

    goto :goto_0

    :cond_1
    const-string v0, "photo"

    goto :goto_0

    .line 21
    :cond_2
    const-string v0, "group_id"

    goto :goto_1
.end method


# virtual methods
.method public invokeCallback(Ljava/lang/Object;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 43
    iget-object v1, p0, Lcom/vkontakte/android/api/GetFullPhotoList;->callback:Lcom/vkontakte/android/api/GetFullPhotoList$Callback;

    if-nez v1, :cond_0

    .line 50
    .end local p1    # "result":Ljava/lang/Object;
    :goto_0
    return-void

    .line 44
    .restart local p1    # "result":Ljava/lang/Object;
    :cond_0
    instance-of v1, p1, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 45
    check-cast v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    .line 46
    .local v0, "er":Lcom/vkontakte/android/APIRequest$ErrorResponse;
    iget-object v1, p0, Lcom/vkontakte/android/api/GetFullPhotoList;->callback:Lcom/vkontakte/android/api/GetFullPhotoList$Callback;

    iget v2, v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorCode:I

    iget-object v3, v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorMessage:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/vkontakte/android/api/GetFullPhotoList$Callback;->fail(ILjava/lang/String;)V

    goto :goto_0

    .line 48
    .end local v0    # "er":Lcom/vkontakte/android/APIRequest$ErrorResponse;
    :cond_1
    iget-object v1, p0, Lcom/vkontakte/android/api/GetFullPhotoList;->callback:Lcom/vkontakte/android/api/GetFullPhotoList$Callback;

    check-cast p1, Ljava/util/ArrayList;

    .end local p1    # "result":Ljava/lang/Object;
    invoke-interface {v1, p1}, Lcom/vkontakte/android/api/GetFullPhotoList$Callback;->success(Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method public parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 7
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    .line 28
    :try_start_0
    const-string v6, "response"

    invoke-static {p1, v6}, Lcom/vkontakte/android/api/APIUtils;->unwrapArray(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/vkontakte/android/api/JSONArrayWithCount;

    move-result-object v6

    iget-object v4, v6, Lcom/vkontakte/android/api/JSONArrayWithCount;->array:Lorg/json/JSONArray;

    .line 29
    .local v4, "r":Lorg/json/JSONArray;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 30
    .local v3, "photos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Photo;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v0, v6, :cond_0

    .line 31
    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 32
    .local v1, "jp":Lorg/json/JSONObject;
    new-instance v2, Lcom/vkontakte/android/Photo;

    invoke-direct {v2, v1}, Lcom/vkontakte/android/Photo;-><init>(Lorg/json/JSONObject;)V

    .line 33
    .local v2, "photo":Lcom/vkontakte/android/Photo;
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 36
    .end local v0    # "i":I
    .end local v1    # "jp":Lorg/json/JSONObject;
    .end local v2    # "photo":Lcom/vkontakte/android/Photo;
    .end local v3    # "photos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Photo;>;"
    .end local v4    # "r":Lorg/json/JSONArray;
    :catch_0
    move-exception v5

    .line 37
    .local v5, "x":Ljava/lang/Exception;
    const-string v6, "vk"

    invoke-static {v6, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 39
    const/4 v3, 0x0

    .end local v5    # "x":Ljava/lang/Exception;
    :cond_0
    return-object v3
.end method

.method public setCallback(Lcom/vkontakte/android/api/GetFullPhotoList$Callback;)Lcom/vkontakte/android/APIRequest;
    .locals 0
    .param p1, "cb"    # Lcom/vkontakte/android/api/GetFullPhotoList$Callback;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/vkontakte/android/api/GetFullPhotoList;->callback:Lcom/vkontakte/android/api/GetFullPhotoList$Callback;

    .line 54
    return-object p0
.end method
