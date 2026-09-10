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

.field private final synthetic val$conn:Landroid/content/ServiceConnection;

.field private final synthetic val$service:Lcom/android/vending/billing/IInAppBillingService;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/StoreActivity$7;Lcom/android/vending/billing/IInAppBillingService;Landroid/content/ServiceConnection;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/StoreActivity$7$1;->this$1:Lcom/vkontakte/android/StoreActivity$7;

    iput-object p2, p0, Lcom/vkontakte/android/StoreActivity$7$1;->val$service:Lcom/android/vending/billing/IInAppBillingService;

    iput-object p3, p0, Lcom/vkontakte/android/StoreActivity$7$1;->val$conn:Landroid/content/ServiceConnection;

    .line 403
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 18

    .prologue
    .line 406
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/StoreActivity$7$1;->val$service:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v14, 0x3

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/vkontakte/android/StoreActivity$7$1;->this$1:Lcom/vkontakte/android/StoreActivity$7;

    invoke-static {v15}, Lcom/vkontakte/android/StoreActivity$7;->access$0(Lcom/vkontakte/android/StoreActivity$7;)Lcom/vkontakte/android/StoreActivity;

    move-result-object v15

    invoke-virtual {v15}, Lcom/vkontakte/android/StoreActivity;->getPackageName()Ljava/lang/String;

    move-result-object v15

    const-string v16, "inapp"

    const/16 v17, 0x0

    invoke-interface/range {v13 .. v17}, Lcom/android/vending/billing/IInAppBillingService;->getPurchases(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 407
    .local v4, "info":Landroid/os/Bundle;
    const-string v13, "INAPP_PURCHASE_DATA_LIST"

    invoke-virtual {v4, v13}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 408
    .local v2, "dataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v6, 0x0

    .line 409
    .local v6, "needRestore":Z
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_0
    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-nez v14, :cond_2

    .line 420
    if-eqz v6, :cond_1

    .line 421
    new-instance v5, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/StoreActivity$7$1;->this$1:Lcom/vkontakte/android/StoreActivity$7;

    invoke-static {v13}, Lcom/vkontakte/android/StoreActivity$7;->access$0(Lcom/vkontakte/android/StoreActivity$7;)Lcom/vkontakte/android/StoreActivity;

    move-result-object v13

    const-class v14, Lcom/vkontakte/android/BillingActivity;

    invoke-direct {v5, v13, v14}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 422
    .local v5, "intent":Landroid/content/Intent;
    const-string v13, "restore"

    const/4 v14, 0x1

    invoke-virtual {v5, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 423
    const-string v13, "cancelable"

    const/4 v14, 0x1

    invoke-virtual {v5, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 424
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/StoreActivity$7$1;->this$1:Lcom/vkontakte/android/StoreActivity$7;

    invoke-static {v13}, Lcom/vkontakte/android/StoreActivity$7;->access$0(Lcom/vkontakte/android/StoreActivity$7;)Lcom/vkontakte/android/StoreActivity;

    move-result-object v13

    const/16 v14, 0x66

    invoke-virtual {v13, v5, v14}, Lcom/vkontakte/android/StoreActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 429
    .end local v2    # "dataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4    # "info":Landroid/os/Bundle;
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v6    # "needRestore":Z
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/StoreActivity$7$1;->this$1:Lcom/vkontakte/android/StoreActivity$7;

    invoke-static {v13}, Lcom/vkontakte/android/StoreActivity$7;->access$0(Lcom/vkontakte/android/StoreActivity$7;)Lcom/vkontakte/android/StoreActivity;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkontakte/android/StoreActivity$7$1;->val$conn:Landroid/content/ServiceConnection;

    invoke-virtual {v13, v14}, Lcom/vkontakte/android/StoreActivity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 430
    return-void

    .line 409
    .restart local v2    # "dataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v4    # "info":Landroid/os/Bundle;
    .restart local v6    # "needRestore":Z
    :cond_2
    :try_start_1
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 410
    .local v1, "d":Ljava/lang/String;
    const-string v14, "vk"

    invoke-static {v14, v1}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 412
    .local v7, "o":Lorg/json/JSONObject;
    const-string v14, "developerPayload"

    invoke-virtual {v7, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 413
    .local v3, "dp":Ljava/lang/String;
    const-string v14, "purchaseToken"

    invoke-virtual {v7, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 414
    .local v10, "token":Ljava/lang/String;
    const-string v14, "orderId"

    invoke-virtual {v7, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 415
    .local v8, "orderId":Ljava/lang/String;
    const-string v14, ","

    invoke-virtual {v3, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 416
    .local v9, "t":[Ljava/lang/String;
    const/4 v14, 0x0

    aget-object v14, v9, v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 417
    .local v11, "uid":I
    sget v14, Lcom/vkontakte/android/Global;->uid:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-ne v11, v14, :cond_0

    .line 418
    const/4 v6, 0x1

    goto :goto_0

    .line 426
    .end local v1    # "d":Ljava/lang/String;
    .end local v2    # "dataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3    # "dp":Ljava/lang/String;
    .end local v4    # "info":Landroid/os/Bundle;
    .end local v6    # "needRestore":Z
    .end local v7    # "o":Lorg/json/JSONObject;
    .end local v8    # "orderId":Ljava/lang/String;
    .end local v9    # "t":[Ljava/lang/String;
    .end local v10    # "token":Ljava/lang/String;
    .end local v11    # "uid":I
    :catch_0
    move-exception v12

    .line 427
    .local v12, "x":Ljava/lang/Exception;
    const-string v13, "vk"

    invoke-static {v13, v12}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method
