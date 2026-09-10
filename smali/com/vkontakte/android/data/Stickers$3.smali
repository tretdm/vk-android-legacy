.class final Lcom/vkontakte/android/data/Stickers$3;
.super Ljava/lang/Object;
.source "Stickers.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/data/Stickers;->getPrices(Landroid/app/Activity;Ljava/util/List;Lcom/vkontakte/android/data/Stickers$GetPricesCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$act:Landroid/app/Activity;

.field final synthetic val$callback:Lcom/vkontakte/android/data/Stickers$GetPricesCallback;

.field final synthetic val$ids:Ljava/util/List;


# direct methods
.method constructor <init>(Ljava/util/List;Landroid/app/Activity;Lcom/vkontakte/android/data/Stickers$GetPricesCallback;)V
    .locals 0

    .prologue
    .line 289
    iput-object p1, p0, Lcom/vkontakte/android/data/Stickers$3;->val$ids:Ljava/util/List;

    iput-object p2, p0, Lcom/vkontakte/android/data/Stickers$3;->val$act:Landroid/app/Activity;

    iput-object p3, p0, Lcom/vkontakte/android/data/Stickers$3;->val$callback:Lcom/vkontakte/android/data/Stickers$GetPricesCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "binder"    # Landroid/os/IBinder;

    .prologue
    .line 297
    move-object v0, p0

    .line 298
    .local v0, "conn":Landroid/content/ServiceConnection;
    invoke-static {p2}, Lcom/android/vending/billing/IInAppBillingService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/vending/billing/IInAppBillingService;

    move-result-object v1

    .line 299
    .local v1, "service":Lcom/android/vending/billing/IInAppBillingService;
    new-instance v2, Lcom/vkontakte/android/data/Stickers$3$1;

    invoke-direct {v2, p0, v1, v0}, Lcom/vkontakte/android/data/Stickers$3$1;-><init>(Lcom/vkontakte/android/data/Stickers$3;Lcom/android/vending/billing/IInAppBillingService;Landroid/content/ServiceConnection;)V

    invoke-static {v2}, Lcom/vkontakte/android/APIController;->runInBg(Ljava/lang/Runnable;)V

    .line 331
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 293
    return-void
.end method
