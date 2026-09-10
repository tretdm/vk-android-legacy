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
.field final synthetic this$0:Lcom/vkontakte/android/data/Stickers$3;

.field final synthetic val$conn:Landroid/content/ServiceConnection;

.field final synthetic val$service:Lcom/android/vending/billing/IInAppBillingService;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/data/Stickers$3;Lcom/android/vending/billing/IInAppBillingService;Landroid/content/ServiceConnection;)V
    .locals 0

    .prologue
    .line 299
    iput-object p1, p0, Lcom/vkontakte/android/data/Stickers$3$1;->this$0:Lcom/vkontakte/android/data/Stickers$3;

    iput-object p2, p0, Lcom/vkontakte/android/data/Stickers$3$1;->val$service:Lcom/android/vending/billing/IInAppBillingService;

    iput-object p3, p0, Lcom/vkontakte/android/data/Stickers$3$1;->val$conn:Landroid/content/ServiceConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 17

    .prologue
    .line 301
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 302
    .local v1, "bundle":Landroid/os/Bundle;
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 303
    .local v10, "skuList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/data/Stickers$3$1;->this$0:Lcom/vkontakte/android/data/Stickers$3;

    iget-object v13, v13, Lcom/vkontakte/android/data/Stickers$3;->val$ids:Ljava/util/List;

    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 304
    const-string v13, "vk"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Getting prices for "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    const-string v13, "ITEM_ID_LIST"

    invoke-virtual {v1, v13, v10}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 307
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/data/Stickers$3$1;->val$service:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v14, 0x3

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/vkontakte/android/data/Stickers$3$1;->this$0:Lcom/vkontakte/android/data/Stickers$3;

    iget-object v15, v15, Lcom/vkontakte/android/data/Stickers$3;->val$act:Landroid/app/Activity;

    invoke-virtual {v15}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v15

    const-string v16, "inapp"

    move-object/from16 v0, v16

    invoke-interface {v13, v14, v15, v0, v1}, Lcom/android/vending/billing/IInAppBillingService;->getSkuDetails(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    .line 308
    .local v2, "details":Landroid/os/Bundle;
    const-string v13, "RESPONSE_CODE"

    invoke-virtual {v2, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 309
    .local v7, "response":I
    if-nez v7, :cond_1

    .line 310
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 311
    .local v6, "prices":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v13, "DETAILS_LIST"

    invoke-virtual {v2, v13}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    .line 312
    .local v8, "responseList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 313
    .local v11, "thisResponse":Ljava/lang/String;
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v11}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 314
    .local v4, "object":Lorg/json/JSONObject;
    const-string v13, "productId"

    invoke-virtual {v4, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 315
    .local v9, "sku":Ljava/lang/String;
    const-string v13, "price"

    invoke-virtual {v4, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 316
    .local v5, "price":Ljava/lang/String;
    invoke-virtual {v6, v9, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 322
    .end local v2    # "details":Landroid/os/Bundle;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "object":Lorg/json/JSONObject;
    .end local v5    # "price":Ljava/lang/String;
    .end local v6    # "prices":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v7    # "response":I
    .end local v8    # "responseList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v9    # "sku":Ljava/lang/String;
    .end local v11    # "thisResponse":Ljava/lang/String;
    :catch_0
    move-exception v12

    .line 323
    .local v12, "x":Ljava/lang/Exception;
    const-string v13, "vk"

    invoke-static {v13, v12}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 324
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/data/Stickers$3$1;->this$0:Lcom/vkontakte/android/data/Stickers$3;

    iget-object v13, v13, Lcom/vkontakte/android/data/Stickers$3;->val$callback:Lcom/vkontakte/android/data/Stickers$GetPricesCallback;

    const/4 v14, -0x1

    invoke-virtual {v12}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v13, v14, v15}, Lcom/vkontakte/android/data/Stickers$GetPricesCallback;->onError(ILjava/lang/String;)V

    .line 327
    .end local v12    # "x":Ljava/lang/Exception;
    :goto_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/data/Stickers$3$1;->this$0:Lcom/vkontakte/android/data/Stickers$3;

    iget-object v13, v13, Lcom/vkontakte/android/data/Stickers$3;->val$act:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkontakte/android/data/Stickers$3$1;->val$conn:Landroid/content/ServiceConnection;

    invoke-virtual {v13, v14}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 329
    :goto_2
    return-void

    .line 318
    .restart local v2    # "details":Landroid/os/Bundle;
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v6    # "prices":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v7    # "response":I
    .restart local v8    # "responseList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    :try_start_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/data/Stickers$3$1;->this$0:Lcom/vkontakte/android/data/Stickers$3;

    iget-object v13, v13, Lcom/vkontakte/android/data/Stickers$3;->val$callback:Lcom/vkontakte/android/data/Stickers$GetPricesCallback;

    invoke-interface {v13, v6}, Lcom/vkontakte/android/data/Stickers$GetPricesCallback;->onSuccess(Ljava/util/HashMap;)V

    goto :goto_1

    .line 320
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v6    # "prices":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v8    # "responseList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    new-instance v13, Ljava/lang/Exception;

    const-string v14, "error getting prices"

    invoke-direct {v13, v14}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v13
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 328
    .end local v2    # "details":Landroid/os/Bundle;
    .end local v7    # "response":I
    :catch_1
    move-exception v13

    goto :goto_2
.end method
