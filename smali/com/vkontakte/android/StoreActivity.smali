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
    .line 49
    invoke-direct {p0}, Lcom/vkontakte/android/VKFragmentActivity;-><init>()V

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/StoreActivity;->packs:Ljava/util/ArrayList;

    .line 58
    new-instance v0, Lcom/vkontakte/android/StoreActivity$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/StoreActivity$1;-><init>(Lcom/vkontakte/android/StoreActivity;)V

    iput-object v0, p0, Lcom/vkontakte/android/StoreActivity;->btnClickListener:Landroid/view/View$OnClickListener;

    .line 89
    new-instance v0, Lcom/vkontakte/android/StoreActivity$2;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/StoreActivity$2;-><init>(Lcom/vkontakte/android/StoreActivity;)V

    iput-object v0, p0, Lcom/vkontakte/android/StoreActivity;->receiver:Landroid/content/BroadcastReceiver;

    .line 49
    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/StoreActivity;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/vkontakte/android/StoreActivity;->packs:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1(Lcom/vkontakte/android/StoreActivity;Lcom/vkontakte/android/data/StickerPack;)V
    .locals 0

    .prologue
    .line 205
    invoke-direct {p0, p1}, Lcom/vkontakte/android/StoreActivity;->downloadPack(Lcom/vkontakte/android/data/StickerPack;)V

    return-void
.end method

.method static synthetic access$10(Lcom/vkontakte/android/StoreActivity;)V
    .locals 0

    .prologue
    .line 266
    invoke-direct {p0}, Lcom/vkontakte/android/StoreActivity;->getPrices()V

    return-void
.end method

.method static synthetic access$2(Lcom/vkontakte/android/StoreActivity;)V
    .locals 0

    .prologue
    .line 213
    invoke-direct {p0}, Lcom/vkontakte/android/StoreActivity;->updateList()V

    return-void
.end method

.method static synthetic access$3(Lcom/vkontakte/android/StoreActivity;)Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/vkontakte/android/StoreActivity;->list:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$4(Lcom/vkontakte/android/StoreActivity;)Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/vkontakte/android/StoreActivity;->btnClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$5(Lcom/vkontakte/android/StoreActivity;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/vkontakte/android/StoreActivity;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    return-object v0
.end method

.method static synthetic access$6(Lcom/vkontakte/android/StoreActivity;)Lcom/vkontakte/android/StoreActivity$StoreAdapter;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/vkontakte/android/StoreActivity;->adapter:Lcom/vkontakte/android/StoreActivity$StoreAdapter;

    return-object v0
.end method

.method static synthetic access$7(Lcom/vkontakte/android/StoreActivity;)Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/vkontakte/android/StoreActivity;->progress:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$8(Lcom/vkontakte/android/StoreActivity;)Lcom/vkontakte/android/ui/ErrorView;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/vkontakte/android/StoreActivity;->error:Lcom/vkontakte/android/ui/ErrorView;

    return-object v0
.end method

.method static synthetic access$9(Lcom/vkontakte/android/StoreActivity;)V
    .locals 0

    .prologue
    .line 218
    invoke-direct {p0}, Lcom/vkontakte/android/StoreActivity;->loadData()V

    return-void
.end method

.method private checkIncompleteTransactions()V
    .locals 3

    .prologue
    .line 393
    new-instance v0, Lcom/vkontakte/android/StoreActivity$7;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/StoreActivity$7;-><init>(Lcom/vkontakte/android/StoreActivity;)V

    .line 434
    .local v0, "serviceConn":Landroid/content/ServiceConnection;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.vending.billing.InAppBillingService.BIND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Lcom/vkontakte/android/StoreActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 435
    return-void
.end method

.method private downloadPack(Lcom/vkontakte/android/data/StickerPack;)V
    .locals 5
    .param p1, "pck"    # Lcom/vkontakte/android/data/StickerPack;

    .prologue
    .line 206
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/vkontakte/android/StickerDownloaderService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 207
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "id"

    iget v2, p1, Lcom/vkontakte/android/data/StickerPack;->id:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 208
    const-string v1, "url"

    const-string v2, "stickers"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/vkontakte/android/StoreActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "content"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p1, Lcom/vkontakte/android/data/StickerPack;->id:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 209
    const-string v1, "title"

    iget-object v2, p1, Lcom/vkontakte/android/data/StickerPack;->title:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 210
    invoke-virtual {p0, v0}, Lcom/vkontakte/android/StoreActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 211
    return-void
.end method

.method private getPrices()V
    .locals 8

    .prologue
    const/16 v7, 0x12c

    const/4 v6, 0x1

    .line 267
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 268
    .local v0, "items":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/vkontakte/android/StoreActivity;->packs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 272
    const-string v3, "vk"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Get prices for "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v3

    if-nez v3, :cond_2

    .line 275
    iget-object v3, p0, Lcom/vkontakte/android/StoreActivity;->list:Landroid/widget/ListView;

    invoke-static {v3, v6, v7}, Lcom/vkontakte/android/Global;->showViewAnimated(Landroid/view/View;ZI)V

    .line 276
    iget-object v3, p0, Lcom/vkontakte/android/StoreActivity;->progress:Landroid/widget/ProgressBar;

    const/4 v4, 0x0

    invoke-static {v3, v4, v7}, Lcom/vkontakte/android/Global;->showViewAnimated(Landroid/view/View;ZI)V

    .line 352
    :goto_1
    return-void

    .line 268
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/data/StickerPack;

    .line 269
    .local v1, "pack":Lcom/vkontakte/android/data/StickerPack;
    iget-object v4, v1, Lcom/vkontakte/android/data/StickerPack;->storeID:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v4, v1, Lcom/vkontakte/android/data/StickerPack;->storeID:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 270
    iget-object v4, v1, Lcom/vkontakte/android/data/StickerPack;->storeID:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 279
    .end local v1    # "pack":Lcom/vkontakte/android/data/StickerPack;
    :cond_2
    new-instance v2, Lcom/vkontakte/android/StoreActivity$6;

    invoke-direct {v2, p0, v0}, Lcom/vkontakte/android/StoreActivity$6;-><init>(Lcom/vkontakte/android/StoreActivity;Ljava/util/HashSet;)V

    .line 351
    .local v2, "serviceConn":Landroid/content/ServiceConnection;
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.android.vending.billing.InAppBillingService.BIND"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3, v2, v6}, Lcom/vkontakte/android/StoreActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    goto :goto_1
.end method

.method private loadData()V
    .locals 2

    .prologue
    .line 219
    new-instance v0, Lcom/vkontakte/android/api/StoreGetInventory;

    invoke-direct {v0}, Lcom/vkontakte/android/api/StoreGetInventory;-><init>()V

    .line 220
    new-instance v1, Lcom/vkontakte/android/StoreActivity$5;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/StoreActivity$5;-><init>(Lcom/vkontakte/android/StoreActivity;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/StoreGetInventory;->setCallback(Lcom/vkontakte/android/api/StoreGetInventory$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 263
    invoke-virtual {v0, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    .line 264
    return-void
.end method

.method private updateList()V
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/vkontakte/android/StoreActivity;->adapter:Lcom/vkontakte/android/StoreActivity$StoreAdapter;

    invoke-virtual {v0}, Lcom/vkontakte/android/StoreActivity$StoreAdapter;->notifyDataSetChanged()V

    .line 215
    iget-object v0, p0, Lcom/vkontakte/android/StoreActivity;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->updateImages()V

    .line 216
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 7
    .param p1, "reqCode"    # I
    .param p2, "resCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x0

    .line 355
    invoke-super {p0, p1, p2, p3}, Lcom/vkontakte/android/VKFragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 356
    const/16 v3, 0x65

    if-ne p1, v3, :cond_3

    .line 357
    const/4 v3, -0x1

    if-ne p2, v3, :cond_3

    .line 358
    if-nez p3, :cond_1

    .line 390
    :cond_0
    :goto_0
    return-void

    .line 359
    :cond_1
    const-string v3, "product"

    invoke-virtual {p3, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 360
    .local v0, "id":I
    iget-object v3, p0, Lcom/vkontakte/android/StoreActivity;->packs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_4

    .line 374
    :goto_1
    invoke-static {}, Lcom/vkontakte/android/data/Stickers;->broadcastUpdate()V

    .line 375
    const-string v3, "message"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 376
    new-instance v3, Lcom/vkontakte/android/VKAlertDialog$Builder;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 377
    const v4, 0x7f080068

    invoke-virtual {v3, v4}, Lcom/vkontakte/android/VKAlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 378
    const-string v4, "message"

    invoke-virtual {p3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 379
    const v4, 0x7f080042

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 380
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 384
    .end local v0    # "id":I
    :cond_3
    const/16 v3, 0x66

    if-ne p1, v3, :cond_0

    .line 385
    iget-object v3, p0, Lcom/vkontakte/android/StoreActivity;->packs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_6

    .line 388
    invoke-direct {p0}, Lcom/vkontakte/android/StoreActivity;->updateList()V

    goto :goto_0

    .line 360
    .restart local v0    # "id":I
    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/data/StickerPack;

    .line 361
    .local v2, "pck":Lcom/vkontakte/android/data/StickerPack;
    iget v4, v2, Lcom/vkontakte/android/data/StickerPack;->id:I

    if-ne v4, v0, :cond_2

    .line 362
    invoke-static {v0}, Lcom/vkontakte/android/data/Stickers;->getPackState(I)I

    move-result v3

    iput v3, v2, Lcom/vkontakte/android/data/StickerPack;->state:I

    .line 363
    iget v3, v2, Lcom/vkontakte/android/data/StickerPack;->state:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_5

    .line 364
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/vkontakte/android/StickerDownloaderService;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 365
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "id"

    iget v4, v2, Lcom/vkontakte/android/data/StickerPack;->id:I

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 366
    const-string v3, "url"

    const-string v4, "stickers"

    invoke-virtual {p0, v4, v5}, Lcom/vkontakte/android/StoreActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "content"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, v2, Lcom/vkontakte/android/data/StickerPack;->id:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 367
    const-string v3, "title"

    iget-object v4, v2, Lcom/vkontakte/android/data/StickerPack;->title:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 368
    invoke-virtual {p0, v1}, Lcom/vkontakte/android/StoreActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 370
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_5
    invoke-direct {p0}, Lcom/vkontakte/android/StoreActivity;->updateList()V

    goto/16 :goto_1

    .line 385
    .end local v0    # "id":I
    .end local v2    # "pck":Lcom/vkontakte/android/data/StickerPack;
    :cond_6
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/data/StickerPack;

    .line 386
    .restart local v2    # "pck":Lcom/vkontakte/android/data/StickerPack;
    iget v4, v2, Lcom/vkontakte/android/data/StickerPack;->id:I

    invoke-static {v4}, Lcom/vkontakte/android/data/Stickers;->getPackState(I)I

    move-result v4

    iput v4, v2, Lcom/vkontakte/android/data/StickerPack;->state:I

    goto :goto_2
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    const/16 v8, 0x8

    const/4 v4, 0x0

    const/high16 v5, 0x42200000    # 40.0f

    const/4 v7, 0x0

    .line 117
    invoke-super {p0, p1}, Lcom/vkontakte/android/VKFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 129
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/vkontakte/android/StoreActivity;->content:Landroid/widget/FrameLayout;

    .line 130
    iget-object v1, p0, Lcom/vkontakte/android/StoreActivity;->content:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/vkontakte/android/StoreActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060019

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 131
    new-instance v1, Landroid/widget/ListView;

    invoke-direct {v1, p0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/vkontakte/android/StoreActivity;->list:Landroid/widget/ListView;

    .line 132
    iget-object v1, p0, Lcom/vkontakte/android/StoreActivity;->list:Landroid/widget/ListView;

    invoke-virtual {v1, v8}, Landroid/widget/ListView;->setVisibility(I)V

    .line 133
    iget-object v1, p0, Lcom/vkontakte/android/StoreActivity;->list:Landroid/widget/ListView;

    new-instance v2, Lcom/vkontakte/android/StoreActivity$StoreAdapter;

    invoke-direct {v2, p0, v7}, Lcom/vkontakte/android/StoreActivity$StoreAdapter;-><init>(Lcom/vkontakte/android/StoreActivity;Lcom/vkontakte/android/StoreActivity$StoreAdapter;)V

    iput-object v2, p0, Lcom/vkontakte/android/StoreActivity;->adapter:Lcom/vkontakte/android/StoreActivity$StoreAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 134
    iget-object v1, p0, Lcom/vkontakte/android/StoreActivity;->list:Landroid/widget/ListView;

    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 135
    iget-object v1, p0, Lcom/vkontakte/android/StoreActivity;->list:Landroid/widget/ListView;

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 136
    iget-object v1, p0, Lcom/vkontakte/android/StoreActivity;->list:Landroid/widget/ListView;

    new-instance v2, Lcom/vkontakte/android/StoreActivity$3;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/StoreActivity$3;-><init>(Lcom/vkontakte/android/StoreActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 157
    iget-object v1, p0, Lcom/vkontakte/android/StoreActivity;->content:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/vkontakte/android/StoreActivity;->list:Landroid/widget/ListView;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 158
    new-instance v1, Landroid/widget/ProgressBar;

    invoke-direct {v1, p0}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/vkontakte/android/StoreActivity;->progress:Landroid/widget/ProgressBar;

    .line 159
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

    .line 160
    const v1, 0x7f03003f

    invoke-static {p0, v1, v7}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/ui/ErrorView;

    iput-object v1, p0, Lcom/vkontakte/android/StoreActivity;->error:Lcom/vkontakte/android/ui/ErrorView;

    .line 161
    iget-object v1, p0, Lcom/vkontakte/android/StoreActivity;->error:Lcom/vkontakte/android/ui/ErrorView;

    invoke-virtual {v1, v8}, Lcom/vkontakte/android/ui/ErrorView;->setVisibility(I)V

    .line 162
    iget-object v1, p0, Lcom/vkontakte/android/StoreActivity;->error:Lcom/vkontakte/android/ui/ErrorView;

    new-instance v2, Lcom/vkontakte/android/StoreActivity$4;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/StoreActivity$4;-><init>(Lcom/vkontakte/android/StoreActivity;)V

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/ui/ErrorView;->setOnRetryListener(Landroid/view/View$OnClickListener;)V

    .line 171
    iget-object v1, p0, Lcom/vkontakte/android/StoreActivity;->content:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/vkontakte/android/StoreActivity;->error:Lcom/vkontakte/android/ui/ErrorView;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 172
    iget-object v1, p0, Lcom/vkontakte/android/StoreActivity;->content:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/StoreActivity;->setContentView(Landroid/view/View;)V

    .line 174
    new-instance v1, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    new-instance v2, Lcom/vkontakte/android/StoreActivity$StickerThumbsAdapter;

    invoke-direct {v2, p0, v7}, Lcom/vkontakte/android/StoreActivity$StickerThumbsAdapter;-><init>(Lcom/vkontakte/android/StoreActivity;Lcom/vkontakte/android/StoreActivity$StickerThumbsAdapter;)V

    iget-object v3, p0, Lcom/vkontakte/android/StoreActivity;->list:Landroid/widget/ListView;

    invoke-direct {v1, v2, v3, v7}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;-><init>(Lcom/vkontakte/android/ui/ListImageLoaderAdapter;Landroid/widget/AdapterView;Lcom/vkontakte/android/ui/ListImageLoaderWrapper$Listener;)V

    iput-object v1, p0, Lcom/vkontakte/android/StoreActivity;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    .line 176
    invoke-direct {p0}, Lcom/vkontakte/android/StoreActivity;->loadData()V

    .line 178
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 179
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.vkontakte.android.STICKERS_UPDATED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 180
    const-string v1, "com.vkontakte.android.STICKERS_DOWNLOAD_PROGRESS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 181
    iget-object v1, p0, Lcom/vkontakte/android/StoreActivity;->receiver:Landroid/content/BroadcastReceiver;

    const-string v2, "com.vkontakte.android.permission.ACCESS_DATA"

    invoke-virtual {p0, v1, v0, v2, v7}, Lcom/vkontakte/android/StoreActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 183
    invoke-direct {p0}, Lcom/vkontakte/android/StoreActivity;->checkIncompleteTransactions()V

    .line 184
    return-void
.end method

.method public onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Lcom/actionbarsherlock/view/Menu;

    .prologue
    .line 194
    invoke-virtual {p0}, Lcom/vkontakte/android/StoreActivity;->getSupportMenuInflater()Lcom/actionbarsherlock/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0e000b

    invoke-virtual {v0, v1, p1}, Lcom/actionbarsherlock/view/MenuInflater;->inflate(ILcom/actionbarsherlock/view/Menu;)V

    .line 195
    const/4 v0, 0x1

    return v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 187
    invoke-super {p0}, Lcom/vkontakte/android/VKFragmentActivity;->onDestroy()V

    .line 189
    :try_start_0
    iget-object v0, p0, Lcom/vkontakte/android/StoreActivity;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/StoreActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    :goto_0
    return-void

    .line 190
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Lcom/actionbarsherlock/view/MenuItem;

    .prologue
    .line 199
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f090222

    if-ne v0, v1, :cond_0

    .line 200
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/vkontakte/android/StickerManagerActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/StoreActivity;->startActivity(Landroid/content/Intent;)V

    .line 202
    :cond_0
    invoke-super {p0, p1}, Lcom/vkontakte/android/VKFragmentActivity;->onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v0

    return v0
.end method
