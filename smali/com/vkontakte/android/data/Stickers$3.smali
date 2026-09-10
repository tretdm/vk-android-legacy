.class Lcom/vkontakte/android/data/Stickers$3;
.super Ljava/lang/Object;
.source "Stickers.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/data/Stickers;->getPrices(Landroid/app/Activity;Ljava/util/List;Lcom/vkontakte/android/data/Stickers$GetPricesCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$act:Landroid/app/Activity;

.field private final synthetic val$callback:Lcom/vkontakte/android/data/Stickers$GetPricesCallback;

.field private final synthetic val$ids:Ljava/util/List;


# direct methods
.method constructor <init>(Ljava/util/List;Landroid/app/Activity;Lcom/vkontakte/android/data/Stickers$GetPricesCallback;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/data/Stickers$3;->val$ids:Ljava/util/List;

    iput-object p2, p0, Lcom/vkontakte/android/data/Stickers$3;->val$act:Landroid/app/Activity;

    iput-object p3, p0, Lcom/vkontakte/android/data/Stickers$3;->val$callback:Lcom/vkontakte/android/data/Stickers$GetPricesCallback;

    .line 290
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 7
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "binder"    # Landroid/os/IBinder;

    .prologue
    .line 298
    move-object v6, p0

    .line 299
    .local v6, "conn":Landroid/content/ServiceConnection;
    invoke-static {p2}, Lcom/android/vending/billing/IInAppBillingService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/vending/billing/IInAppBillingService;

    move-result-object v3

    .line 300
    .local v3, "service":Lcom/android/vending/billing/IInAppBillingService;
    new-instance v0, Lcom/vkontakte/android/data/Stickers$3$1;

    iget-object v2, p0, Lcom/vkontakte/android/data/Stickers$3;->val$ids:Ljava/util/List;

    iget-object v4, p0, Lcom/vkontakte/android/data/Stickers$3;->val$act:Landroid/app/Activity;

    iget-object v5, p0, Lcom/vkontakte/android/data/Stickers$3;->val$callback:Lcom/vkontakte/android/data/Stickers$GetPricesCallback;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/vkontakte/android/data/Stickers$3$1;-><init>(Lcom/vkontakte/android/data/Stickers$3;Ljava/util/List;Lcom/android/vending/billing/IInAppBillingService;Landroid/app/Activity;Lcom/vkontakte/android/data/Stickers$GetPricesCallback;Landroid/content/ServiceConnection;)V

    invoke-static {v0}, Lcom/vkontakte/android/APIController;->runInBg(Ljava/lang/Runnable;)V

    .line 332
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 294
    return-void
.end method
