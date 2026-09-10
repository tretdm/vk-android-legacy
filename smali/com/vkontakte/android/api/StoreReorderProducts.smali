.class public Lcom/vkontakte/android/api/StoreReorderProducts;
.super Lcom/vkontakte/android/APIRequest;
.source "StoreReorderProducts.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/api/StoreReorderProducts$Callback;
    }
.end annotation


# instance fields
.field callback:Lcom/vkontakte/android/api/StoreReorderProducts$Callback;


# direct methods
.method public constructor <init>(III)V
    .locals 3
    .param p1, "id"    # I
    .param p2, "before"    # I
    .param p3, "after"    # I

    .prologue
    const/4 v2, -0x1

    .line 11
    const-string v0, "store.reorderProducts"

    invoke-direct {p0, v0}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 12
    const-string v0, "product_id"

    invoke-virtual {p0, v0, p1}, Lcom/vkontakte/android/api/StoreReorderProducts;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    .line 13
    const-string v0, "type"

    const-string v1, "stickers"

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/api/StoreReorderProducts;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 14
    if-eq p2, v2, :cond_0

    .line 15
    const-string v0, "before"

    invoke-virtual {p0, v0, p2}, Lcom/vkontakte/android/api/StoreReorderProducts;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    .line 16
    :cond_0
    if-eq p3, v2, :cond_1

    .line 17
    const-string v0, "after"

    invoke-virtual {p0, v0, p3}, Lcom/vkontakte/android/api/StoreReorderProducts;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    .line 18
    :cond_1
    return-void
.end method


# virtual methods
.method public invokeCallback(Ljava/lang/Object;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 34
    iget-object v1, p0, Lcom/vkontakte/android/api/StoreReorderProducts;->callback:Lcom/vkontakte/android/api/StoreReorderProducts$Callback;

    if-nez v1, :cond_0

    .line 42
    :goto_0
    return-void

    .line 36
    :cond_0
    instance-of v1, p1, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 37
    check-cast v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    .line 38
    .local v0, "er":Lcom/vkontakte/android/APIRequest$ErrorResponse;
    iget-object v1, p0, Lcom/vkontakte/android/api/StoreReorderProducts;->callback:Lcom/vkontakte/android/api/StoreReorderProducts$Callback;

    iget v2, v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorCode:I

    iget-object v3, v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorMessage:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/vkontakte/android/api/StoreReorderProducts$Callback;->fail(ILjava/lang/String;)V

    goto :goto_0

    .line 40
    .end local v0    # "er":Lcom/vkontakte/android/APIRequest$ErrorResponse;
    :cond_1
    iget-object v1, p0, Lcom/vkontakte/android/api/StoreReorderProducts;->callback:Lcom/vkontakte/android/api/StoreReorderProducts$Callback;

    invoke-interface {v1}, Lcom/vkontakte/android/api/StoreReorderProducts$Callback;->success()V

    goto :goto_0
.end method

.method public parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 2
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    const/4 v0, 0x1

    .line 22
    :try_start_0
    const-string v1, "response"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 25
    :goto_1
    return-object v0

    .line 22
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 23
    :catch_0
    move-exception v0

    .line 25
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public setCallback(Lcom/vkontakte/android/api/StoreReorderProducts$Callback;)Lcom/vkontakte/android/APIRequest;
    .locals 0
    .param p1, "cb"    # Lcom/vkontakte/android/api/StoreReorderProducts$Callback;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/vkontakte/android/api/StoreReorderProducts;->callback:Lcom/vkontakte/android/api/StoreReorderProducts$Callback;

    .line 30
    return-object p0
.end method
