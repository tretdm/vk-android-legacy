.class Lcom/vkontakte/android/BillingActivity$2$1;
.super Ljava/lang/Object;
.source "BillingActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/BillingActivity$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/BillingActivity$2;

.field final synthetic val$dataList:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/BillingActivity$2;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcom/vkontakte/android/BillingActivity$2$1;->this$1:Lcom/vkontakte/android/BillingActivity$2;

    iput-object p2, p0, Lcom/vkontakte/android/BillingActivity$2$1;->val$dataList:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    .line 90
    iget-object v0, p0, Lcom/vkontakte/android/BillingActivity$2$1;->val$dataList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/vkontakte/android/BillingActivity$2$1;->this$1:Lcom/vkontakte/android/BillingActivity$2;

    iget-object v0, v0, Lcom/vkontakte/android/BillingActivity$2;->this$0:Lcom/vkontakte/android/BillingActivity;

    const/4 v5, -0x1

    invoke-virtual {v0, v5}, Lcom/vkontakte/android/BillingActivity;->setResult(I)V

    .line 92
    iget-object v0, p0, Lcom/vkontakte/android/BillingActivity$2$1;->this$1:Lcom/vkontakte/android/BillingActivity$2;

    iget-object v0, v0, Lcom/vkontakte/android/BillingActivity$2;->this$0:Lcom/vkontakte/android/BillingActivity;

    invoke-virtual {v0}, Lcom/vkontakte/android/BillingActivity;->finish()V

    .line 115
    :goto_0
    return-void

    .line 96
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/vkontakte/android/BillingActivity$2$1;->val$dataList:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 97
    .local v8, "d":Ljava/lang/String;
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 98
    .local v10, "o":Lorg/json/JSONObject;
    const-string v0, "developerPayload"

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 99
    .local v9, "dp":Ljava/lang/String;
    const-string v0, "purchaseToken"

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 100
    .local v4, "token":Ljava/lang/String;
    const-string v0, "orderId"

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 101
    .local v2, "orderId":Ljava/lang/String;
    const-string v0, ","

    invoke-virtual {v9, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 102
    .local v12, "t":[Ljava/lang/String;
    const/4 v0, 0x0

    aget-object v0, v12, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 103
    .local v13, "uid":I
    sget v0, Lcom/vkontakte/android/Global;->uid:I

    if-eq v13, v0, :cond_1

    .line 104
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 112
    .end local v2    # "orderId":Ljava/lang/String;
    .end local v4    # "token":Ljava/lang/String;
    .end local v8    # "d":Ljava/lang/String;
    .end local v9    # "dp":Ljava/lang/String;
    .end local v10    # "o":Lorg/json/JSONObject;
    .end local v12    # "t":[Ljava/lang/String;
    .end local v13    # "uid":I
    :catch_0
    move-exception v14

    .line 113
    .local v14, "x":Ljava/lang/Exception;
    const-string v0, "vk"

    invoke-static {v0, v14}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 107
    .end local v14    # "x":Ljava/lang/Exception;
    .restart local v2    # "orderId":Ljava/lang/String;
    .restart local v4    # "token":Ljava/lang/String;
    .restart local v8    # "d":Ljava/lang/String;
    .restart local v9    # "dp":Ljava/lang/String;
    .restart local v10    # "o":Lorg/json/JSONObject;
    .restart local v12    # "t":[Ljava/lang/String;
    .restart local v13    # "uid":I
    :cond_1
    const/4 v0, 0x2

    :try_start_1
    aget-object v0, v12, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 108
    .local v1, "id":I
    const-string v0, "productId"

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 109
    .local v3, "productId":Ljava/lang/String;
    iget-object v0, p0, Lcom/vkontakte/android/BillingActivity$2$1;->this$1:Lcom/vkontakte/android/BillingActivity$2;

    iget-object v0, v0, Lcom/vkontakte/android/BillingActivity$2;->this$0:Lcom/vkontakte/android/BillingActivity;

    const-string v5, "stickers"

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Lcom/vkontakte/android/BillingActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v11

    .line 110
    .local v11, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v11}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "owned"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "token"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "order"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 111
    iget-object v0, p0, Lcom/vkontakte/android/BillingActivity$2$1;->this$1:Lcom/vkontakte/android/BillingActivity$2;

    iget-object v0, v0, Lcom/vkontakte/android/BillingActivity$2;->this$0:Lcom/vkontakte/android/BillingActivity;

    iget-object v5, p0, Lcom/vkontakte/android/BillingActivity$2$1;->this$1:Lcom/vkontakte/android/BillingActivity$2;

    iget-object v5, v5, Lcom/vkontakte/android/BillingActivity$2;->val$progress:Landroid/app/ProgressDialog;

    const/4 v6, 0x0

    move-object v7, p0

    invoke-static/range {v0 .. v7}, Lcom/vkontakte/android/BillingActivity;->access$300(Lcom/vkontakte/android/BillingActivity;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/ProgressDialog;ZLjava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
