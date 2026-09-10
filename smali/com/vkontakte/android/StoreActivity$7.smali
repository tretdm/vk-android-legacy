.class Lcom/vkontakte/android/StoreActivity$7;
.super Ljava/lang/Object;
.source "StoreActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/StoreActivity;->checkIncompleteTransactions()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/StoreActivity;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/StoreActivity;)V
    .locals 0

    .prologue
    .line 390
    iput-object p1, p0, Lcom/vkontakte/android/StoreActivity$7;->this$0:Lcom/vkontakte/android/StoreActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "binder"    # Landroid/os/IBinder;

    .prologue
    .line 398
    move-object v0, p0

    .line 399
    .local v0, "conn":Landroid/content/ServiceConnection;
    invoke-static {p2}, Lcom/android/vending/billing/IInAppBillingService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/vending/billing/IInAppBillingService;

    move-result-object v1

    .line 400
    .local v1, "service":Lcom/android/vending/billing/IInAppBillingService;
    new-instance v2, Lcom/vkontakte/android/StoreActivity$7$1;

    invoke-direct {v2, p0, v1, v0}, Lcom/vkontakte/android/StoreActivity$7$1;-><init>(Lcom/vkontakte/android/StoreActivity$7;Lcom/android/vending/billing/IInAppBillingService;Landroid/content/ServiceConnection;)V

    invoke-static {v2}, Lcom/vkontakte/android/APIController;->runInBg(Ljava/lang/Runnable;)V

    .line 429
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 394
    return-void
.end method
