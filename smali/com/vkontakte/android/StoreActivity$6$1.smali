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

.field private final synthetic val$conn:Landroid/content/ServiceConnection;

.field private final synthetic val$items:Ljava/util/HashSet;

.field private final synthetic val$service:Lcom/android/vending/billing/IInAppBillingService;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/StoreActivity$6;Ljava/util/HashSet;Lcom/android/vending/billing/IInAppBillingService;Landroid/content/ServiceConnection;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/StoreActivity$6$1;->this$1:Lcom/vkontakte/android/StoreActivity$6;

    iput-object p2, p0, Lcom/vkontakte/android/StoreActivity$6$1;->val$items:Ljava/util/HashSet;

    iput-object p3, p0, Lcom/vkontakte/android/StoreActivity$6$1;->val$service:Lcom/android/vending/billing/IInAppBillingService;

    iput-object p4, p0, Lcom/vkontakte/android/StoreActivity$6$1;->val$conn:Landroid/content/ServiceConnection;

    .line 289
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/StoreActivity$6$1;)Lcom/vkontakte/android/StoreActivity$6;
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lcom/vkontakte/android/StoreActivity$6$1;->this$1:Lcom/vkontakte/android/StoreActivity$6;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 22

    .prologue
    .line 291
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 292
    .local v4, "bundle":Landroid/os/Bundle;
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 293
    .local v15, "skuList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/StoreActivity$6$1;->val$items:Ljava/util/HashSet;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_0
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-nez v19, :cond_2

    .line 296
    const-string v18, "vk"

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "Getting prices for "

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    const-string v18, "ITEM_ID_LIST"

    move-object/from16 v0, v18

    invoke-virtual {v4, v0, v15}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 299
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/StoreActivity$6$1;->val$service:Lcom/android/vending/billing/IInAppBillingService;

    move-object/from16 v18, v0

    const/16 v19, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/StoreActivity$6$1;->this$1:Lcom/vkontakte/android/StoreActivity$6;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/vkontakte/android/StoreActivity$6;->access$0(Lcom/vkontakte/android/StoreActivity$6;)Lcom/vkontakte/android/StoreActivity;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/vkontakte/android/StoreActivity;->getPackageName()Ljava/lang/String;

    move-result-object v20

    const-string v21, "inapp"

    move-object/from16 v0, v18

    move/from16 v1, v19

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/vending/billing/IInAppBillingService;->getSkuDetails(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v5

    .line 300
    .local v5, "details":Landroid/os/Bundle;
    const-string v18, "RESPONSE_CODE"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v12

    .line 301
    .local v12, "response":I
    const/16 v18, 0x6

    move/from16 v0, v18

    if-eq v12, v0, :cond_8

    .line 302
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 303
    .local v11, "prices":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v18, "DETAILS_LIST"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_3

    const-string v18, "DETAILS_LIST"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v13

    .line 304
    .local v13, "responseList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_1
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_2
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-nez v19, :cond_4

    .line 310
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/StoreActivity$6$1;->this$1:Lcom/vkontakte/android/StoreActivity$6;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/vkontakte/android/StoreActivity$6;->access$0(Lcom/vkontakte/android/StoreActivity$6;)Lcom/vkontakte/android/StoreActivity;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/vkontakte/android/StoreActivity;->access$0(Lcom/vkontakte/android/StoreActivity;)Ljava/util/ArrayList;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :cond_0
    :goto_3
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-nez v18, :cond_5

    .line 315
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/StoreActivity$6$1;->this$1:Lcom/vkontakte/android/StoreActivity$6;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/vkontakte/android/StoreActivity$6;->access$0(Lcom/vkontakte/android/StoreActivity$6;)Lcom/vkontakte/android/StoreActivity;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/vkontakte/android/StoreActivity;->access$0(Lcom/vkontakte/android/StoreActivity;)Ljava/util/ArrayList;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 316
    .local v7, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/vkontakte/android/data/StickerPack;>;"
    :cond_1
    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-nez v18, :cond_6

    .line 324
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/StoreActivity$6$1;->this$1:Lcom/vkontakte/android/StoreActivity$6;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/vkontakte/android/StoreActivity$6;->access$0(Lcom/vkontakte/android/StoreActivity$6;)Lcom/vkontakte/android/StoreActivity;

    move-result-object v18

    new-instance v19, Lcom/vkontakte/android/StoreActivity$6$1$1;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/vkontakte/android/StoreActivity$6$1$1;-><init>(Lcom/vkontakte/android/StoreActivity$6$1;)V

    invoke-virtual/range {v18 .. v19}, Lcom/vkontakte/android/StoreActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 345
    .end local v5    # "details":Landroid/os/Bundle;
    .end local v7    # "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/vkontakte/android/data/StickerPack;>;"
    .end local v11    # "prices":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v12    # "response":I
    .end local v13    # "responseList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_5
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/StoreActivity$6$1;->this$1:Lcom/vkontakte/android/StoreActivity$6;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/vkontakte/android/StoreActivity$6;->access$0(Lcom/vkontakte/android/StoreActivity$6;)Lcom/vkontakte/android/StoreActivity;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/StoreActivity$6$1;->val$conn:Landroid/content/ServiceConnection;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lcom/vkontakte/android/StoreActivity;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 347
    :goto_6
    return-void

    .line 293
    :cond_2
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 294
    .local v6, "item":Ljava/lang/String;
    invoke-virtual {v15, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 303
    .end local v6    # "item":Ljava/lang/String;
    .restart local v5    # "details":Landroid/os/Bundle;
    .restart local v11    # "prices":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v12    # "response":I
    :cond_3
    :try_start_2
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 334
    .end local v5    # "details":Landroid/os/Bundle;
    .end local v11    # "prices":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v12    # "response":I
    :catch_0
    move-exception v17

    .line 335
    .local v17, "x":Ljava/lang/Exception;
    const-string v18, "vk"

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 336
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/StoreActivity$6$1;->this$1:Lcom/vkontakte/android/StoreActivity$6;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/vkontakte/android/StoreActivity$6;->access$0(Lcom/vkontakte/android/StoreActivity$6;)Lcom/vkontakte/android/StoreActivity;

    move-result-object v18

    new-instance v19, Lcom/vkontakte/android/StoreActivity$6$1$2;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/vkontakte/android/StoreActivity$6$1$2;-><init>(Lcom/vkontakte/android/StoreActivity$6$1;Ljava/lang/Exception;)V

    invoke-virtual/range {v18 .. v19}, Lcom/vkontakte/android/StoreActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_5

    .line 304
    .end local v17    # "x":Ljava/lang/Exception;
    .restart local v5    # "details":Landroid/os/Bundle;
    .restart local v11    # "prices":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v12    # "response":I
    .restart local v13    # "responseList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_4
    :try_start_3
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 305
    .local v16, "thisResponse":Ljava/lang/String;
    new-instance v8, Lorg/json/JSONObject;

    move-object/from16 v0, v16

    invoke-direct {v8, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 306
    .local v8, "object":Lorg/json/JSONObject;
    const-string v19, "productId"

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 307
    .local v14, "sku":Ljava/lang/String;
    const-string v19, "price"

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 308
    .local v10, "price":Ljava/lang/String;
    invoke-virtual {v11, v14, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 310
    .end local v8    # "object":Lorg/json/JSONObject;
    .end local v10    # "price":Ljava/lang/String;
    .end local v14    # "sku":Ljava/lang/String;
    .end local v16    # "thisResponse":Ljava/lang/String;
    :cond_5
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/vkontakte/android/data/StickerPack;

    .line 311
    .local v9, "pack":Lcom/vkontakte/android/data/StickerPack;
    iget-object v0, v9, Lcom/vkontakte/android/data/StickerPack;->storeID:Ljava/lang/String;

    move-object/from16 v18, v0

    if-eqz v18, :cond_0

    iget-object v0, v9, Lcom/vkontakte/android/data/StickerPack;->storeID:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    if-lez v18, :cond_0

    .line 312
    iget-object v0, v9, Lcom/vkontakte/android/data/StickerPack;->storeID:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, v18

    iput-object v0, v9, Lcom/vkontakte/android/data/StickerPack;->price:Ljava/lang/String;

    goto/16 :goto_3

    .line 317
    .end local v9    # "pack":Lcom/vkontakte/android/data/StickerPack;
    .restart local v7    # "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/vkontakte/android/data/StickerPack;>;"
    :cond_6
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/vkontakte/android/data/StickerPack;

    .line 318
    .restart local v9    # "pack":Lcom/vkontakte/android/data/StickerPack;
    iget-object v0, v9, Lcom/vkontakte/android/data/StickerPack;->storeID:Ljava/lang/String;

    move-object/from16 v18, v0

    if-eqz v18, :cond_1

    iget-object v0, v9, Lcom/vkontakte/android/data/StickerPack;->storeID:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    if-lez v18, :cond_1

    iget-object v0, v9, Lcom/vkontakte/android/data/StickerPack;->price:Ljava/lang/String;

    move-object/from16 v18, v0

    if-nez v18, :cond_1

    iget v0, v9, Lcom/vkontakte/android/data/StickerPack;->id:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/vkontakte/android/data/Stickers;->getPackState(I)I

    move-result v18

    if-eqz v18, :cond_7

    iget v0, v9, Lcom/vkontakte/android/data/StickerPack;->id:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/vkontakte/android/data/Stickers;->getPackState(I)I

    move-result v18

    const/16 v19, 0x6

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_1

    .line 319
    :cond_7
    const-string v18, "vk"

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "Didn\'t get price for "

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v9, Lcom/vkontakte/android/data/StickerPack;->title:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", id="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget v0, v9, Lcom/vkontakte/android/data/StickerPack;->id:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", store_id="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-object v0, v9, Lcom/vkontakte/android/data/StickerPack;->storeID:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    const/16 v18, 0x7

    move/from16 v0, v18

    iput v0, v9, Lcom/vkontakte/android/data/StickerPack;->state:I

    goto/16 :goto_4

    .line 332
    .end local v7    # "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/vkontakte/android/data/StickerPack;>;"
    .end local v9    # "pack":Lcom/vkontakte/android/data/StickerPack;
    .end local v11    # "prices":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v13    # "responseList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_8
    new-instance v18, Ljava/lang/Exception;

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "error getting prices, response="

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v18
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 346
    .end local v5    # "details":Landroid/os/Bundle;
    .end local v12    # "response":I
    :catch_1
    move-exception v18

    goto/16 :goto_6
.end method
