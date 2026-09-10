.class public Lcom/vkontakte/android/api/StoreGetInventory;
.super Lcom/vkontakte/android/APIRequest;
.source "StoreGetInventory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/api/StoreGetInventory$Callback;
    }
.end annotation


# instance fields
.field callback:Lcom/vkontakte/android/api/StoreGetInventory$Callback;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 21
    const-string v0, "execute.storeGetStockItems"

    invoke-direct {p0, v0}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 22
    const-string v0, "type"

    const-string v1, "stickers"

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/api/StoreGetInventory;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 23
    const-string v0, "merchant"

    const-string v1, "google"

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/api/StoreGetInventory;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 24
    invoke-static {}, Lcom/vkontakte/android/data/Stickers;->isPlayStoreInstalled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 25
    const-string v0, "filters"

    const-string v1, "free,purchased"

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/api/StoreGetInventory;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 26
    :cond_0
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 29
    const-string v0, "store.getStockItems"

    invoke-direct {p0, v0}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 30
    const-string v0, "type"

    const-string v1, "stickers"

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/api/StoreGetInventory;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 31
    const-string v0, "merchant"

    const-string v1, "google"

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/api/StoreGetInventory;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 32
    const-string v0, "product_ids"

    invoke-virtual {p0, v0, p1}, Lcom/vkontakte/android/api/StoreGetInventory;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    .line 33
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 36
    .local p1, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const-string v0, "store.getStockItems"

    invoke-direct {p0, v0}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 37
    const-string v0, "type"

    const-string v1, "stickers"

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/api/StoreGetInventory;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 38
    const-string v0, "merchant"

    const-string v1, "google"

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/api/StoreGetInventory;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 39
    const-string v0, "product_ids"

    const-string v1, ","

    invoke-static {v1, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/api/StoreGetInventory;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 40
    return-void
.end method


# virtual methods
.method public invokeCallback(Ljava/lang/Object;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 79
    iget-object v1, p0, Lcom/vkontakte/android/api/StoreGetInventory;->callback:Lcom/vkontakte/android/api/StoreGetInventory$Callback;

    if-nez v1, :cond_0

    .line 87
    .end local p1    # "result":Ljava/lang/Object;
    :goto_0
    return-void

    .line 81
    .restart local p1    # "result":Ljava/lang/Object;
    :cond_0
    instance-of v1, p1, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 82
    check-cast v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    .line 83
    .local v0, "er":Lcom/vkontakte/android/APIRequest$ErrorResponse;
    iget-object v1, p0, Lcom/vkontakte/android/api/StoreGetInventory;->callback:Lcom/vkontakte/android/api/StoreGetInventory$Callback;

    iget v2, v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorCode:I

    iget-object v3, v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorMessage:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/vkontakte/android/api/StoreGetInventory$Callback;->fail(ILjava/lang/String;)V

    goto :goto_0

    .line 85
    .end local v0    # "er":Lcom/vkontakte/android/APIRequest$ErrorResponse;
    :cond_1
    iget-object v1, p0, Lcom/vkontakte/android/api/StoreGetInventory;->callback:Lcom/vkontakte/android/api/StoreGetInventory$Callback;

    check-cast p1, Ljava/util/List;

    .end local p1    # "result":Ljava/lang/Object;
    invoke-interface {v1, p1}, Lcom/vkontakte/android/api/StoreGetInventory$Callback;->success(Ljava/util/List;)V

    goto :goto_0
.end method

.method public parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 13
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    .line 44
    :try_start_0
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 45
    .local v8, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/data/StickerPack;>;"
    const-string v10, "response"

    invoke-static {p1, v10}, Lcom/vkontakte/android/api/APIUtils;->unwrapArray(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/vkontakte/android/api/JSONArrayWithCount;

    move-result-object v10

    iget-object v0, v10, Lcom/vkontakte/android/api/JSONArrayWithCount;->array:Lorg/json/JSONArray;

    .line 46
    .local v0, "arr":Lorg/json/JSONArray;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ge v2, v10, :cond_6

    .line 47
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 48
    .local v4, "jp":Lorg/json/JSONObject;
    new-instance v6, Lcom/vkontakte/android/data/StickerPack;

    const-string v10, "product"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    invoke-direct {v6, v10}, Lcom/vkontakte/android/data/StickerPack;-><init>(Lorg/json/JSONObject;)V

    .line 49
    .local v6, "pack":Lcom/vkontakte/android/data/StickerPack;
    const-string v10, "description"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v6, Lcom/vkontakte/android/data/StickerPack;->description:Ljava/lang/String;

    .line 50
    const-string v10, "product"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    const-string v11, "purchased"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_1

    const/4 v7, 0x1

    .line 51
    .local v7, "purchased":Z
    :goto_1
    const-string v10, "free"

    const/4 v11, 0x1

    invoke-virtual {v4, v10, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_2

    const/4 v1, 0x1

    .line 53
    .local v1, "free":Z
    :goto_2
    if-nez v7, :cond_0

    if-nez v1, :cond_0

    .line 54
    const-string v10, "merchant_product_id"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v6, Lcom/vkontakte/android/data/StickerPack;->storeID:Ljava/lang/String;

    .line 56
    :cond_0
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "photo_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget v10, Lcom/vkontakte/android/Global;->displayDensity:F

    const/high16 v12, 0x3f800000    # 1.0f

    cmpl-float v10, v10, v12

    if-lez v10, :cond_3

    const/16 v10, 0x8c

    :goto_3
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v6, Lcom/vkontakte/android/data/StickerPack;->thumb:Ljava/lang/String;

    .line 57
    const-string v10, "new"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_4

    const/4 v10, 0x1

    :goto_4
    iput-boolean v10, v6, Lcom/vkontakte/android/data/StickerPack;->isNew:Z

    .line 58
    const-string v10, "author"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v6, Lcom/vkontakte/android/data/StickerPack;->author:Ljava/lang/String;

    .line 59
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, v6, Lcom/vkontakte/android/data/StickerPack;->previews:Ljava/util/ArrayList;

    .line 60
    const-string v10, "demo_photos_560"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 61
    .local v5, "jpa":Lorg/json/JSONArray;
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_5
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ge v3, v10, :cond_5

    .line 62
    iget-object v10, v6, Lcom/vkontakte/android/data/StickerPack;->previews:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 50
    .end local v1    # "free":Z
    .end local v3    # "j":I
    .end local v5    # "jpa":Lorg/json/JSONArray;
    .end local v7    # "purchased":Z
    :cond_1
    const/4 v7, 0x0

    goto :goto_1

    .line 51
    .restart local v7    # "purchased":Z
    :cond_2
    const/4 v1, 0x0

    goto :goto_2

    .line 56
    .restart local v1    # "free":Z
    :cond_3
    const/16 v10, 0x46

    goto :goto_3

    .line 57
    :cond_4
    const/4 v10, 0x0

    goto :goto_4

    .line 64
    .restart local v3    # "j":I
    .restart local v5    # "jpa":Lorg/json/JSONArray;
    :cond_5
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 67
    .end local v0    # "arr":Lorg/json/JSONArray;
    .end local v1    # "free":Z
    .end local v2    # "i":I
    .end local v3    # "j":I
    .end local v4    # "jp":Lorg/json/JSONObject;
    .end local v5    # "jpa":Lorg/json/JSONArray;
    .end local v6    # "pack":Lcom/vkontakte/android/data/StickerPack;
    .end local v7    # "purchased":Z
    .end local v8    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/data/StickerPack;>;"
    :catch_0
    move-exception v9

    .line 68
    .local v9, "x":Ljava/lang/Exception;
    const-string v10, "vk"

    invoke-static {v10, v9}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 70
    const/4 v8, 0x0

    .end local v9    # "x":Ljava/lang/Exception;
    :cond_6
    return-object v8
.end method

.method public setCallback(Lcom/vkontakte/android/api/StoreGetInventory$Callback;)Lcom/vkontakte/android/APIRequest;
    .locals 0
    .param p1, "cb"    # Lcom/vkontakte/android/api/StoreGetInventory$Callback;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/vkontakte/android/api/StoreGetInventory;->callback:Lcom/vkontakte/android/api/StoreGetInventory$Callback;

    .line 75
    return-object p0
.end method
