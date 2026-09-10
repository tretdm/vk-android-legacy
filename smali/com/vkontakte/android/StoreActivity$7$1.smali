.class Lcom/vkontakte/android/StoreActivity$7$1;
.super Ljava/lang/Object;
.source "StoreActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/StoreActivity$7;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/StoreActivity$7;

.field final synthetic val$conn:Landroid/content/ServiceConnection;

.field final synthetic val$service:Lcom/android/vending/billing/IInAppBillingService;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/StoreActivity$7;Lcom/android/vending/billing/IInAppBillingService;Landroid/content/ServiceConnection;)V
    .locals 0

    .prologue
    .line 400
    iput-object p1, p0, Lcom/vkontakte/android/StoreActivity$7$1;->this$1:Lcom/vkontakte/android/StoreActivity$7;

    iput-object p2, p0, Lcom/vkontakte/android/StoreActivity$7$1;->val$service:Lcom/android/vending/billing/IInAppBillingService;

    iput-object p3, p0, Lcom/vkontakte/android/StoreActivity$7$1;->val$conn:Landroid/content/ServiceConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 19

    .prologue
    .line 403
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkontakte/android/StoreActivity$7$1;->val$service:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v15, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/StoreActivity$7$1;->this$1:Lcom/vkontakte/android/StoreActivity$7;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/vkontakte/android/StoreActivity$7;->this$0:Lcom/vkontakte/android/StoreActivity;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/vkontakte/android/StoreActivity;->getPackageName()Ljava/lang/String;

    move-result-object v16

    const-string v17, "inapp"

    const/16 v18, 0x0

    invoke-interface/range {v14 .. v18}, Lcom/android/vending/billing/IInAppBillingService;->getPurchases(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    .line 404
    .local v5, "info":Landroid/os/Bundle;
    const-string v14, "INAPP_PURCHASE_DATA_LIST"

    invoke-virtual {v5, v14}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 405
    .local v2, "dataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v7, 0x0

    .line 406
    .local v7, "needRestore":Z
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 407
    .local v1, "d":Ljava/lang/String;
    const-string v14, "vk"

    invoke-static {v14, v1}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 409
    .local v8, "o":Lorg/json/JSONObject;
    const-string v14, "developerPayload"

    invoke-virtual {v8, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 410
    .local v3, "dp":Ljava/lang/String;
    const-string v14, "purchaseToken"

    invoke-virtual {v8, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 411
    .local v11, "token":Ljava/lang/String;
    const-string v14, "orderId"

    invoke-virtual {v8, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 412
    .local v9, "orderId":Ljava/lang/String;
    const-string v14, ","

    invoke-virtual {v3, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 413
    .local v10, "t":[Ljava/lang/String;
    const/4 v14, 0x0

    aget-object v14, v10, v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 414
    .local v12, "uid":I
    sget v14, Lcom/vkontakte/android/Global;->uid:I

    if-ne v12, v14, :cond_0

    .line 415
    const/4 v7, 0x1

    .line 416
    goto :goto_0

    .line 417
    .end local v1    # "d":Ljava/lang/String;
    .end local v3    # "dp":Ljava/lang/String;
    .end local v8    # "o":Lorg/json/JSONObject;
    .end local v9    # "orderId":Ljava/lang/String;
    .end local v10    # "t":[Ljava/lang/String;
    .end local v11    # "token":Ljava/lang/String;
    .end local v12    # "uid":I
    :cond_1
    if-eqz v7, :cond_2

    .line 418
    new-instance v6, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkontakte/android/StoreActivity$7$1;->this$1:Lcom/vkontakte/android/StoreActivity$7;

    iget-object v14, v14, Lcom/vkontakte/android/StoreActivity$7;->this$0:Lcom/vkontakte/android/StoreActivity;

    const-class v15, Lcom/vkontakte/android/BillingActivity;

    invoke-direct {v6, v14, v15}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 419
    .local v6, "intent":Landroid/content/Intent;
    const-string v14, "restore"

    const/4 v15, 0x1

    invoke-virtual {v6, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 420
    const-string v14, "cancelable"

    const/4 v15, 0x1

    invoke-virtual {v6, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 421
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkontakte/android/StoreActivity$7$1;->this$1:Lcom/vkontakte/android/StoreActivity$7;

    iget-object v14, v14, Lcom/vkontakte/android/StoreActivity$7;->this$0:Lcom/vkontakte/android/StoreActivity;

    const/16 v15, 0x66

    invoke-virtual {v14, v6, v15}, Lcom/vkontakte/android/StoreActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 426
    .end local v2    # "dataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "info":Landroid/os/Bundle;
    .end local v6    # "intent":Landroid/content/Intent;
    .end local v7    # "needRestore":Z
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkontakte/android/StoreActivity$7$1;->this$1:Lcom/vkontakte/android/StoreActivity$7;

    iget-object v14, v14, Lcom/vkontakte/android/StoreActivity$7;->this$0:Lcom/vkontakte/android/StoreActivity;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/vkontakte/android/StoreActivity$7$1;->val$conn:Landroid/content/ServiceConnection;

    invoke-virtual {v14, v15}, Lcom/vkontakte/android/StoreActivity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 427
    return-void

    .line 423
    :catch_0
    move-exception v13

    .line 424
    .local v13, "x":Ljava/lang/Exception;
    const-string v14, "vk"

    invoke-static {v14, v13}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method
