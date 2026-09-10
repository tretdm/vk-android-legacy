.class public Lcom/vkontakte/android/api/StoreGetPurchases;
.super Lcom/vkontakte/android/APIRequest;
.source "StoreGetPurchases.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/api/StoreGetPurchases$Callback;
    }
.end annotation


# instance fields
.field callback:Lcom/vkontakte/android/api/StoreGetPurchases$Callback;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 18
    const-string v0, "store.getProducts"

    invoke-direct {p0, v0}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 19
    const-string v0, "type"

    const-string v1, "stickers"

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/api/StoreGetPurchases;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 20
    const-string v0, "extended"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/api/StoreGetPurchases;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    .line 21
    const-string v0, "filters"

    const-string v1, "purchased,promoted"

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/api/StoreGetPurchases;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 22
    return-void
.end method


# virtual methods
.method public invokeCallback(Ljava/lang/Object;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 48
    iget-object v1, p0, Lcom/vkontakte/android/api/StoreGetPurchases;->callback:Lcom/vkontakte/android/api/StoreGetPurchases$Callback;

    if-nez v1, :cond_0

    .line 56
    .end local p1    # "result":Ljava/lang/Object;
    :goto_0
    return-void

    .line 50
    .restart local p1    # "result":Ljava/lang/Object;
    :cond_0
    instance-of v1, p1, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 51
    check-cast v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    .line 52
    .local v0, "er":Lcom/vkontakte/android/APIRequest$ErrorResponse;
    iget-object v1, p0, Lcom/vkontakte/android/api/StoreGetPurchases;->callback:Lcom/vkontakte/android/api/StoreGetPurchases$Callback;

    iget v2, v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorCode:I

    iget-object v3, v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorMessage:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/vkontakte/android/api/StoreGetPurchases$Callback;->fail(ILjava/lang/String;)V

    goto :goto_0

    .line 54
    .end local v0    # "er":Lcom/vkontakte/android/APIRequest$ErrorResponse;
    :cond_1
    iget-object v1, p0, Lcom/vkontakte/android/api/StoreGetPurchases;->callback:Lcom/vkontakte/android/api/StoreGetPurchases$Callback;

    check-cast p1, Ljava/util/List;

    .end local p1    # "result":Ljava/lang/Object;
    invoke-interface {v1, p1}, Lcom/vkontakte/android/api/StoreGetPurchases$Callback;->success(Ljava/util/List;)V

    goto :goto_0
.end method

.method public parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 9
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    .line 26
    :try_start_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 27
    .local v4, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/data/StickerPack;>;"
    const-string v6, "response"

    invoke-static {p1, v6}, Lcom/vkontakte/android/api/APIUtils;->unwrapArray(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/vkontakte/android/api/JSONArrayWithCount;

    move-result-object v6

    iget-object v0, v6, Lcom/vkontakte/android/api/JSONArrayWithCount;->array:Lorg/json/JSONArray;

    .line 28
    .local v0, "arr":Lorg/json/JSONArray;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-lt v1, v6, :cond_0

    .line 39
    .end local v0    # "arr":Lorg/json/JSONArray;
    .end local v1    # "i":I
    .end local v4    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/data/StickerPack;>;"
    :goto_1
    return-object v4

    .line 29
    .restart local v0    # "arr":Lorg/json/JSONArray;
    .restart local v1    # "i":I
    .restart local v4    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/data/StickerPack;>;"
    :cond_0
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 30
    .local v2, "jp":Lorg/json/JSONObject;
    new-instance v3, Lcom/vkontakte/android/data/StickerPack;

    invoke-direct {v3, v2}, Lcom/vkontakte/android/data/StickerPack;-><init>(Lorg/json/JSONObject;)V

    .line 32
    .local v3, "pack":Lcom/vkontakte/android/data/StickerPack;
    new-instance v6, Ljava/lang/StringBuilder;

    iget-object v7, v3, Lcom/vkontakte/android/data/StickerPack;->baseURL:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "thumb_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v6, Lcom/vkontakte/android/Global;->displayDensity:F

    const/high16 v8, 0x3f800000    # 1.0f

    cmpl-float v6, v6, v8

    if-lez v6, :cond_1

    const/16 v6, 0x66

    :goto_2
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".png"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/vkontakte/android/data/StickerPack;->thumb:Ljava/lang/String;

    .line 33
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 32
    :cond_1
    const/16 v6, 0x33

    goto :goto_2

    .line 36
    .end local v0    # "arr":Lorg/json/JSONArray;
    .end local v1    # "i":I
    .end local v2    # "jp":Lorg/json/JSONObject;
    .end local v3    # "pack":Lcom/vkontakte/android/data/StickerPack;
    .end local v4    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/data/StickerPack;>;"
    :catch_0
    move-exception v5

    .line 37
    .local v5, "x":Ljava/lang/Exception;
    const-string v6, "vk"

    invoke-static {v6, v5}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 39
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public setCallback(Lcom/vkontakte/android/api/StoreGetPurchases$Callback;)Lcom/vkontakte/android/APIRequest;
    .locals 0
    .param p1, "cb"    # Lcom/vkontakte/android/api/StoreGetPurchases$Callback;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/vkontakte/android/api/StoreGetPurchases;->callback:Lcom/vkontakte/android/api/StoreGetPurchases$Callback;

    .line 44
    return-object p0
.end method
