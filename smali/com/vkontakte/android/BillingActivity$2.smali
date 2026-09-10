.class Lcom/vkontakte/android/BillingActivity$2;
.super Ljava/lang/Object;
.source "BillingActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/BillingActivity;->processRestore()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/BillingActivity;

.field final synthetic val$progress:Landroid/app/ProgressDialog;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/BillingActivity;Landroid/app/ProgressDialog;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/vkontakte/android/BillingActivity$2;->this$0:Lcom/vkontakte/android/BillingActivity;

    iput-object p2, p0, Lcom/vkontakte/android/BillingActivity$2;->val$progress:Landroid/app/ProgressDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 86
    :try_start_0
    iget-object v4, p0, Lcom/vkontakte/android/BillingActivity$2;->this$0:Lcom/vkontakte/android/BillingActivity;

    invoke-static {v4}, Lcom/vkontakte/android/BillingActivity;->access$000(Lcom/vkontakte/android/BillingActivity;)Lcom/android/vending/billing/IInAppBillingService;

    move-result-object v4

    const/4 v5, 0x3

    iget-object v6, p0, Lcom/vkontakte/android/BillingActivity$2;->this$0:Lcom/vkontakte/android/BillingActivity;

    invoke-virtual {v6}, Lcom/vkontakte/android/BillingActivity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "inapp"

    const/4 v8, 0x0

    invoke-interface {v4, v5, v6, v7, v8}, Lcom/android/vending/billing/IInAppBillingService;->getPurchases(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 87
    .local v1, "info":Landroid/os/Bundle;
    const-string v4, "INAPP_PURCHASE_DATA_LIST"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 88
    .local v0, "dataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v2, Lcom/vkontakte/android/BillingActivity$2$1;

    invoke-direct {v2, p0, v0}, Lcom/vkontakte/android/BillingActivity$2$1;-><init>(Lcom/vkontakte/android/BillingActivity$2;Ljava/util/ArrayList;)V

    .line 117
    .local v2, "r":Ljava/lang/Runnable;
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 118
    iget-object v4, p0, Lcom/vkontakte/android/BillingActivity$2;->this$0:Lcom/vkontakte/android/BillingActivity;

    invoke-virtual {v4}, Lcom/vkontakte/android/BillingActivity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    .end local v0    # "dataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v1    # "info":Landroid/os/Bundle;
    .end local v2    # "r":Ljava/lang/Runnable;
    :goto_0
    return-void

    .line 119
    :catch_0
    move-exception v3

    .line 120
    .local v3, "x":Ljava/lang/Exception;
    const-string v4, "vk"

    invoke-static {v4, v3}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 121
    iget-object v4, p0, Lcom/vkontakte/android/BillingActivity$2;->this$0:Lcom/vkontakte/android/BillingActivity;

    new-instance v5, Lcom/vkontakte/android/BillingActivity$2$2;

    invoke-direct {v5, p0}, Lcom/vkontakte/android/BillingActivity$2$2;-><init>(Lcom/vkontakte/android/BillingActivity$2;)V

    invoke-virtual {v4, v5}, Lcom/vkontakte/android/BillingActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
