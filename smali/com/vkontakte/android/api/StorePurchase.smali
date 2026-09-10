.class public Lcom/vkontakte/android/api/StorePurchase;
.super Lcom/vkontakte/android/APIRequest;
.source "StorePurchase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/api/StorePurchase$Callback;
    }
.end annotation


# instance fields
.field callback:Lcom/vkontakte/android/api/StorePurchase$Callback;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "storeID"    # Ljava/lang/String;
    .param p3, "transaction"    # Ljava/lang/String;
    .param p4, "token"    # Ljava/lang/String;

    .prologue
    .line 12
    const-string v0, "store.purchase"

    invoke-direct {p0, v0}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 13
    const-string v0, "type"

    const-string v1, "stickers"

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/api/StorePurchase;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 14
    const-string v0, "product_id"

    invoke-virtual {p0, v0, p1}, Lcom/vkontakte/android/api/StorePurchase;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    .line 15
    const-string v0, "merchant"

    const-string v1, "google"

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/api/StorePurchase;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 16
    if-eqz p2, :cond_0

    .line 17
    const-string v0, "merchant_product_id"

    invoke-virtual {p0, v0, p2}, Lcom/vkontakte/android/api/StorePurchase;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 18
    const-string v0, "merchant_transaction_id"

    invoke-virtual {p0, v0, p3}, Lcom/vkontakte/android/api/StorePurchase;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 19
    const-string v0, "receipt"

    invoke-virtual {p0, v0, p4}, Lcom/vkontakte/android/api/StorePurchase;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 21
    :cond_0
    return-void
.end method


# virtual methods
.method public invokeCallback(Ljava/lang/Object;)V
    .locals 7
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 46
    iget-object v2, p0, Lcom/vkontakte/android/api/StorePurchase;->callback:Lcom/vkontakte/android/api/StorePurchase$Callback;

    if-nez v2, :cond_0

    .line 55
    .end local p1    # "result":Ljava/lang/Object;
    :goto_0
    return-void

    .line 48
    .restart local p1    # "result":Ljava/lang/Object;
    :cond_0
    instance-of v2, p1, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    if-eqz v2, :cond_1

    move-object v0, p1

    .line 49
    check-cast v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    .line 50
    .local v0, "er":Lcom/vkontakte/android/APIRequest$ErrorResponse;
    iget-object v2, p0, Lcom/vkontakte/android/api/StorePurchase;->callback:Lcom/vkontakte/android/api/StorePurchase$Callback;

    iget v3, v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorCode:I

    iget-object v4, v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorMessage:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Lcom/vkontakte/android/api/StorePurchase$Callback;->fail(ILjava/lang/String;)V

    goto :goto_0

    .line 52
    .end local v0    # "er":Lcom/vkontakte/android/APIRequest$ErrorResponse;
    :cond_1
    check-cast p1, [Ljava/lang/Object;

    .end local p1    # "result":Ljava/lang/Object;
    move-object v1, p1

    check-cast v1, [Ljava/lang/Object;

    .line 53
    .local v1, "r":[Ljava/lang/Object;
    iget-object v5, p0, Lcom/vkontakte/android/api/StorePurchase;->callback:Lcom/vkontakte/android/api/StorePurchase$Callback;

    const/4 v2, 0x0

    aget-object v2, v1, v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v2, 0x1

    aget-object v2, v1, v2

    check-cast v2, Lcom/vkontakte/android/data/StickerPack;

    const/4 v3, 0x2

    aget-object v3, v1, v3

    check-cast v3, Ljava/lang/String;

    const/4 v4, 0x3

    aget-object v4, v1, v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-interface {v5, v6, v2, v3, v4}, Lcom/vkontakte/android/api/StorePurchase$Callback;->success(ILcom/vkontakte/android/data/StickerPack;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 9
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 25
    :try_start_0
    const-string v4, "response"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 26
    .local v2, "r":Lorg/json/JSONObject;
    const-string v4, "state"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 27
    .local v3, "state":I
    const/4 v0, 0x0

    .line 28
    .local v0, "msg":Ljava/lang/String;
    const/4 v1, 0x0

    .line 29
    .local v1, "pack":Lcom/vkontakte/android/data/StickerPack;
    const-string v4, "message"

    const-string v7, "error_message"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v4, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 30
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_0

    .line 31
    const/4 v0, 0x0

    .line 32
    :cond_0
    const-string v4, "product"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 33
    new-instance v1, Lcom/vkontakte/android/data/StickerPack;

    .end local v1    # "pack":Lcom/vkontakte/android/data/StickerPack;
    const-string v4, "product"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/vkontakte/android/data/StickerPack;-><init>(Lorg/json/JSONObject;)V

    .line 34
    .restart local v1    # "pack":Lcom/vkontakte/android/data/StickerPack;
    :cond_1
    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v4, v7

    const/4 v7, 0x1

    aput-object v1, v4, v7

    const/4 v7, 0x2

    aput-object v0, v4, v7

    const/4 v7, 0x3

    const-string v8, "error_fatal"

    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    if-ne v8, v5, :cond_2

    :goto_0
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    .end local v0    # "msg":Ljava/lang/String;
    .end local v1    # "pack":Lcom/vkontakte/android/data/StickerPack;
    .end local v2    # "r":Lorg/json/JSONObject;
    .end local v3    # "state":I
    :goto_1
    return-object v4

    .restart local v0    # "msg":Ljava/lang/String;
    .restart local v1    # "pack":Lcom/vkontakte/android/data/StickerPack;
    .restart local v2    # "r":Lorg/json/JSONObject;
    .restart local v3    # "state":I
    :cond_2
    move v5, v6

    .line 34
    goto :goto_0

    .line 35
    .end local v0    # "msg":Ljava/lang/String;
    .end local v1    # "pack":Lcom/vkontakte/android/data/StickerPack;
    .end local v2    # "r":Lorg/json/JSONObject;
    .end local v3    # "state":I
    :catch_0
    move-exception v4

    .line 37
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public setCallback(Lcom/vkontakte/android/api/StorePurchase$Callback;)Lcom/vkontakte/android/APIRequest;
    .locals 0
    .param p1, "cb"    # Lcom/vkontakte/android/api/StorePurchase$Callback;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/vkontakte/android/api/StorePurchase;->callback:Lcom/vkontakte/android/api/StorePurchase$Callback;

    .line 42
    return-object p0
.end method
