.class Lcom/vkontakte/android/StoreActivity$StoreAdapter;
.super Landroid/widget/BaseAdapter;
.source "StoreActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/StoreActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StoreAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/StoreActivity;


# direct methods
.method private constructor <init>(Lcom/vkontakte/android/StoreActivity;)V
    .locals 0

    .prologue
    .line 434
    iput-object p1, p0, Lcom/vkontakte/android/StoreActivity$StoreAdapter;->this$0:Lcom/vkontakte/android/StoreActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkontakte/android/StoreActivity;Lcom/vkontakte/android/StoreActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/vkontakte/android/StoreActivity;
    .param p2, "x1"    # Lcom/vkontakte/android/StoreActivity$1;

    .prologue
    .line 434
    invoke-direct {p0, p1}, Lcom/vkontakte/android/StoreActivity$StoreAdapter;-><init>(Lcom/vkontakte/android/StoreActivity;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 437
    iget-object v0, p0, Lcom/vkontakte/android/StoreActivity$StoreAdapter;->this$0:Lcom/vkontakte/android/StoreActivity;

    invoke-static {v0}, Lcom/vkontakte/android/StoreActivity;->access$000(Lcom/vkontakte/android/StoreActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 442
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 447
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .param p1, "position"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v5, 0x0

    const v9, 0x7f08018e

    const/4 v8, 0x0

    const v7, 0x7f08018d

    const/16 v6, 0x8

    .line 452
    if-nez p2, :cond_0

    .line 453
    iget-object v3, p0, Lcom/vkontakte/android/StoreActivity$StoreAdapter;->this$0:Lcom/vkontakte/android/StoreActivity;

    const v4, 0x7f03007d

    invoke-static {v3, v4, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 454
    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/vkontakte/android/StoreActivity$StoreAdapter;->this$0:Lcom/vkontakte/android/StoreActivity;

    invoke-static {v4}, Lcom/vkontakte/android/StoreActivity;->access$1000(Lcom/vkontakte/android/StoreActivity;)Landroid/view/View$OnClickListener;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 455
    const v3, 0x7f080190

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/vkontakte/android/StoreActivity$StoreAdapter;->this$0:Lcom/vkontakte/android/StoreActivity;

    invoke-static {v4}, Lcom/vkontakte/android/StoreActivity;->access$1000(Lcom/vkontakte/android/StoreActivity;)Landroid/view/View$OnClickListener;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 456
    new-instance v2, Lcom/vkontakte/android/ui/CircularProgressDrawable;

    invoke-direct {v2}, Lcom/vkontakte/android/ui/CircularProgressDrawable;-><init>()V

    .line 457
    .local v2, "pd":Lcom/vkontakte/android/ui/CircularProgressDrawable;
    const v3, -0xf0f10

    const v4, -0x404041

    invoke-virtual {v2, v3, v4}, Lcom/vkontakte/android/ui/CircularProgressDrawable;->setColors(II)V

    .line 458
    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/ui/CircularProgressDrawable;->setThickness(I)V

    .line 459
    invoke-virtual {v2, v8}, Lcom/vkontakte/android/ui/CircularProgressDrawable;->setPad(Z)V

    .line 460
    invoke-virtual {v2, v8}, Lcom/vkontakte/android/ui/CircularProgressDrawable;->setDimBackground(Z)V

    .line 461
    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ProgressBar;

    invoke-virtual {v3, v2}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 464
    .end local v2    # "pd":Lcom/vkontakte/android/ui/CircularProgressDrawable;
    :cond_0
    iget-object v3, p0, Lcom/vkontakte/android/StoreActivity$StoreAdapter;->this$0:Lcom/vkontakte/android/StoreActivity;

    invoke-static {v3}, Lcom/vkontakte/android/StoreActivity;->access$000(Lcom/vkontakte/android/StoreActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/data/StickerPack;

    .line 465
    .local v1, "pack":Lcom/vkontakte/android/data/StickerPack;
    const v3, 0x7f080193

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, v1, Lcom/vkontakte/android/data/StickerPack;->title:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 466
    iget-boolean v3, v1, Lcom/vkontakte/android/data/StickerPack;->isNew:Z

    if-eqz v3, :cond_2

    .line 467
    iget-object v3, p0, Lcom/vkontakte/android/StoreActivity$StoreAdapter;->this$0:Lcom/vkontakte/android/StoreActivity;

    invoke-virtual {v3}, Lcom/vkontakte/android/StoreActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f02015a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 468
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    const/high16 v3, 0x40e00000    # 7.0f

    invoke-static {v3}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v3

    const/high16 v4, 0x40e00000    # 7.0f

    invoke-static {v4}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v4

    invoke-virtual {v0, v8, v8, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 469
    const v3, 0x7f080193

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v0, v5, v5, v5}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 470
    const v3, 0x7f080193

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const/high16 v4, 0x41000000    # 8.0f

    invoke-static {v4}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 475
    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    :goto_0
    const v3, 0x7f080194

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, v1, Lcom/vkontakte/android/data/StickerPack;->author:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 476
    sget-object v3, Lcom/vkontakte/android/StickerDownloaderService;->currentInstance:Lcom/vkontakte/android/StickerDownloaderService;

    if-eqz v3, :cond_4

    sget-object v3, Lcom/vkontakte/android/StickerDownloaderService;->currentInstance:Lcom/vkontakte/android/StickerDownloaderService;

    invoke-virtual {v3}, Lcom/vkontakte/android/StickerDownloaderService;->getCurrentPackId()I

    move-result v3

    iget v4, v1, Lcom/vkontakte/android/data/StickerPack;->id:I

    if-eq v3, v4, :cond_1

    sget-object v3, Lcom/vkontakte/android/StickerDownloaderService;->currentInstance:Lcom/vkontakte/android/StickerDownloaderService;

    iget v4, v1, Lcom/vkontakte/android/data/StickerPack;->id:I

    invoke-virtual {v3, v4}, Lcom/vkontakte/android/StickerDownloaderService;->isInQueue(I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 477
    :cond_1
    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 478
    const v3, 0x7f08018f

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 479
    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    .line 480
    const v3, 0x7f080190

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 481
    sget-object v3, Lcom/vkontakte/android/StickerDownloaderService;->currentInstance:Lcom/vkontakte/android/StickerDownloaderService;

    iget v4, v1, Lcom/vkontakte/android/data/StickerPack;->id:I

    invoke-virtual {v3, v4}, Lcom/vkontakte/android/StickerDownloaderService;->isInQueue(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 482
    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ProgressBar;

    invoke-virtual {v3, v8}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 516
    :goto_1
    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 517
    const v3, 0x7f080190

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 519
    iget-object v3, p0, Lcom/vkontakte/android/StoreActivity$StoreAdapter;->this$0:Lcom/vkontakte/android/StoreActivity;

    invoke-static {v3}, Lcom/vkontakte/android/StoreActivity;->access$1100(Lcom/vkontakte/android/StoreActivity;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    move-result-object v3

    iget-object v4, v1, Lcom/vkontakte/android/data/StickerPack;->thumb:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->isAlreadyLoaded(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 520
    const v3, 0x7f080192

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/vkontakte/android/StoreActivity$StoreAdapter;->this$0:Lcom/vkontakte/android/StoreActivity;

    invoke-static {v4}, Lcom/vkontakte/android/StoreActivity;->access$1100(Lcom/vkontakte/android/StoreActivity;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    move-result-object v4

    iget-object v5, v1, Lcom/vkontakte/android/data/StickerPack;->thumb:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 524
    :goto_2
    invoke-virtual {p0}, Lcom/vkontakte/android/StoreActivity$StoreAdapter;->getCount()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_c

    .line 525
    const v3, 0x7f02003d

    invoke-virtual {p2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 534
    :goto_3
    return-object p2

    .line 472
    :cond_2
    const v3, 0x7f080193

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v5, v5, v5, v5}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 484
    :cond_3
    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ProgressBar;

    sget-object v4, Lcom/vkontakte/android/StickerDownloaderService;->currentInstance:Lcom/vkontakte/android/StickerDownloaderService;

    invoke-virtual {v4}, Lcom/vkontakte/android/StickerDownloaderService;->getCurrentProgress()F

    move-result v4

    const/high16 v5, 0x42c80000    # 100.0f

    mul-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_1

    .line 485
    :cond_4
    iget v3, v1, Lcom/vkontakte/android/data/StickerPack;->state:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_5

    .line 486
    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 487
    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 488
    const v3, 0x7f08018f

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    .line 489
    const v3, 0x7f080190

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 490
    :cond_5
    iget v3, v1, Lcom/vkontakte/android/data/StickerPack;->state:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_6

    iget v3, v1, Lcom/vkontakte/android/data/StickerPack;->state:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_7

    .line 491
    :cond_6
    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f0d00b5

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 492
    const v3, 0x7f08018f

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 493
    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 494
    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    .line 495
    const v3, 0x7f080190

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 496
    :cond_7
    iget v3, v1, Lcom/vkontakte/android/data/StickerPack;->state:I

    if-eqz v3, :cond_8

    iget v3, v1, Lcom/vkontakte/android/data/StickerPack;->state:I

    const/4 v4, 0x7

    if-eq v3, v4, :cond_8

    .line 497
    const v3, 0x7f08018f

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 498
    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 499
    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 500
    const v3, 0x7f080190

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 502
    :cond_8
    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, v1, Lcom/vkontakte/android/data/StickerPack;->price:Ljava/lang/String;

    if-eqz v4, :cond_9

    iget-object v4, v1, Lcom/vkontakte/android/data/StickerPack;->price:Ljava/lang/String;

    :goto_4
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 503
    const v3, 0x7f08018f

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 504
    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 505
    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    .line 506
    const v3, 0x7f080190

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 507
    iget v3, v1, Lcom/vkontakte/android/data/StickerPack;->state:I

    const/4 v4, 0x7

    if-ne v3, v4, :cond_a

    .line 508
    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f0d0339

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 509
    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/view/View;->setEnabled(Z)V

    .line 510
    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto/16 :goto_1

    .line 502
    :cond_9
    iget-object v4, p0, Lcom/vkontakte/android/StoreActivity$StoreAdapter;->this$0:Lcom/vkontakte/android/StoreActivity;

    const v5, 0x7f0d0216

    invoke-virtual {v4, v5}, Lcom/vkontakte/android/StoreActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_4

    .line 512
    :cond_a
    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 513
    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/16 v4, 0xff

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto/16 :goto_1

    .line 522
    :cond_b
    const v3, 0x7f080192

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v4, v8}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_2

    .line 526
    :cond_c
    if-nez p1, :cond_d

    .line 527
    const v3, 0x7f020043

    invoke-virtual {p2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_3

    .line 528
    :cond_d
    iget-object v3, p0, Lcom/vkontakte/android/StoreActivity$StoreAdapter;->this$0:Lcom/vkontakte/android/StoreActivity;

    invoke-static {v3}, Lcom/vkontakte/android/StoreActivity;->access$000(Lcom/vkontakte/android/StoreActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne p1, v3, :cond_e

    .line 529
    const v3, 0x7f02003f

    invoke-virtual {p2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_3

    .line 531
    :cond_e
    const v3, 0x7f020041

    invoke-virtual {p2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_3
.end method
