.class Lcom/vkontakte/android/data/Stickers$3$1;
.super Ljava/lang/Object;
.source "Stickers.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/data/Stickers$3;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/data/Stickers$3;

.field private final synthetic val$act:Landroid/app/Activity;

.field private final synthetic val$callback:Lcom/vkontakte/android/data/Stickers$GetPricesCallback;

.field private final synthetic val$conn:Landroid/content/ServiceConnection;

.field private final synthetic val$ids:Ljava/util/List;

.field private final synthetic val$service:Lcom/android/vending/billing/IInAppBillingService;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/data/Stickers$3;Ljava/util/List;Lcom/android/vending/billing/IInAppBillingService;Landroid/app/Activity;Lcom/vkontakte/android/data/Stickers$GetPricesCallback;Landroid/content/ServiceConnection;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/data/Stickers$3$1;->this$1:Lcom/vkontakte/android/data/Stickers$3;

    iput-object p2, p0, Lcom/vkontakte/android/data/Stickers$3$1;->val$ids:Ljava/util/List;

    iput-object p3, p0, Lcom/vkontakte/android/data/Stickers$3$1;->val$service:Lcom/android/vending/billing/IInAppBillingService;

    iput-object p4, p0, Lcom/vkontakte/android/data/Stickers$3$1;->val$act:Landroid/app/Activity;

    iput-object p5, p0, Lcom/vkontakte/android/data/Stickers$3$1;->val$callback:Lcom/vkontakte/android/data/Stickers$GetPricesCallback;

    iput-object p6, p0, Lcom/vkontakte/android/data/Stickers$3$1;->val$conn:Landroid/content/ServiceConnection;

    .line 300
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    .line 302
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 303
    .local v0, "bundle":Landroid/os/Bundle;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 304
    .local v8, "skuList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v11, p0, Lcom/vkontakte/android/data/Stickers$3$1;->val$ids:Ljava/util/List;

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 305
    const-string v11, "vk"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "Getting prices for "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    const-string v11, "ITEM_ID_LIST"

    invoke-virtual {v0, v11, v8}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 308
    :try_start_0
    iget-object v11, p0, Lcom/vkontakte/android/data/Stickers$3$1;->val$service:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v12, 0x3

    iget-object v13, p0, Lcom/vkontakte/android/data/Stickers$3$1;->val$act:Landroid/app/Activity;

    invoke-virtual {v13}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v13

    const-string v14, "inapp"

    invoke-interface {v11, v12, v13, v14, v0}, Lcom/android/vending/billing/IInAppBillingService;->getSkuDetails(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 309
    .local v1, "details":Landroid/os/Bundle;
    const-string v11, "RESPONSE_CODE"

    invoke-virtual {v1, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 310
    .local v5, "response":I
    if-nez v5, :cond_1

    .line 311
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 312
    .local v4, "prices":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v11, "DETAILS_LIST"

    invoke-virtual {v1, v11}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    .line 313
    .local v6, "responseList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-nez v12, :cond_0

    .line 319
    iget-object v11, p0, Lcom/vkontakte/android/data/Stickers$3$1;->val$callback:Lcom/vkontakte/android/data/Stickers$GetPricesCallback;

    invoke-interface {v11, v4}, Lcom/vkontakte/android/data/Stickers$GetPricesCallback;->onSuccess(Ljava/util/HashMap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 328
    .end local v1    # "details":Landroid/os/Bundle;
    .end local v4    # "prices":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v5    # "response":I
    .end local v6    # "responseList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_1
    :try_start_1
    iget-object v11, p0, Lcom/vkontakte/android/data/Stickers$3$1;->val$act:Landroid/app/Activity;

    iget-object v12, p0, Lcom/vkontakte/android/data/Stickers$3$1;->val$conn:Landroid/content/ServiceConnection;

    invoke-virtual {v11, v12}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 330
    :goto_2
    return-void

    .line 313
    .restart local v1    # "details":Landroid/os/Bundle;
    .restart local v4    # "prices":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v5    # "response":I
    .restart local v6    # "responseList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    :try_start_2
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 314
    .local v9, "thisResponse":Ljava/lang/String;
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 315
    .local v2, "object":Lorg/json/JSONObject;
    const-string v12, "productId"

    invoke-virtual {v2, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 316
    .local v7, "sku":Ljava/lang/String;
    const-string v12, "price"

    invoke-virtual {v2, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 317
    .local v3, "price":Ljava/lang/String;
    invoke-virtual {v4, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 323
    .end local v1    # "details":Landroid/os/Bundle;
    .end local v2    # "object":Lorg/json/JSONObject;
    .end local v3    # "price":Ljava/lang/String;
    .end local v4    # "prices":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v5    # "response":I
    .end local v6    # "responseList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v7    # "sku":Ljava/lang/String;
    .end local v9    # "thisResponse":Ljava/lang/String;
    :catch_0
    move-exception v10

    .line 324
    .local v10, "x":Ljava/lang/Exception;
    const-string v11, "vk"

    invoke-static {v11, v10}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 325
    iget-object v11, p0, Lcom/vkontakte/android/data/Stickers$3$1;->val$callback:Lcom/vkontakte/android/data/Stickers$GetPricesCallback;

    const/4 v12, -0x1

    invoke-virtual {v10}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v11, v12, v13}, Lcom/vkontakte/android/data/Stickers$GetPricesCallback;->onError(ILjava/lang/String;)V

    goto :goto_1

    .line 321
    .end local v10    # "x":Ljava/lang/Exception;
    .restart local v1    # "details":Landroid/os/Bundle;
    .restart local v5    # "response":I
    :cond_1
    :try_start_3
    new-instance v11, Ljava/lang/Exception;

    const-string v12, "error getting prices"

    invoke-direct {v11, v12}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v11
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 329
    .end local v1    # "details":Landroid/os/Bundle;
    .end local v5    # "response":I
    :catch_1
    move-exception v11

    goto :goto_2
.end method
