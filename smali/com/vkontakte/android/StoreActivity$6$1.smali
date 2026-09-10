.class Lcom/vkontakte/android/StoreActivity$6$1;
.super Ljava/lang/Object;
.source "StoreActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/StoreActivity$6;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/StoreActivity$6;

.field final synthetic val$conn:Landroid/content/ServiceConnection;

.field final synthetic val$service:Lcom/android/vending/billing/IInAppBillingService;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/StoreActivity$6;Lcom/android/vending/billing/IInAppBillingService;Landroid/content/ServiceConnection;)V
    .locals 0

    .prologue
    .line 286
    iput-object p1, p0, Lcom/vkontakte/android/StoreActivity$6$1;->this$1:Lcom/vkontakte/android/StoreActivity$6;

    iput-object p2, p0, Lcom/vkontakte/android/StoreActivity$6$1;->val$service:Lcom/android/vending/billing/IInAppBillingService;

    iput-object p3, p0, Lcom/vkontakte/android/StoreActivity$6$1;->val$conn:Landroid/content/ServiceConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 23

    .prologue
    .line 288
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 289
    .local v4, "bundle":Landroid/os/Bundle;
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 290
    .local v16, "skuList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/StoreActivity$6$1;->this$1:Lcom/vkontakte/android/StoreActivity$6;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/vkontakte/android/StoreActivity$6;->val$items:Ljava/util/HashSet;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 291
    .local v7, "item":Ljava/lang/String;
    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 293
    .end local v7    # "item":Ljava/lang/String;
    :cond_0
    const-string v19, "vk"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Getting prices for "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    const-string v19, "ITEM_ID_LIST"

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 296
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/StoreActivity$6$1;->val$service:Lcom/android/vending/billing/IInAppBillingService;

    move-object/from16 v19, v0

    const/16 v20, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/StoreActivity$6$1;->this$1:Lcom/vkontakte/android/StoreActivity$6;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/vkontakte/android/StoreActivity$6;->this$0:Lcom/vkontakte/android/StoreActivity;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/vkontakte/android/StoreActivity;->getPackageName()Ljava/lang/String;

    move-result-object v21

    const-string v22, "inapp"

    move-object/from16 v0, v19

    move/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/vending/billing/IInAppBillingService;->getSkuDetails(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v5

    .line 297
    .local v5, "details":Landroid/os/Bundle;
    const-string v19, "RESPONSE_CODE"

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v13

    .line 298
    .local v13, "response":I
    const/16 v19, 0x6

    move/from16 v0, v19

    if-eq v13, v0, :cond_8

    .line 299
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 300
    .local v12, "prices":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v19, "DETAILS_LIST"

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_1

    const-string v19, "DETAILS_LIST"

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v14

    .line 301
    .local v14, "responseList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_1
    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 302
    .local v17, "thisResponse":Ljava/lang/String;
    new-instance v9, Lorg/json/JSONObject;

    move-object/from16 v0, v17

    invoke-direct {v9, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 303
    .local v9, "object":Lorg/json/JSONObject;
    const-string v19, "productId"

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 304
    .local v15, "sku":Ljava/lang/String;
    const-string v19, "price"

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 305
    .local v11, "price":Ljava/lang/String;
    invoke-virtual {v12, v15, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 331
    .end local v5    # "details":Landroid/os/Bundle;
    .end local v9    # "object":Lorg/json/JSONObject;
    .end local v11    # "price":Ljava/lang/String;
    .end local v12    # "prices":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v13    # "response":I
    .end local v14    # "responseList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v15    # "sku":Ljava/lang/String;
    .end local v17    # "thisResponse":Ljava/lang/String;
    :catch_0
    move-exception v18

    .line 332
    .local v18, "x":Ljava/lang/Exception;
    const-string v19, "vk"

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 333
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/StoreActivity$6$1;->this$1:Lcom/vkontakte/android/StoreActivity$6;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/vkontakte/android/StoreActivity$6;->this$0:Lcom/vkontakte/android/StoreActivity;

    move-object/from16 v19, v0

    new-instance v20, Lcom/vkontakte/android/StoreActivity$6$1$2;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/vkontakte/android/StoreActivity$6$1$2;-><init>(Lcom/vkontakte/android/StoreActivity$6$1;Ljava/lang/Exception;)V

    invoke-virtual/range {v19 .. v20}, Lcom/vkontakte/android/StoreActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 342
    .end local v18    # "x":Ljava/lang/Exception;
    :goto_3
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/StoreActivity$6$1;->this$1:Lcom/vkontakte/android/StoreActivity$6;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/vkontakte/android/StoreActivity$6;->this$0:Lcom/vkontakte/android/StoreActivity;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/StoreActivity$6$1;->val$conn:Landroid/content/ServiceConnection;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lcom/vkontakte/android/StoreActivity;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 344
    :goto_4
    return-void

    .line 300
    .restart local v5    # "details":Landroid/os/Bundle;
    .restart local v12    # "prices":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v13    # "response":I
    :cond_1
    :try_start_2
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    goto :goto_1

    .line 307
    .restart local v14    # "responseList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/StoreActivity$6$1;->this$1:Lcom/vkontakte/android/StoreActivity$6;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/vkontakte/android/StoreActivity$6;->this$0:Lcom/vkontakte/android/StoreActivity;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/vkontakte/android/StoreActivity;->access$000(Lcom/vkontakte/android/StoreActivity;)Ljava/util/ArrayList;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/vkontakte/android/data/StickerPack;

    .line 308
    .local v10, "pack":Lcom/vkontakte/android/data/StickerPack;
    iget-object v0, v10, Lcom/vkontakte/android/data/StickerPack;->storeID:Ljava/lang/String;

    move-object/from16 v19, v0

    if-eqz v19, :cond_3

    iget-object v0, v10, Lcom/vkontakte/android/data/StickerPack;->storeID:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v19

    if-lez v19, :cond_3

    .line 309
    iget-object v0, v10, Lcom/vkontakte/android/data/StickerPack;->storeID:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    move-object/from16 v0, v19

    iput-object v0, v10, Lcom/vkontakte/android/data/StickerPack;->price:Ljava/lang/String;

    goto :goto_5

    .line 312
    .end local v10    # "pack":Lcom/vkontakte/android/data/StickerPack;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/StoreActivity$6$1;->this$1:Lcom/vkontakte/android/StoreActivity$6;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/vkontakte/android/StoreActivity$6;->this$0:Lcom/vkontakte/android/StoreActivity;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/vkontakte/android/StoreActivity;->access$000(Lcom/vkontakte/android/StoreActivity;)Ljava/util/ArrayList;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 313
    .local v8, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/vkontakte/android/data/StickerPack;>;"
    :cond_5
    :goto_6
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_7

    .line 314
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/vkontakte/android/data/StickerPack;

    .line 315
    .restart local v10    # "pack":Lcom/vkontakte/android/data/StickerPack;
    iget-object v0, v10, Lcom/vkontakte/android/data/StickerPack;->storeID:Ljava/lang/String;

    move-object/from16 v19, v0

    if-eqz v19, :cond_5

    iget-object v0, v10, Lcom/vkontakte/android/data/StickerPack;->storeID:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v19

    if-lez v19, :cond_5

    iget-object v0, v10, Lcom/vkontakte/android/data/StickerPack;->price:Ljava/lang/String;

    move-object/from16 v19, v0

    if-nez v19, :cond_5

    iget v0, v10, Lcom/vkontakte/android/data/StickerPack;->id:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/vkontakte/android/data/Stickers;->getPackState(I)I

    move-result v19

    if-eqz v19, :cond_6

    iget v0, v10, Lcom/vkontakte/android/data/StickerPack;->id:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/vkontakte/android/data/Stickers;->getPackState(I)I

    move-result v19

    const/16 v20, 0x6

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_5

    .line 316
    :cond_6
    const-string v19, "vk"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Didn\'t get price for "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    iget-object v0, v10, Lcom/vkontakte/android/data/StickerPack;->title:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", id="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    iget v0, v10, Lcom/vkontakte/android/data/StickerPack;->id:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", store_id="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    iget-object v0, v10, Lcom/vkontakte/android/data/StickerPack;->storeID:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    const/16 v19, 0x7

    move/from16 v0, v19

    iput v0, v10, Lcom/vkontakte/android/data/StickerPack;->state:I

    goto :goto_6

    .line 321
    .end local v10    # "pack":Lcom/vkontakte/android/data/StickerPack;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/StoreActivity$6$1;->this$1:Lcom/vkontakte/android/StoreActivity$6;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/vkontakte/android/StoreActivity$6;->this$0:Lcom/vkontakte/android/StoreActivity;

    move-object/from16 v19, v0

    new-instance v20, Lcom/vkontakte/android/StoreActivity$6$1$1;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/vkontakte/android/StoreActivity$6$1$1;-><init>(Lcom/vkontakte/android/StoreActivity$6$1;)V

    invoke-virtual/range {v19 .. v20}, Lcom/vkontakte/android/StoreActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_3

    .line 329
    .end local v8    # "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/vkontakte/android/data/StickerPack;>;"
    .end local v12    # "prices":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v14    # "responseList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_8
    new-instance v19, Ljava/lang/Exception;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "error getting prices, response="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v19
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 343
    .end local v5    # "details":Landroid/os/Bundle;
    .end local v13    # "response":I
    :catch_1
    move-exception v19

    goto/16 :goto_4
.end method
