.class Lcom/vkontakte/android/StoreActivity$6;
.super Ljava/lang/Object;
.source "StoreActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/StoreActivity;->getPrices()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/StoreActivity;

.field private final synthetic val$items:Ljava/util/HashSet;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/StoreActivity;Ljava/util/HashSet;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/StoreActivity$6;->this$0:Lcom/vkontakte/android/StoreActivity;

    iput-object p2, p0, Lcom/vkontakte/android/StoreActivity$6;->val$items:Ljava/util/HashSet;

    .line 279
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/StoreActivity$6;)Lcom/vkontakte/android/StoreActivity;
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lcom/vkontakte/android/StoreActivity$6;->this$0:Lcom/vkontakte/android/StoreActivity;

    return-object v0
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "binder"    # Landroid/os/IBinder;

    .prologue
    .line 287
    move-object v0, p0

    .line 288
    .local v0, "conn":Landroid/content/ServiceConnection;
    invoke-static {p2}, Lcom/android/vending/billing/IInAppBillingService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/vending/billing/IInAppBillingService;

    move-result-object v1

    .line 289
    .local v1, "service":Lcom/android/vending/billing/IInAppBillingService;
    new-instance v2, Lcom/vkontakte/android/StoreActivity$6$1;

    iget-object v3, p0, Lcom/vkontakte/android/StoreActivity$6;->val$items:Ljava/util/HashSet;

    invoke-direct {v2, p0, v3, v1, v0}, Lcom/vkontakte/android/StoreActivity$6$1;-><init>(Lcom/vkontakte/android/StoreActivity$6;Ljava/util/HashSet;Lcom/android/vending/billing/IInAppBillingService;Landroid/content/ServiceConnection;)V

    invoke-static {v2}, Lcom/vkontakte/android/APIController;->runInBg(Ljava/lang/Runnable;)V

    .line 349
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 283
    return-void
.end method
