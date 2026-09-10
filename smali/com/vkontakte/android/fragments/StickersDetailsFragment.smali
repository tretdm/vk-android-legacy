.class public Lcom/vkontakte/android/fragments/StickersDetailsFragment;
.super Landroid/app/DialogFragment;
.source "StickersDetailsFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/fragments/StickersDetailsFragment$FixedSpeedScroller;,
        Lcom/vkontakte/android/fragments/StickersDetailsFragment$SlidePagerAdapter;
    }
.end annotation


# instance fields
.field private autoscroller:Ljava/lang/Runnable;

.field private closeAfterDownload:Z

.field private id:I

.field private price:Ljava/lang/String;

.field private receiver:Landroid/content/BroadcastReceiver;

.field private scroller:Lcom/vkontakte/android/fragments/StickersDetailsFragment$FixedSpeedScroller;

.field private slideBitmaps:[Landroid/graphics/Bitmap;

.field private slides:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private storeID:Ljava/lang/String;

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 52
    new-instance v0, Lcom/vkontakte/android/fragments/StickersDetailsFragment$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/fragments/StickersDetailsFragment$1;-><init>(Lcom/vkontakte/android/fragments/StickersDetailsFragment;)V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/StickersDetailsFragment;->receiver:Landroid/content/BroadcastReceiver;

    .line 64
    new-instance v0, Lcom/vkontakte/android/fragments/StickersDetailsFragment$2;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/fragments/StickersDetailsFragment$2;-><init>(Lcom/vkontakte/android/fragments/StickersDetailsFragment;)V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/StickersDetailsFragment;->autoscroller:Ljava/lang/Runnable;

    .line 76
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkontakte/android/fragments/StickersDetailsFragment;->closeAfterDownload:Z

    .line 374
    return-void
.end method

.method static synthetic access$000(Lcom/vkontakte/android/fragments/StickersDetailsFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/StickersDetailsFragment;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/StickersDetailsFragment;->updateState()V

    return-void
.end method

.method static synthetic access$100(Lcom/vkontakte/android/fragments/StickersDetailsFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/StickersDetailsFragment;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/vkontakte/android/fragments/StickersDetailsFragment;->view:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/vkontakte/android/fragments/StickersDetailsFragment;)[Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/StickersDetailsFragment;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/vkontakte/android/fragments/StickersDetailsFragment;->slideBitmaps:[Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$200(Lcom/vkontakte/android/fragments/StickersDetailsFragment;)Lcom/vkontakte/android/fragments/StickersDetailsFragment$FixedSpeedScroller;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/StickersDetailsFragment;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/vkontakte/android/fragments/StickersDetailsFragment;->scroller:Lcom/vkontakte/android/fragments/StickersDetailsFragment$FixedSpeedScroller;

    return-object v0
.end method

.method static synthetic access$300(Lcom/vkontakte/android/fragments/StickersDetailsFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/StickersDetailsFragment;

    .prologue
    .line 46
    iget v0, p0, Lcom/vkontakte/android/fragments/StickersDetailsFragment;->id:I

    return v0
.end method

.method static synthetic access$400(Lcom/vkontakte/android/fragments/StickersDetailsFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/StickersDetailsFragment;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/vkontakte/android/fragments/StickersDetailsFragment;->storeID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/vkontakte/android/fragments/StickersDetailsFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/StickersDetailsFragment;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/StickersDetailsFragment;->downloadPack()V

    return-void
.end method

.method static synthetic access$602(Lcom/vkontakte/android/fragments/StickersDetailsFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/StickersDetailsFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/vkontakte/android/fragments/StickersDetailsFragment;->closeAfterDownload:Z

    return p1
.end method

.method static synthetic access$800(Lcom/vkontakte/android/fragments/StickersDetailsFragment;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/StickersDetailsFragment;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/vkontakte/android/fragments/StickersDetailsFragment;->autoscroller:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$900(Lcom/vkontakte/android/fragments/StickersDetailsFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/StickersDetailsFragment;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/vkontakte/android/fragments/StickersDetailsFragment;->slides:Ljava/util/ArrayList;

    return-object v0
.end method

.method private downloadPack()V
    .locals 5

    .prologue
    .line 222
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/StickersDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/vkontakte/android/StickerDownloaderService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 223
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "id"

    iget v2, p0, Lcom/vkontakte/android/fragments/StickersDetailsFragment;->id:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 224
    const-string v1, "url"

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/StickersDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "stickers"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "content"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/vkontakte/android/fragments/StickersDetailsFragment;->id:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 225
    const-string v1, "title"

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/StickersDetailsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "title"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 226
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/StickersDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 227
    return-void
.end method

.method private loadImages()V
    .locals 2

    .prologue
    .line 237
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/vkontakte/android/fragments/StickersDetailsFragment$5;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/fragments/StickersDetailsFragment$5;-><init>(Lcom/vkontakte/android/fragments/StickersDetailsFragment;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 271
    return-void
.end method

.method private updateState()V
    .locals 8

    .prologue
    const v7, 0x7f08018f

    const v6, 0x7f08018e

    const/4 v5, 0x0

    const v4, 0x7f08018d

    const/16 v3, 0x8

    .line 280
    iget-object v1, p0, Lcom/vkontakte/android/fragments/StickersDetailsFragment;->view:Landroid/view/View;

    if-nez v1, :cond_1

    .line 331
    :cond_0
    :goto_0
    return-void

    .line 281
    :cond_1
    iget v1, p0, Lcom/vkontakte/android/fragments/StickersDetailsFragment;->id:I

    invoke-static {v1}, Lcom/vkontakte/android/data/Stickers;->getPackState(I)I

    move-result v0

    .line 282
    .local v0, "state":I
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/StickersDetailsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "unavailable"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x7

    .line 284
    :cond_2
    sget-object v1, Lcom/vkontakte/android/StickerDownloaderService;->currentInstance:Lcom/vkontakte/android/StickerDownloaderService;

    if-eqz v1, :cond_5

    sget-object v1, Lcom/vkontakte/android/StickerDownloaderService;->currentInstance:Lcom/vkontakte/android/StickerDownloaderService;

    invoke-virtual {v1}, Lcom/vkontakte/android/StickerDownloaderService;->getCurrentPackId()I

    move-result v1

    iget v2, p0, Lcom/vkontakte/android/fragments/StickersDetailsFragment;->id:I

    if-eq v1, v2, :cond_3

    sget-object v1, Lcom/vkontakte/android/StickerDownloaderService;->currentInstance:Lcom/vkontakte/android/StickerDownloaderService;

    iget v2, p0, Lcom/vkontakte/android/fragments/StickersDetailsFragment;->id:I

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/StickerDownloaderService;->isInQueue(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 285
    :cond_3
    iget-object v1, p0, Lcom/vkontakte/android/fragments/StickersDetailsFragment;->view:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 286
    iget-object v1, p0, Lcom/vkontakte/android/fragments/StickersDetailsFragment;->view:Landroid/view/View;

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 287
    iget-object v1, p0, Lcom/vkontakte/android/fragments/StickersDetailsFragment;->view:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 288
    iget-object v1, p0, Lcom/vkontakte/android/fragments/StickersDetailsFragment;->view:Landroid/view/View;

    const v2, 0x7f080190

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 289
    sget-object v1, Lcom/vkontakte/android/StickerDownloaderService;->currentInstance:Lcom/vkontakte/android/StickerDownloaderService;

    iget v2, p0, Lcom/vkontakte/android/fragments/StickersDetailsFragment;->id:I

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/StickerDownloaderService;->isInQueue(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 290
    iget-object v1, p0, Lcom/vkontakte/android/fragments/StickersDetailsFragment;->view:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    invoke-virtual {v1, v5}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 324
    :goto_1
    iget-boolean v1, p0, Lcom/vkontakte/android/fragments/StickersDetailsFragment;->closeAfterDownload:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 325
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/StickersDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/vkontakte/android/fragments/StickersDetailsFragment$6;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/fragments/StickersDetailsFragment$6;-><init>(Lcom/vkontakte/android/fragments/StickersDetailsFragment;)V

    const-wide/16 v3, 0x1f4

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 292
    :cond_4
    iget-object v1, p0, Lcom/vkontakte/android/fragments/StickersDetailsFragment;->view:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    sget-object v2, Lcom/vkontakte/android/StickerDownloaderService;->currentInstance:Lcom/vkontakte/android/StickerDownloaderService;

    invoke-virtual {v2}, Lcom/vkontakte/android/StickerDownloaderService;->getCurrentProgress()F

    move-result v2

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_1

    .line 293
    :cond_5
    const/4 v1, 0x4

    if-ne v0, v1, :cond_6

    .line 294
    iget-object v1, p0, Lcom/vkontakte/android/fragments/StickersDetailsFragment;->view:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 295
    iget-object v1, p0, Lcom/vkontakte/android/fragments/StickersDetailsFragment;->view:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 296
    iget-object v1, p0, Lcom/vkontakte/android/fragments/StickersDetailsFragment;->view:Landroid/view/View;

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 297
    iget-object v1, p0, Lcom/vkontakte/android/fragments/StickersDetailsFragment;->view:Landroid/view/View;

    const v2, 0x7f080190

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 298
    :cond_6
    const/4 v1, 0x3

    if-eq v0, v1, :cond_7

    const/4 v1, 0x5

    if-ne v0, v1, :cond_8

    .line 299
    :cond_7
    iget-object v1, p0, Lcom/vkontakte/android/fragments/StickersDetailsFragment;->view:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0d00b5

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 300
    iget-object v1, p0, Lcom/vkontakte/android/fragments/StickersDetailsFragment;->view:Landroid/view/View;

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 301
    iget-object v1, p0, Lcom/vkontakte/android/fragments/StickersDetailsFragment;->view:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 302
    iget-object v1, p0, Lcom/vkontakte/android/fragments/StickersDetailsFragment;->view:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 303
    iget-object v1, p0, Lcom/vkontakte/android/fragments/StickersDetailsFragment;->view:Landroid/view/View;

    const v2, 0x7f080190

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 304
    :cond_8
    if-eqz v0, :cond_9

    const/4 v1, 0x7

    if-eq v0, v1, :cond_9

    .line 305
    iget-object v1, p0, Lcom/vkontakte/android/fragments/StickersDetailsFragment;->view:Landroid/view/View;

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 306
    iget-object v1, p0, Lcom/vkontakte/android/fragments/StickersDetailsFragment;->view:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 307
    iget-object v1, p0, Lcom/vkontakte/android/fragments/StickersDetailsFragment;->view:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 308
    iget-object v1, p0, Lcom/vkontakte/android/fragments/StickersDetailsFragment;->view:Landroid/view/View;

    const v2, 0x7f080190

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 310
    :cond_9
    iget-object v1, p0, Lcom/vkontakte/android/fragments/StickersDetailsFragment;->view:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/vkontakte/android/fragments/StickersDetailsFragment;->price:Ljava/lang/String;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/vkontakte/android/fragments/StickersDetailsFragment;->price:Ljava/lang/String;

    :goto_2
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 311
    iget-object v1, p0, Lcom/vkontakte/android/fragments/StickersDetailsFragment;->view:Landroid/view/View;

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 312
    iget-object v1, p0, Lcom/vkontakte/android/fragments/StickersDetailsFragment;->view:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 313
    iget-object v1, p0, Lcom/vkontakte/android/fragments/StickersDetailsFragment;->view:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 314
    iget-object v1, p0, Lcom/vkontakte/android/fragments/StickersDetailsFragment;->view:Landroid/view/View;

    const v2, 0x7f080190

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 315
    const/4 v1, 0x7

    if-ne v0, v1, :cond_b

    .line 316
    iget-object v1, p0, Lcom/vkontakte/android/fragments/StickersDetailsFragment;->view:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0d0339

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 317
    iget-object v1, p0, Lcom/vkontakte/android/fragments/StickersDetailsFragment;->view:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 318
    iget-object v1, p0, Lcom/vkontakte/android/fragments/StickersDetailsFragment;->view:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto/16 :goto_1

    .line 310
    :cond_a
    const v2, 0x7f0d0216

    invoke-virtual {p0, v2}, Lcom/vkontakte/android/fragments/StickersDetailsFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 320
    :cond_b
    iget-object v1, p0, Lcom/vkontakte/android/fragments/StickersDetailsFragment;->view:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 321
    iget-object v1, p0, Lcom/vkontakte/android/fragments/StickersDetailsFragment;->view:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/16 v2, 0xff

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto/16 :goto_1
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "reqCode"    # I
    .param p2, "resCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 334
    if-nez p3, :cond_1

    .line 349
    :cond_0
    :goto_0
    return-void

    .line 335
    :cond_1
    const/16 v2, 0x65

    if-ne p1, v2, :cond_0

    .line 336
    const/4 v2, -0x1

    if-ne p2, v2, :cond_0

    .line 337
    const-string v2, "product"

    const/4 v3, 0x0

    invoke-virtual {p3, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 338
    .local v0, "id":I
    iget v2, p0, Lcom/vkontakte/android/fragments/StickersDetailsFragment;->id:I

    if-ne v2, v0, :cond_0

    .line 339
    invoke-static {v0}, Lcom/vkontakte/android/data/Stickers;->getPackState(I)I

    move-result v1

    .line 340
    .local v1, "state":I
    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    .line 341
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/StickersDetailsFragment;->downloadPack()V

    .line 343
    :cond_2
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/vkontakte/android/fragments/StickersDetailsFragment;->closeAfterDownload:Z

    .line 344
    invoke-static {}, Lcom/vkontakte/android/data/Stickers;->broadcastUpdate()V

    .line 345
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/StickersDetailsFragment;->updateState()V

    goto :goto_0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 5
    .param p1, "act"    # Landroid/app/Activity;

    .prologue
    .line 79
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onAttach(Landroid/app/Activity;)V

    .line 80
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 81
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.vkontakte.android.STICKERS_UPDATED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 82
    const-string v1, "com.vkontakte.android.STICKERS_DOWNLOAD_PROGRESS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 83
    sget-object v1, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/vkontakte/android/fragments/StickersDetailsFragment;->receiver:Landroid/content/BroadcastReceiver;

    const-string v3, "com.vkontakte.android.permission.ACCESS_DATA"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 84
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 94
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 95
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v2}, Lcom/vkontakte/android/fragments/StickersDetailsFragment;->setStyle(II)V

    .line 96
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/StickersDetailsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "id"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/vkontakte/android/fragments/StickersDetailsFragment;->id:I

    .line 97
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/StickersDetailsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "price"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/fragments/StickersDetailsFragment;->price:Ljava/lang/String;

    .line 98
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/StickersDetailsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "storeID"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/fragments/StickersDetailsFragment;->storeID:Ljava/lang/String;

    .line 99
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/StickersDetailsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "slides"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/fragments/StickersDetailsFragment;->slides:Ljava/util/ArrayList;

    .line 100
    iget-object v0, p0, Lcom/vkontakte/android/fragments/StickersDetailsFragment;->slides:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/vkontakte/android/fragments/StickersDetailsFragment;->slideBitmaps:[Landroid/graphics/Bitmap;

    .line 101
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 14
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 104
    const v11, 0x7f03007c

    const/4 v12, 0x0

    invoke-virtual {p1, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v11

    iput-object v11, p0, Lcom/vkontakte/android/fragments/StickersDetailsFragment;->view:Landroid/view/View;

    .line 106
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/StickersDetailsFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v11

    if-eqz v11, :cond_0

    .line 107
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/StickersDetailsFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v11

    const v12, 0x7f0e001e

    invoke-virtual {v11, v12}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 110
    :cond_0
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/StickersDetailsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v11

    const-string v12, "title"

    invoke-virtual {v11, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 111
    .local v10, "title":Ljava/lang/String;
    iget-object v11, p0, Lcom/vkontakte/android/fragments/StickersDetailsFragment;->view:Landroid/view/View;

    const v12, 0x7f080026

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    invoke-virtual {v11, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    iget-object v11, p0, Lcom/vkontakte/android/fragments/StickersDetailsFragment;->view:Landroid/view/View;

    const v12, 0x7f08018c

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/StickersDetailsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v12

    const-string v13, "author"

    invoke-virtual {v12, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    iget-object v11, p0, Lcom/vkontakte/android/fragments/StickersDetailsFragment;->view:Landroid/view/View;

    const v12, 0x7f080191

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/StickersDetailsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v12

    const-string v13, "description"

    invoke-virtual {v12, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    new-instance v9, Lcom/vkontakte/android/ui/CircularProgressDrawable;

    invoke-direct {v9}, Lcom/vkontakte/android/ui/CircularProgressDrawable;-><init>()V

    .line 116
    .local v9, "pd":Lcom/vkontakte/android/ui/CircularProgressDrawable;
    const v11, -0xf0f10

    const v12, -0x404041

    invoke-virtual {v9, v11, v12}, Lcom/vkontakte/android/ui/CircularProgressDrawable;->setColors(II)V

    .line 117
    const/4 v11, 0x2

    invoke-virtual {v9, v11}, Lcom/vkontakte/android/ui/CircularProgressDrawable;->setThickness(I)V

    .line 118
    const/4 v11, 0x0

    invoke-virtual {v9, v11}, Lcom/vkontakte/android/ui/CircularProgressDrawable;->setPad(Z)V

    .line 119
    const/4 v11, 0x0

    invoke-virtual {v9, v11}, Lcom/vkontakte/android/ui/CircularProgressDrawable;->setDimBackground(Z)V

    .line 120
    iget-object v11, p0, Lcom/vkontakte/android/fragments/StickersDetailsFragment;->view:Landroid/view/View;

    const v12, 0x7f08018e

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ProgressBar;

    invoke-virtual {v11, v9}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 122
    new-instance v0, Lcom/vkontakte/android/fragments/StickersDetailsFragment$3;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/fragments/StickersDetailsFragment$3;-><init>(Lcom/vkontakte/android/fragments/StickersDetailsFragment;)V

    .line 155
    .local v0, "btnClickListener":Landroid/view/View$OnClickListener;
    iget-object v11, p0, Lcom/vkontakte/android/fragments/StickersDetailsFragment;->view:Landroid/view/View;

    const v12, 0x7f08018d

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v11, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    iget-object v11, p0, Lcom/vkontakte/android/fragments/StickersDetailsFragment;->view:Landroid/view/View;

    const v12, 0x7f080190

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v11, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    iget-object v11, p0, Lcom/vkontakte/android/fragments/StickersDetailsFragment;->view:Landroid/view/View;

    const v12, 0x7f080189

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/support/v4/view/ViewPager;

    .line 159
    .local v7, "pager":Landroid/support/v4/view/ViewPager;
    new-instance v11, Lcom/vkontakte/android/fragments/StickersDetailsFragment$SlidePagerAdapter;

    const/4 v12, 0x0

    invoke-direct {v11, p0, v12}, Lcom/vkontakte/android/fragments/StickersDetailsFragment$SlidePagerAdapter;-><init>(Lcom/vkontakte/android/fragments/StickersDetailsFragment;Lcom/vkontakte/android/fragments/StickersDetailsFragment$1;)V

    invoke-virtual {v7, v11}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 160
    iget-object v11, p0, Lcom/vkontakte/android/fragments/StickersDetailsFragment;->view:Landroid/view/View;

    const v12, 0x7f08018a

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 161
    .local v3, "dots":Landroid/widget/LinearLayout;
    invoke-virtual {v7}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v11

    invoke-virtual {v11}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v8

    .line 162
    .local v8, "pages":I
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v11, 0x40e00000    # 7.0f

    invoke-static {v11}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v11

    const/high16 v12, 0x40e00000    # 7.0f

    invoke-static {v12}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v12

    invoke-direct {v5, v11, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 163
    .local v5, "lp":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v11, 0x40a00000    # 5.0f

    invoke-static {v11}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v11

    iput v11, v5, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    iput v11, v5, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 164
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v8, :cond_2

    .line 165
    new-instance v2, Landroid/view/View;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/StickersDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-direct {v2, v11}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 166
    .local v2, "dot":Landroid/view/View;
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/StickersDetailsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0201e2

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 167
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    new-instance v11, Landroid/graphics/ColorMatrixColorFilter;

    const/16 v12, 0x14

    new-array v12, v12, [F

    fill-array-data v12, :array_0

    invoke-direct {v11, v12}, Landroid/graphics/ColorMatrixColorFilter;-><init>([F)V

    invoke-virtual {v1, v11}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 171
    invoke-virtual {v2, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 172
    if-nez v4, :cond_1

    const/4 v11, 0x1

    :goto_1
    invoke-virtual {v2, v11}, Landroid/view/View;->setSelected(Z)V

    .line 173
    invoke-virtual {v3, v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 164
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 172
    :cond_1
    const/4 v11, 0x0

    goto :goto_1

    .line 176
    .end local v1    # "d":Landroid/graphics/drawable/Drawable;
    .end local v2    # "dot":Landroid/view/View;
    :cond_2
    new-instance v11, Lcom/vkontakte/android/fragments/StickersDetailsFragment$4;

    invoke-direct {v11, p0, v3, v7}, Lcom/vkontakte/android/fragments/StickersDetailsFragment$4;-><init>(Lcom/vkontakte/android/fragments/StickersDetailsFragment;Landroid/widget/LinearLayout;Landroid/support/v4/view/ViewPager;)V

    invoke-virtual {v7, v11}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 201
    iget-object v11, p0, Lcom/vkontakte/android/fragments/StickersDetailsFragment;->autoscroller:Ljava/lang/Runnable;

    const-wide/16 v12, 0x1388

    invoke-virtual {v7, v11, v12, v13}, Landroid/support/v4/view/ViewPager;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 203
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/StickersDetailsFragment;->updateState()V

    .line 204
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/StickersDetailsFragment;->loadImages()V

    .line 207
    :try_start_0
    new-instance v11, Lcom/vkontakte/android/fragments/StickersDetailsFragment$FixedSpeedScroller;

    invoke-virtual {v7}, Landroid/support/v4/view/ViewPager;->getContext()Landroid/content/Context;

    move-result-object v12

    new-instance v13, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v13}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-direct {v11, v12, v13}, Lcom/vkontakte/android/fragments/StickersDetailsFragment$FixedSpeedScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v11, p0, Lcom/vkontakte/android/fragments/StickersDetailsFragment;->scroller:Lcom/vkontakte/android/fragments/StickersDetailsFragment$FixedSpeedScroller;

    .line 209
    const-class v11, Landroid/support/v4/view/ViewPager;

    const-string v12, "mScroller"

    invoke-virtual {v11, v12}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    .line 210
    .local v6, "mScroller":Ljava/lang/reflect/Field;
    const/4 v11, 0x1

    invoke-virtual {v6, v11}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 211
    iget-object v11, p0, Lcom/vkontakte/android/fragments/StickersDetailsFragment;->scroller:Lcom/vkontakte/android/fragments/StickersDetailsFragment$FixedSpeedScroller;

    invoke-virtual {v6, v7, v11}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 215
    .end local v6    # "mScroller":Ljava/lang/reflect/Field;
    :goto_2
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v12, 0xe

    if-ge v11, v12, :cond_3

    .line 216
    iget-object v11, p0, Lcom/vkontakte/android/fragments/StickersDetailsFragment;->view:Landroid/view/View;

    const/4 v12, -0x1

    invoke-virtual {v11, v12}, Landroid/view/View;->setBackgroundColor(I)V

    .line 218
    :cond_3
    iget-object v11, p0, Lcom/vkontakte/android/fragments/StickersDetailsFragment;->view:Landroid/view/View;

    return-object v11

    .line 212
    :catch_0
    move-exception v11

    goto :goto_2

    .line 167
    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 275
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkontakte/android/fragments/StickersDetailsFragment;->view:Landroid/view/View;

    .line 276
    invoke-super {p0}, Landroid/app/DialogFragment;->onDestroyView()V

    .line 277
    return-void
.end method

.method public onDetach()V
    .locals 2

    .prologue
    .line 88
    :try_start_0
    sget-object v0, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/vkontakte/android/fragments/StickersDetailsFragment;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    :goto_0
    invoke-super {p0}, Landroid/app/DialogFragment;->onDetach()V

    .line 91
    return-void

    .line 89
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 230
    invoke-super {p0}, Landroid/app/DialogFragment;->onResume()V

    .line 231
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/StickersDetailsFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 232
    .local v0, "dlg":Landroid/app/Dialog;
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/StickersDetailsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    const/high16 v2, 0x43b40000    # 360.0f

    invoke-static {v2}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 233
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v2, 0x43960000    # 300.0f

    invoke-static {v2}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v2

    const/4 v3, -0x2

    invoke-virtual {v1, v2, v3}, Landroid/view/Window;->setLayout(II)V

    .line 234
    :cond_0
    return-void
.end method
