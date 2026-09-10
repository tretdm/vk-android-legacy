.class public Lcom/vkontakte/android/BillingActivity;
.super Landroid/app/Activity;
.source "BillingActivity.java"


# instance fields
.field private service:Lcom/android/vending/billing/IInAppBillingService;

.field serviceConn:Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 31
    new-instance v0, Lcom/vkontakte/android/BillingActivity$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/BillingActivity$1;-><init>(Lcom/vkontakte/android/BillingActivity;)V

    iput-object v0, p0, Lcom/vkontakte/android/BillingActivity;->serviceConn:Landroid/content/ServiceConnection;

    .line 27
    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/BillingActivity;Lcom/android/vending/billing/IInAppBillingService;)V
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Lcom/vkontakte/android/BillingActivity;->service:Lcom/android/vending/billing/IInAppBillingService;

    return-void
.end method

.method static synthetic access$1(Lcom/vkontakte/android/BillingActivity;)V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/vkontakte/android/BillingActivity;->processRestore()V

    return-void
.end method

.method static synthetic access$2(Lcom/vkontakte/android/BillingActivity;)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/vkontakte/android/BillingActivity;->processPurchase()V

    return-void
.end method

.method static synthetic access$3(Lcom/vkontakte/android/BillingActivity;)Lcom/android/vending/billing/IInAppBillingService;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/vkontakte/android/BillingActivity;->service:Lcom/android/vending/billing/IInAppBillingService;

    return-object v0
.end method

.method static synthetic access$4(Lcom/vkontakte/android/BillingActivity;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/ProgressDialog;ZLjava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 153
    invoke-direct/range {p0 .. p7}, Lcom/vkontakte/android/BillingActivity;->pollForResult(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/ProgressDialog;ZLjava/lang/Runnable;)V

    return-void
.end method

.method private confirmAndConsume(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "id"    # I
    .param p2, "orderId"    # Ljava/lang/String;
    .param p3, "productId"    # Ljava/lang/String;
    .param p4, "token"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 144
    const-string v0, "stickers"

    invoke-virtual {p0, v0, v3}, Lcom/vkontakte/android/BillingActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 145
    .local v8, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "owned"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "token"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "order"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 146
    new-instance v5, Landroid/app/ProgressDialog;

    invoke-direct {v5, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 147
    .local v5, "progress":Landroid/app/ProgressDialog;
    const v0, 0x7f080336

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/BillingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 148
    invoke-virtual {v5, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 149
    invoke-virtual {v5}, Landroid/app/ProgressDialog;->show()V

    .line 150
    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v7}, Lcom/vkontakte/android/BillingActivity;->pollForResult(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/ProgressDialog;ZLjava/lang/Runnable;)V

    .line 151
    return-void
.end method

.method private pollForResult(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/ProgressDialog;ZLjava/lang/Runnable;)V
    .locals 16
    .param p1, "id"    # I
    .param p2, "orderId"    # Ljava/lang/String;
    .param p3, "productId"    # Ljava/lang/String;
    .param p4, "token"    # Ljava/lang/String;
    .param p5, "progress"    # Landroid/app/ProgressDialog;
    .param p6, "finish"    # Z
    .param p7, "onDone"    # Ljava/lang/Runnable;

    .prologue
    .line 154
    const-string v4, "stickers"

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/vkontakte/android/BillingActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v10

    .line 155
    .local v10, "prefs":Landroid/content/SharedPreferences;
    const/4 v4, 0x1

    new-array v6, v4, [I

    .line 156
    .local v6, "count":[I
    new-instance v15, Lcom/vkontakte/android/api/StorePurchase;

    move/from16 v0, p1

    move-object/from16 v1, p3

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    invoke-direct {v15, v0, v1, v2, v3}, Lcom/vkontakte/android/api/StorePurchase;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    new-instance v4, Lcom/vkontakte/android/BillingActivity$3;

    move-object/from16 v5, p0

    move/from16 v7, p6

    move/from16 v8, p1

    move-object/from16 v9, p7

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    move-object/from16 v13, p4

    move-object/from16 v14, p5

    invoke-direct/range {v4 .. v14}, Lcom/vkontakte/android/BillingActivity$3;-><init>(Lcom/vkontakte/android/BillingActivity;[IZILjava/lang/Runnable;Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/ProgressDialog;)V

    invoke-virtual {v15, v4}, Lcom/vkontakte/android/api/StorePurchase;->setCallback(Lcom/vkontakte/android/api/StorePurchase$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v4

    .line 267
    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    .line 268
    return-void
.end method

.method private processPurchase()V
    .locals 13

    .prologue
    .line 63
    :try_start_0
    iget-object v0, p0, Lcom/vkontakte/android/BillingActivity;->service:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/vkontakte/android/BillingActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/vkontakte/android/BillingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "store_id"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "inapp"

    new-instance v5, Ljava/lang/StringBuilder;

    sget v6, Lcom/vkontakte/android/Global;->uid:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/vkontakte/android/BillingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v11, "product"

    const/4 v12, 0x0

    invoke-virtual {v6, v11, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcom/android/vending/billing/IInAppBillingService;->getBuyIntent(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v7

    .line 64
    .local v7, "buyIntentBundle":Landroid/os/Bundle;
    const-string v0, "RESPONSE_CODE"

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    .line 65
    .local v8, "code":I
    const/4 v0, 0x7

    if-ne v8, v0, :cond_0

    .line 66
    invoke-direct {p0}, Lcom/vkontakte/android/BillingActivity;->processRestore()V

    .line 76
    .end local v7    # "buyIntentBundle":Landroid/os/Bundle;
    .end local v8    # "code":I
    :goto_0
    return-void

    .line 71
    .restart local v7    # "buyIntentBundle":Landroid/os/Bundle;
    .restart local v8    # "code":I
    :cond_0
    const-string v0, "BUY_INTENT"

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v9

    check-cast v9, Landroid/app/PendingIntent;

    .line 72
    .local v9, "pendingIntent":Landroid/app/PendingIntent;
    invoke-virtual {v9}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v1

    const/16 v2, 0x3e9

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/vkontakte/android/BillingActivity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 73
    .end local v7    # "buyIntentBundle":Landroid/os/Bundle;
    .end local v8    # "code":I
    .end local v9    # "pendingIntent":Landroid/app/PendingIntent;
    :catch_0
    move-exception v10

    .line 74
    .local v10, "x":Ljava/lang/Exception;
    const-string v0, "vk"

    invoke-static {v0, v10}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private processRestore()V
    .locals 2

    .prologue
    .line 79
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 80
    .local v0, "progress":Landroid/app/ProgressDialog;
    const v1, 0x7f08002a

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/BillingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 81
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 82
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 83
    new-instance v1, Lcom/vkontakte/android/BillingActivity$2;

    invoke-direct {v1, p0, v0}, Lcom/vkontakte/android/BillingActivity$2;-><init>(Lcom/vkontakte/android/BillingActivity;Landroid/app/ProgressDialog;)V

    invoke-static {v1}, Lcom/vkontakte/android/APIController;->runInBg(Ljava/lang/Runnable;)V

    .line 132
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 11
    .param p1, "reqCode"    # I
    .param p2, "resCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v9, 0x0

    .line 271
    const/16 v8, 0x3e9

    if-ne p1, v8, :cond_0

    .line 272
    const-string v8, "RESPONSE_CODE"

    invoke-virtual {p3, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 273
    .local v6, "responseCode":I
    const-string v8, "INAPP_PURCHASE_DATA"

    invoke-virtual {p3, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 274
    .local v5, "purchaseData":Ljava/lang/String;
    const-string v8, "INAPP_DATA_SIGNATURE"

    invoke-virtual {p3, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 276
    .local v0, "dataSignature":Ljava/lang/String;
    const/4 v8, -0x1

    if-ne p2, v8, :cond_1

    .line 279
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 280
    .local v2, "jo":Lorg/json/JSONObject;
    const-string v8, "orderId"

    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 281
    .local v3, "orderId":Ljava/lang/String;
    const-string v8, "productId"

    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 282
    .local v4, "productId":Ljava/lang/String;
    const-string v8, "purchaseToken"

    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 283
    .local v7, "token":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/vkontakte/android/BillingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string v9, "product"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    invoke-direct {p0, v8, v3, v4, v7}, Lcom/vkontakte/android/BillingActivity;->confirmAndConsume(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 292
    .end local v0    # "dataSignature":Ljava/lang/String;
    .end local v2    # "jo":Lorg/json/JSONObject;
    .end local v3    # "orderId":Ljava/lang/String;
    .end local v4    # "productId":Ljava/lang/String;
    .end local v5    # "purchaseData":Ljava/lang/String;
    .end local v6    # "responseCode":I
    .end local v7    # "token":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 284
    .restart local v0    # "dataSignature":Ljava/lang/String;
    .restart local v5    # "purchaseData":Ljava/lang/String;
    .restart local v6    # "responseCode":I
    :catch_0
    move-exception v1

    .line 285
    .local v1, "e":Lorg/json/JSONException;
    const-string v8, "vk"

    invoke-static {v8, v1}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 289
    .end local v1    # "e":Lorg/json/JSONException;
    :cond_1
    invoke-virtual {p0}, Lcom/vkontakte/android/BillingActivity;->finish()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    .line 50
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 52
    invoke-static {}, Lcom/vkontakte/android/data/Stickers;->isPlayStoreInstalled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.vending.billing.InAppBillingService.BIND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vkontakte/android/BillingActivity;->serviceConn:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/vkontakte/android/BillingActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 59
    :goto_0
    return-void

    .line 55
    :cond_0
    const v0, 0x7f080340

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 56
    invoke-virtual {p0, v1}, Lcom/vkontakte/android/BillingActivity;->setResult(I)V

    .line 57
    invoke-virtual {p0}, Lcom/vkontakte/android/BillingActivity;->finish()V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 136
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 137
    iget-object v0, p0, Lcom/vkontakte/android/BillingActivity;->service:Lcom/android/vending/billing/IInAppBillingService;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/vkontakte/android/BillingActivity;->serviceConn:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/BillingActivity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 140
    :cond_0
    return-void
.end method
