.class public Lcom/vkontakte/android/api/StoreGetProducts;
.super Lcom/vkontakte/android/APIRequest;
.source "StoreGetProducts.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/api/StoreGetProducts$Callback;
    }
.end annotation


# instance fields
.field callback:Lcom/vkontakte/android/api/StoreGetProducts$Callback;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    const-string v0, "isAppUser"

    invoke-direct {p0, v0}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 17
    return-void
.end method


# virtual methods
.method public invokeCallback(Ljava/lang/Object;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 42
    iget-object v1, p0, Lcom/vkontakte/android/api/StoreGetProducts;->callback:Lcom/vkontakte/android/api/StoreGetProducts$Callback;

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
    iget-object v1, p0, Lcom/vkontakte/android/api/StoreGetProducts;->callback:Lcom/vkontakte/android/api/StoreGetProducts$Callback;

    iget v2, v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorCode:I

    iget-object v3, v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorMessage:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/vkontakte/android/api/StoreGetProducts$Callback;->fail(ILjava/lang/String;)V

    goto :goto_0

    .line 48
    .end local v0    # "er":Lcom/vkontakte/android/APIRequest$ErrorResponse;
    :cond_1
    iget-object v1, p0, Lcom/vkontakte/android/api/StoreGetProducts;->callback:Lcom/vkontakte/android/api/StoreGetProducts$Callback;

    check-cast p1, Ljava/util/List;

    .end local p1    # "result":Ljava/lang/Object;
    invoke-interface {v1, p1}, Lcom/vkontakte/android/api/StoreGetProducts$Callback;->success(Ljava/util/List;)V

    goto :goto_0
.end method

.method public parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 5
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    .line 21
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 22
    .local v2, "packs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/data/StickerPack;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v3, 0x5

    if-ge v0, v3, :cond_0

    .line 23
    new-instance v1, Lcom/vkontakte/android/data/StickerPack;

    invoke-direct {v1}, Lcom/vkontakte/android/data/StickerPack;-><init>()V

    .line 24
    .local v1, "p":Lcom/vkontakte/android/data/StickerPack;
    add-int/lit8 v3, v0, 0x1

    iput v3, v1, Lcom/vkontakte/android/data/StickerPack;->id:I

    .line 25
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Pack #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/vkontakte/android/data/StickerPack;->title:Ljava/lang/String;

    .line 26
    const-string v3, "http://vk.com/images/question_a.gif"

    iput-object v3, v1, Lcom/vkontakte/android/data/StickerPack;->thumb:Ljava/lang/String;

    .line 28
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 31
    .end local v0    # "i":I
    .end local v1    # "p":Lcom/vkontakte/android/data/StickerPack;
    .end local v2    # "packs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/data/StickerPack;>;"
    :catch_0
    move-exception v3

    .line 33
    const/4 v2, 0x0

    :cond_0
    return-object v2
.end method

.method public setCallback(Lcom/vkontakte/android/api/StoreGetProducts$Callback;)Lcom/vkontakte/android/APIRequest;
    .locals 0
    .param p1, "cb"    # Lcom/vkontakte/android/api/StoreGetProducts$Callback;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/vkontakte/android/api/StoreGetProducts;->callback:Lcom/vkontakte/android/api/StoreGetProducts$Callback;

    .line 38
    return-object p0
.end method
