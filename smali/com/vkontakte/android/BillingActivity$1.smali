.class Lcom/vkontakte/android/BillingActivity$1;
.super Ljava/lang/Object;
.source "BillingActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/BillingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/BillingActivity;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/BillingActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/BillingActivity$1;->this$0:Lcom/vkontakte/android/BillingActivity;

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "binder"    # Landroid/os/IBinder;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/vkontakte/android/BillingActivity$1;->this$0:Lcom/vkontakte/android/BillingActivity;

    invoke-static {p2}, Lcom/android/vending/billing/IInAppBillingService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/vending/billing/IInAppBillingService;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vkontakte/android/BillingActivity;->access$0(Lcom/vkontakte/android/BillingActivity;Lcom/android/vending/billing/IInAppBillingService;)V

    .line 40
    iget-object v0, p0, Lcom/vkontakte/android/BillingActivity$1;->this$0:Lcom/vkontakte/android/BillingActivity;

    invoke-virtual {v0}, Lcom/vkontakte/android/BillingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "restore"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/vkontakte/android/BillingActivity$1;->this$0:Lcom/vkontakte/android/BillingActivity;

    invoke-static {v0}, Lcom/vkontakte/android/BillingActivity;->access$1(Lcom/vkontakte/android/BillingActivity;)V

    .line 45
    :goto_0
    return-void

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/BillingActivity$1;->this$0:Lcom/vkontakte/android/BillingActivity;

    invoke-static {v0}, Lcom/vkontakte/android/BillingActivity;->access$2(Lcom/vkontakte/android/BillingActivity;)V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/vkontakte/android/BillingActivity$1;->this$0:Lcom/vkontakte/android/BillingActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/BillingActivity;->access$0(Lcom/vkontakte/android/BillingActivity;Lcom/android/vending/billing/IInAppBillingService;)V

    .line 35
    return-void
.end method
