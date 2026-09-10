.class public Lcom/vkontakte/android/StoreActivity;
.super Lcom/vkontakte/android/VKFragmentActivity;
.source "StoreActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/StoreActivity$StickerThumbsAdapter;,
        Lcom/vkontakte/android/StoreActivity$StoreAdapter;
    }
.end annotation


# instance fields
.field private adapter:Lcom/vkontakte/android/StoreActivity$StoreAdapter;

.field private btnClickListener:Landroid/view/View$OnClickListener;

.field private content:Landroid/widget/FrameLayout;

.field private error:Lcom/vkontakte/android/ui/ErrorView;

.field private imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

.field private list:Landroid/widget/ListView;

.field private packs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/data/StickerPack;",
            ">;"
        }
    .end annotation
.end field

.field private progress:Landroid/widget/ProgressBar;

.field private receiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/vkontakte/android/VKFragmentActivity;-><init>()V

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/StoreActivity;->packs:Ljava/util/ArrayList;

    .line 55
    new-instance v0, Lcom/vkontakte/android/StoreActivity$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/StoreActivity$1;-><init>(Lcom/vkontakte/android/StoreActivity;)V

    iput-object v0, p0, Lcom/vkontakte/android/StoreActivity;->btnClickListener:Landroid/view/View$OnClickListener;

    .line 86
    new-instance v0, Lcom/vkontakte/android/StoreActivity$2;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/StoreActivity$2;-><init>(Lcom/vkontakte/android/StoreActivity;)V

    iput-object v0, p0, Lcom/vkontakte/android/StoreActivity;->receiver:Landroid/content/BroadcastReceiver;

    .line 538
    return-void
.end method

.method static synthetic access$000(Lcom/vkontakte/android/StoreActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/StoreActivity;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/vkontakte/android/StoreActivity;->packs:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/vkontakte/android/StoreActivity;Lcom/vkontakte/android/data/StickerPack;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/StoreActivity;
    .param p1, "x1"    # Lcom/vkontakte/android/data/StickerPack;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/vkontakte/android/StoreActivity;->downloadPack(Lcom/vkontakte/android/data/StickerPack;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/vkontakte/android/StoreActivity;)Landroid/view/View$OnClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/StoreActivity;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/vkontakte/android/StoreActivity;->btnClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/vkontakte/android/StoreActivity;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/StoreActivity;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/vkontakte/android/StoreActivity;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/vkontakte/android/StoreActivity;)Lcom/vkontakte/android/StoreActivity$StoreAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/StoreActivity;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/vkontakte/android/StoreActivity;->adapter:Lcom/vkontakte/android/StoreActivity$StoreAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/vkontakte/android/StoreActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/StoreActivity;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/vkontakte/android/StoreActivity;->updateList()V

    return-void
.end method

.method static synthetic access$300(Lcom/vkontakte/android/StoreActivity;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/StoreActivity;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/vkontakte/android/StoreActivity;->list:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/vkontakte/android/StoreActivity;)Landroid/widget/ProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/StoreActivity;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/vkontakte/android/StoreActivity;->progress:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$600(Lcom/vkontakte/android/StoreActivity;)Lcom/vkontakte/android/ui/ErrorView;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/StoreActivity;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/vkontakte/android/StoreActivity;->error:Lcom/vkontakte/android/ui/ErrorView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/vkontakte/android/StoreActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/StoreActivity;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/vkontakte/android/StoreActivity;->loadData()V

    return-void
.end method

.method static synthetic access$900(Lcom/vkontakte/android/StoreActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/StoreActivity;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/vkontakte/android/StoreActivity;->getPrices()V

    return-void
.end method

.method private checkIncompleteTransactions()V
    .locals 3

    .prologue
    .line 390
    new-instance v0, Lcom/vkontakte/android/StoreActivity$7;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/StoreActivity$7;-><init>(Lcom/vkontakte/android/StoreActivity;)V

    .line 431
    .local v0, "serviceConn":Landroid/content/ServiceConnection;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.vending.billing.InAppBillingService.BIND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Lcom/vkontakte/android/StoreActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 432
    return-void
.end method

.method private downloadPack(Lcom/vkontakte/android/data/StickerPack;)V
    .locals 5
    .param p1, "pck"    # Lcom/vkontakte/android/data/StickerPack;

    .prologue
    .line 203
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/vkontakte/android/StickerDownloaderService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 204
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "id"

    iget v2, p1, Lcom/vkontakte/android/data/StickerPack;->id:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 205
    const-string v1, "url"

    const-string v2, "stickers"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/vkontakte/android/StoreActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "content"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Lcom/vkontakte/android/data/StickerPack;->id:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 206
    const-string v1, "title"

    iget-object v2, p1, Lcom/vkontakte/android/data/StickerPack;->title:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 207
    invoke-virtual {p0, v0}, Lcom/vkontakte/android/StoreActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 208
    return-void
.end method

.method private getPrices()V
    .locals 9

    .prologue
    const/16 v8, 0x12c

    const/4 v7, 0x1

    .line 264
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 265
    .local v1, "items":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/vkontakte/android/StoreActivity;->packs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/data/StickerPack;

    .line 266
    .local v2, "pack":Lcom/vkontakte/android/data/StickerPack;
    iget-object v4, v2, Lcom/vkontakte/android/data/StickerPack;->storeID:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v4, v2, Lcom/vkontakte/android/data/StickerPack;->storeID:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 267
    iget-object v4, v2, Lcom/vkontakte/android/data/StickerPack;->storeID:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 269
    .end local v2    # "pack":Lcom/vkontakte/android/data/StickerPack;
    :cond_1
    const-string v4, "vk"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Get prices for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v4

    if-nez v4, :cond_2

    .line 272
    iget-object v4, p0, Lcom/vkontakte/android/StoreActivity;->list:Landroid/widget/ListView;

    invoke-static {v4, v7, v8}, Lcom/vkontakte/android/Global;->showViewAnimated(Landroid/view/View;ZI)V

    .line 273
    iget-object v4, p0, Lcom/vkontakte/android/StoreActivity;->progress:Landroid/widget/ProgressBar;

    const/4 v5, 0x0

    invoke-static {v4, v5, v8}, Lcom/vkontakte/android/Global;->showViewAnimated(Landroid/view/View;ZI)V

    .line 349
    :goto_1
    return-void

    .line 276
    :cond_2
    new-instance v3, Lcom/vkontakte/android/StoreActivity$6;

    invoke-direct {v3, p0, v1}, Lcom/vkontakte/android/StoreActivity$6;-><init>(Lcom/vkontakte/android/StoreActivity;Ljava/util/HashSet;)V

    .line 348
    .local v3, "serviceConn":Landroid/content/ServiceConnection;
    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.android.vending.billing.InAppBillingService.BIND"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v4, v3, v7}, Lcom/vkontakte/android/StoreActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    goto :goto_1
.end method

.method private loadData()V
    .locals 2

    .prologue
    .line 216
    new-instance v0, Lcom/vkontakte/android/api/StoreGetInventory;

    invoke-direct {v0}, Lcom/vkontakte/android/api/StoreGetInventory;-><init>()V

    new-instance v1, Lcom/vkontakte/android/StoreActivity$5;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/StoreActivity$5;-><init>(Lcom/vkontakte/android/StoreActivity;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/StoreGetInventory;->setCallback(Lcom/vkontakte/android/api/StoreGetInventory$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    .line 261
    return-void
.end method

.method private updateList()V
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/vkontakte/android/StoreActivity;->adapter:Lcom/vkontakte/android/StoreActivity$StoreAdapter;

    invoke-virtual {v0}, Lcom/vkontakte/android/StoreActivity$StoreAdapter;->notifyDataSetChanged()V

    .line 212
    iget-object v0, p0, Lcom/vkontakte/android/StoreActivity;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->updateImages()V

    .line 213
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 8
    .param p1, "reqCode"    # I
    .param p2, "resCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x0

    .line 352
    invoke-super {p0, p1, p2, p3}, Lcom/vkontakte/android/VKFragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 353
    const/16 v4, 0x65

    if-ne p1, v4, :cond_5

    .line 354
    const/4 v4, -0x1

    if-ne p2, v4, :cond_5

    .line 355
    if-nez p3, :cond_1

    .line 387
    :cond_0
    :goto_0
    return-void

    .line 356
    :cond_1
    const-string v4, "product"

    invoke-virtual {p3, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 357
    .local v1, "id":I
    iget-object v4, p0, Lcom/vkontakte/android/StoreActivity;->packs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vkontakte/android/data/StickerPack;

    .line 358
    .local v3, "pck":Lcom/vkontakte/android/data/StickerPack;
    iget v4, v3, Lcom/vkontakte/android/data/StickerPack;->id:I

    if-ne v4, v1, :cond_2

    .line 359
    invoke-static {v1}, Lcom/vkontakte/android/data/Stickers;->getPackState(I)I

    move-result v4

    iput v4, v3, Lcom/vkontakte/android/data/StickerPack;->state:I

    .line 360
    iget v4, v3, Lcom/vkontakte/android/data/StickerPack;->state:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_3

    .line 361
    new-instance v2, Landroid/content/Intent;

    const-class v4, Lcom/vkontakte/android/StickerDownloaderService;

    invoke-direct {v2, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 362
    .local v2, "intent":Landroid/content/Intent;
    const-string v4, "id"

    iget v5, v3, Lcom/vkontakte/android/data/StickerPack;->id:I

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 363
    const-string v4, "url"

    const-string v5, "stickers"

    invoke-virtual {p0, v5, v6}, Lcom/vkontakte/android/StoreActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "content"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v3, Lcom/vkontakte/android/data/StickerPack;->id:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 364
    const-string v4, "title"

    iget-object v5, v3, Lcom/vkontakte/android/data/StickerPack;->title:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 365
    invoke-virtual {p0, v2}, Lcom/vkontakte/android/StoreActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 367
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_3
    invoke-direct {p0}, Lcom/vkontakte/android/StoreActivity;->updateList()V

    .line 371
    .end local v3    # "pck":Lcom/vkontakte/android/data/StickerPack;
    :cond_4
    invoke-static {}, Lcom/vkontakte/android/data/Stickers;->broadcastUpdate()V

    .line 372
    const-string v4, "message"

    invoke-virtual {p3, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 373
    new-instance v4, Lcom/vkontakte/android/VKAlertDialog$Builder;

    invoke-direct {v4, p0}, Lcom/vkontakte/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f0d00d0

    invoke-virtual {v4, v5}, Lcom/vkontakte/android/VKAlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const-string v5, "message"

    invoke-virtual {p3, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0d01cd

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 381
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "id":I
    :cond_5
    const/16 v4, 0x66

    if-ne p1, v4, :cond_0

    .line 382
    iget-object v4, p0, Lcom/vkontakte/android/StoreActivity;->packs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vkontakte/android/data/StickerPack;

    .line 383
    .restart local v3    # "pck":Lcom/vkontakte/android/data/StickerPack;
    iget v4, v3, Lcom/vkontakte/android/data/StickerPack;->id:I

    invoke-static {v4}, Lcom/vkontakte/android/data/Stickers;->getPackState(I)I

    move-result v4

    iput v4, v3, Lcom/vkontakte/android/data/StickerPack;->state:I

    goto :goto_1

    .line 385
    .end local v3    # "pck":Lcom/vkontakte/android/data/StickerPack;
    :cond_6
    invoke-direct {p0}, Lcom/vkontakte/android/StoreActivity;->updateList()V

    goto/16 :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    const/16 v8, 0x8

    const/4 v4, 0x0

    const/high16 v5, 0x42200000    # 40.0f

    const/4 v7, 0x0

    .line 114
    invoke-super {p0, p1}, Lcom/vkontakte/android/VKFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 126
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/vkontakte/android/StoreActivity;->content:Landroid/widget/FrameLayout;

    .line 127
    iget-object v1, p0, Lcom/vkontakte/android/StoreActivity;->content:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/vkontakte/android/StoreActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0004

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 128
    new-instance v1, Landroid/widget/ListView;

    invoke-direct {v1, p0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/vkontakte/android/StoreActivity;->list:Landroid/widget/ListView;

    .line 129
    iget-object v1, p0, Lcom/vkontakte/android/StoreActivity;->list:Landroid/widget/ListView;

    invoke-virtual {v1, v8}, Landroid/widget/ListView;->setVisibility(I)V

    .line 130
    iget-object v1, p0, Lcom/vkontakte/android/StoreActivity;->list:Landroid/widget/ListView;

    new-instance v2, Lcom/vkontakte/android/StoreActivity$StoreAdapter;

    invoke-direct {v2, p0, v7}, Lcom/vkontakte/android/StoreActivity$StoreAdapter;-><init>(Lcom/vkontakte/android/StoreActivity;Lcom/vkontakte/android/StoreActivity$1;)V

    iput-object v2, p0, Lcom/vkontakte/android/StoreActivity;->adapter:Lcom/vkontakte/android/StoreActivity$StoreAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 131
    iget-object v1, p0, Lcom/vkontakte/android/StoreActivity;->list:Landroid/widget/ListView;

    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 132
    iget-object v1, p0, Lcom/vkontakte/android/StoreActivity;->list:Landroid/widget/ListView;

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 133
    iget-object v1, p0, Lcom/vkontakte/android/StoreActivity;->list:Landroid/widget/ListView;

    new-instance v2, Lcom/vkontakte/android/StoreActivity$3;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/StoreActivity$3;-><init>(Lcom/vkontakte/android/StoreActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 154
    iget-object v1, p0, Lcom/vkontakte/android/StoreActivity;->content:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/vkontakte/android/StoreActivity;->list:Landroid/widget/ListView;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 155
    new-instance v1, Landroid/widget/ProgressBar;

    invoke-direct {v1, p0}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/vkontakte/android/StoreActivity;->progress:Landroid/widget/ProgressBar;

    .line 156
    iget-object v1, p0, Lcom/vkontakte/android/StoreActivity;->content:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/vkontakte/android/StoreActivity;->progress:Landroid/widget/ProgressBar;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {v5}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v4

    invoke-static {v5}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v5

    const/16 v6, 0x11

    invoke-direct {v3, v4, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 157
    const v1, 0x7f030030

    invoke-static {p0, v1, v7}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/ui/ErrorView;

    iput-object v1, p0, Lcom/vkontakte/android/StoreActivity;->error:Lcom/vkontakte/android/ui/ErrorView;

    .line 158
    iget-object v1, p0, Lcom/vkontakte/android/StoreActivity;->error:Lcom/vkontakte/android/ui/ErrorView;

    invoke-virtual {v1, v8}, Lcom/vkontakte/android/ui/ErrorView;->setVisibility(I)V

    .line 159
    iget-object v1, p0, Lcom/vkontakte/android/StoreActivity;->error:Lcom/vkontakte/android/ui/ErrorView;

    new-instance v2, Lcom/vkontakte/android/StoreActivity$4;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/StoreActivity$4;-><init>(Lcom/vkontakte/android/StoreActivity;)V

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/ui/ErrorView;->setOnRetryListener(Landroid/view/View$OnClickListener;)V

    .line 168
    iget-object v1, p0, Lcom/vkontakte/android/StoreActivity;->content:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/vkontakte/android/StoreActivity;->error:Lcom/vkontakte/android/ui/ErrorView;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 169
    iget-object v1, p0, Lcom/vkontakte/android/StoreActivity;->content:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/StoreActivity;->setContentView(Landroid/view/View;)V

    .line 171
    new-instance v1, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    new-instance v2, Lcom/vkontakte/android/StoreActivity$StickerThumbsAdapter;

    invoke-direct {v2, p0, v7}, Lcom/vkontakte/android/StoreActivity$StickerThumbsAdapter;-><init>(Lcom/vkontakte/android/StoreActivity;Lcom/vkontakte/android/StoreActivity$1;)V

    iget-object v3, p0, Lcom/vkontakte/android/StoreActivity;->list:Landroid/widget/ListView;

    invoke-direct {v1, v2, v3, v7}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;-><init>(Lcom/vkontakte/android/ui/ListImageLoaderAdapter;Landroid/widget/AdapterView;Lcom/vkontakte/android/ui/ListImageLoaderWrapper$Listener;)V

    iput-object v1, p0, Lcom/vkontakte/android/StoreActivity;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    .line 173
    invoke-direct {p0}, Lcom/vkontakte/android/StoreActivity;->loadData()V

    .line 175
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 176
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.vkontakte.android.STICKERS_UPDATED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 177
    const-string v1, "com.vkontakte.android.STICKERS_DOWNLOAD_PROGRESS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 178
    iget-object v1, p0, Lcom/vkontakte/android/StoreActivity;->receiver:Landroid/content/BroadcastReceiver;

    const-string v2, "com.vkontakte.android.permission.ACCESS_DATA"

    invoke-virtual {p0, v1, v0, v2, v7}, Lcom/vkontakte/android/StoreActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 180
    invoke-direct {p0}, Lcom/vkontakte/android/StoreActivity;->checkIncompleteTransactions()V

    .line 181
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 191
    invoke-virtual {p0}, Lcom/vkontakte/android/StoreActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0f000b

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 192
    const/4 v0, 0x1

    return v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 184
    invoke-super {p0}, Lcom/vkontakte/android/VKFragmentActivity;->onDestroy()V

    .line 186
    :try_start_0
    iget-object v0, p0, Lcom/vkontakte/android/StoreActivity;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/StoreActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 188
    :goto_0
    return-void

    .line 187
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 196
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f080202

    if-ne v0, v1, :cond_0

    .line 197
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/vkontakte/android/StickerManagerActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/StoreActivity;->startActivity(Landroid/content/Intent;)V

    .line 199
    :cond_0
    invoke-super {p0, p1}, Lcom/vkontakte/android/VKFragmentActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method
