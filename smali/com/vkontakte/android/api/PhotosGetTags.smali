.class public Lcom/vkontakte/android/api/PhotosGetTags;
.super Lcom/vkontakte/android/APIRequest;
.source "PhotosGetTags.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/api/PhotosGetTags$Callback;
    }
.end annotation


# instance fields
.field callback:Lcom/vkontakte/android/api/PhotosGetTags$Callback;


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .locals 2
    .param p1, "oid"    # I
    .param p2, "pid"    # I
    .param p3, "accessKey"    # Ljava/lang/String;

    .prologue
    .line 17
    const-string v0, "photos.getTags"

    invoke-direct {p0, v0}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 18
    const-string v0, "owner_id"

    invoke-virtual {p0, v0, p1}, Lcom/vkontakte/android/api/PhotosGetTags;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    const-string v1, "photo_id"

    invoke-virtual {v0, v1, p2}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    .line 19
    if-eqz p3, :cond_0

    .line 20
    const-string v0, "access_key"

    invoke-virtual {p0, v0, p3}, Lcom/vkontakte/android/api/PhotosGetTags;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 21
    :cond_0
    return-void
.end method


# virtual methods
.method public invokeCallback(Ljava/lang/Object;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 51
    iget-object v1, p0, Lcom/vkontakte/android/api/PhotosGetTags;->callback:Lcom/vkontakte/android/api/PhotosGetTags$Callback;

    if-nez v1, :cond_0

    .line 59
    .end local p1    # "result":Ljava/lang/Object;
    :goto_0
    return-void

    .line 53
    .restart local p1    # "result":Ljava/lang/Object;
    :cond_0
    instance-of v1, p1, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 54
    check-cast v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    .line 55
    .local v0, "er":Lcom/vkontakte/android/APIRequest$ErrorResponse;
    iget-object v1, p0, Lcom/vkontakte/android/api/PhotosGetTags;->callback:Lcom/vkontakte/android/api/PhotosGetTags$Callback;

    iget v2, v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorCode:I

    iget-object v3, v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorMessage:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/vkontakte/android/api/PhotosGetTags$Callback;->fail(ILjava/lang/String;)V

    goto :goto_0

    .line 57
    .end local v0    # "er":Lcom/vkontakte/android/APIRequest$ErrorResponse;
    :cond_1
    iget-object v1, p0, Lcom/vkontakte/android/api/PhotosGetTags;->callback:Lcom/vkontakte/android/api/PhotosGetTags$Callback;

    check-cast p1, Ljava/util/ArrayList;

    .end local p1    # "result":Ljava/lang/Object;
    invoke-interface {v1, p1}, Lcom/vkontakte/android/api/PhotosGetTags$Callback;->success(Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method public parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 7
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    .line 25
    :try_start_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 26
    .local v4, "tags":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/PhotoTag;>;"
    const-string v5, "response"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 27
    .local v2, "r":Lorg/json/JSONArray;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-lt v0, v5, :cond_0

    .line 42
    .end local v0    # "i":I
    .end local v2    # "r":Lorg/json/JSONArray;
    .end local v4    # "tags":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/PhotoTag;>;"
    :goto_1
    return-object v4

    .line 28
    .restart local v0    # "i":I
    .restart local v2    # "r":Lorg/json/JSONArray;
    .restart local v4    # "tags":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/PhotoTag;>;"
    :cond_0
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 29
    .local v1, "j":Lorg/json/JSONObject;
    new-instance v3, Lcom/vkontakte/android/PhotoTag;

    invoke-direct {v3}, Lcom/vkontakte/android/PhotoTag;-><init>()V

    .line 30
    .local v3, "t":Lcom/vkontakte/android/PhotoTag;
    const-string v5, "id"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v3, Lcom/vkontakte/android/PhotoTag;->id:I

    .line 31
    const-string v5, "user_id"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v3, Lcom/vkontakte/android/PhotoTag;->userID:I

    .line 32
    const-string v5, "x"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v5

    iput-wide v5, v3, Lcom/vkontakte/android/PhotoTag;->x1:D

    .line 33
    const-string v5, "y"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v5

    iput-wide v5, v3, Lcom/vkontakte/android/PhotoTag;->y1:D

    .line 34
    const-string v5, "x2"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v5

    iput-wide v5, v3, Lcom/vkontakte/android/PhotoTag;->x2:D

    .line 35
    const-string v5, "y2"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v5

    iput-wide v5, v3, Lcom/vkontakte/android/PhotoTag;->y2:D

    .line 36
    const-string v5, "tagged_name"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/vkontakte/android/PhotoTag;->userName:Ljava/lang/String;

    .line 37
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 40
    .end local v0    # "i":I
    .end local v1    # "j":Lorg/json/JSONObject;
    .end local v2    # "r":Lorg/json/JSONArray;
    .end local v3    # "t":Lcom/vkontakte/android/PhotoTag;
    .end local v4    # "tags":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/PhotoTag;>;"
    :catch_0
    move-exception v5

    .line 42
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public setCallback(Lcom/vkontakte/android/api/PhotosGetTags$Callback;)Lcom/vkontakte/android/APIRequest;
    .locals 0
    .param p1, "cb"    # Lcom/vkontakte/android/api/PhotosGetTags$Callback;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/vkontakte/android/api/PhotosGetTags;->callback:Lcom/vkontakte/android/api/PhotosGetTags$Callback;

    .line 47
    return-object p0
.end method
