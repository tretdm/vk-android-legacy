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
    .line 437
    iput-object p1, p0, Lcom/vkontakte/android/StoreActivity$StoreAdapter;->this$0:Lcom/vkontakte/android/StoreActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkontakte/android/StoreActivity;Lcom/vkontakte/android/StoreActivity$StoreAdapter;)V
    .locals 0

    .prologue
    .line 437
    invoke-direct {p0, p1}, Lcom/vkontakte/android/StoreActivity$StoreAdapter;-><init>(Lcom/vkontakte/android/StoreActivity;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 440
    iget-object v0, p0, Lcom/vkontakte/android/StoreActivity$StoreAdapter;->this$0:Lcom/vkontakte/android/StoreActivity;

    invoke-static {v0}, Lcom/vkontakte/android/StoreActivity;->access$0(Lcom/vkontakte/android/StoreActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 445
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 450
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

    const v9, 0x7f0901ae

    const/4 v8, 0x0

    const v7, 0x7f0901ad

    const/16 v6, 0x8

    .line 455
    if-nez p2, :cond_0

    .line 456
    iget-object v3, p0, Lcom/vkontakte/android/StoreActivity$StoreAdapter;->this$0:Lcom/vkontakte/android/StoreActivity;

    const v4, 0x7f03008c

    invoke-static {v3, v4, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 457
    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/vkontakte/android/StoreActivity$StoreAdapter;->this$0:Lcom/vkontakte/android/StoreActivity;

    invoke-static {v4}, Lcom/vkontakte/android/StoreActivity;->access$4(Lcom/vkontakte/android/StoreActivity;)Landroid/view/View$OnClickListener;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 458
    const v3, 0x7f0901b0

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/vkontakte/android/StoreActivity$StoreAdapter;->this$0:Lcom/vkontakte/android/StoreActivity;

    invoke-static {v4}, Lcom/vkontakte/android/StoreActivity;->access$4(Lcom/vkontakte/android/StoreActivity;)Landroid/view/View$OnClickListener;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 459
    new-instance v2, Lcom/vkontakte/android/ui/CircularProgressDrawable;

    invoke-direct {v2}, Lcom/vkontakte/android/ui/CircularProgressDrawable;-><init>()V

    .line 460
    .local v2, "pd":Lcom/vkontakte/android/ui/CircularProgressDrawable;
    const v3, -0xf0f10

    const v4, -0x404041

    invoke-virtual {v2, v3, v4}, Lcom/vkontakte/android/ui/CircularProgressDrawable;->setColors(II)V

    .line 461
    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/ui/CircularProgressDrawable;->setThickness(I)V

    .line 462
    invoke-virtual {v2, v8}, Lcom/vkontakte/android/ui/CircularProgressDrawable;->setPad(Z)V

    .line 463
    invoke-virtual {v2, v8}, Lcom/vkontakte/android/ui/CircularProgressDrawable;->setDimBackground(Z)V

    .line 464
    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ProgressBar;

    invoke-virtual {v3, v2}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 467
    .end local v2    # "pd":Lcom/vkontakte/android/ui/CircularProgressDrawable;
    :cond_0
    iget-object v3, p0, Lcom/vkontakte/android/StoreActivity$StoreAdapter;->this$0:Lcom/vkontakte/android/StoreActivity;

    invoke-static {v3}, Lcom/vkontakte/android/StoreActivity;->access$0(Lcom/vkontakte/android/StoreActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/data/StickerPack;

    .line 468
    .local v1, "pack":Lcom/vkontakte/android/data/StickerPack;
    const v3, 0x7f0901b3

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, v1, Lcom/vkontakte/android/data/StickerPack;->title:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 469
    iget-boolean v3, v1, Lcom/vkontakte/android/data/StickerPack;->isNew:Z

    if-eqz v3, :cond_2

    .line 470
    iget-object v3, p0, Lcom/vkontakte/android/StoreActivity$StoreAdapter;->this$0:Lcom/vkontakte/android/StoreActivity;

    invoke-virtual {v3}, Lcom/vkontakte/android/StoreActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0201da

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 471
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    const/high16 v3, 0x40e00000    # 7.0f

    invoke-static {v3}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v3

    const/high16 v4, 0x40e00000    # 7.0f

    invoke-static {v4}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v4

    invoke-virtual {v0, v8, v8, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 472
    const v3, 0x7f0901b3

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v0, v5, v5, v5}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 473
    const v3, 0x7f0901b3

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const/high16 v4, 0x41000000    # 8.0f

    invoke-static {v4}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 478
    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    :goto_0
    const v3, 0x7f0901b4

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, v1, Lcom/vkontakte/android/data/StickerPack;->author:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 479
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

    .line 480
    :cond_1
    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 481
    const v3, 0x7f0901af

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 482
    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    .line 483
    const v3, 0x7f0901b0

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 484
    sget-object v3, Lcom/vkontakte/android/StickerDownloaderService;->currentInstance:Lcom/vkontakte/android/StickerDownloaderService;

    iget v4, v1, Lcom/vkontakte/android/data/StickerPack;->id:I

    invoke-virtual {v3, v4}, Lcom/vkontakte/android/StickerDownloaderService;->isInQueue(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 485
    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ProgressBar;

    invoke-virtual {v3, v8}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 519
    :goto_1
    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 520
    const v3, 0x7f0901b0

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 522
    iget-object v3, p0, Lcom/vkontakte/android/StoreActivity$StoreAdapter;->this$0:Lcom/vkontakte/android/StoreActivity;

    invoke-static {v3}, Lcom/vkontakte/android/StoreActivity;->access$5(Lcom/vkontakte/android/StoreActivity;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    move-result-object v3

    iget-object v4, v1, Lcom/vkontakte/android/data/StickerPack;->thumb:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->isAlreadyLoaded(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 523
    const v3, 0x7f0901b2

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/vkontakte/android/StoreActivity$StoreAdapter;->this$0:Lcom/vkontakte/android/StoreActivity;

    invoke-static {v4}, Lcom/vkontakte/android/StoreActivity;->access$5(Lcom/vkontakte/android/StoreActivity;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    move-result-object v4

    iget-object v5, v1, Lcom/vkontakte/android/data/StickerPack;->thumb:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 527
    :goto_2
    invoke-virtual {p0}, Lcom/vkontakte/android/StoreActivity$StoreAdapter;->getCount()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_c

    .line 528
    const v3, 0x7f0200ab

    invoke-virtual {p2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 537
    :goto_3
    return-object p2

    .line 475
    :cond_2
    const v3, 0x7f0901b3

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v5, v5, v5, v5}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 487
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

    .line 488
    :cond_4
    iget v3, v1, Lcom/vkontakte/android/data/StickerPack;->state:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_5

    .line 489
    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 490
    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 491
    const v3, 0x7f0901af

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    .line 492
    const v3, 0x7f0901b0

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 493
    :cond_5
    iget v3, v1, Lcom/vkontakte/android/data/StickerPack;->state:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_6

    iget v3, v1, Lcom/vkontakte/android/data/StickerPack;->state:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_7

    .line 494
    :cond_6
    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f0802ea

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 495
    const v3, 0x7f0901af

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 496
    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 497
    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    .line 498
    const v3, 0x7f0901b0

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 499
    :cond_7
    iget v3, v1, Lcom/vkontakte/android/data/StickerPack;->state:I

    if-eqz v3, :cond_8

    iget v3, v1, Lcom/vkontakte/android/data/StickerPack;->state:I

    const/4 v4, 0x7

    if-eq v3, v4, :cond_8

    .line 500
    const v3, 0x7f0901af

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 501
    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 502
    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 503
    const v3, 0x7f0901b0

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 505
    :cond_8
    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, v1, Lcom/vkontakte/android/data/StickerPack;->price:Ljava/lang/String;

    if-eqz v4, :cond_9

    iget-object v4, v1, Lcom/vkontakte/android/data/StickerPack;->price:Ljava/lang/String;

    :goto_4
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 506
    const v3, 0x7f0901af

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 507
    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 508
    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    .line 509
    const v3, 0x7f0901b0

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 510
    iget v3, v1, Lcom/vkontakte/android/data/StickerPack;->state:I

    const/4 v4, 0x7

    if-ne v3, v4, :cond_a

    .line 511
    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f080351

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 512
    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/view/View;->setEnabled(Z)V

    .line 513
    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto/16 :goto_1

    .line 505
    :cond_9
    iget-object v4, p0, Lcom/vkontakte/android/StoreActivity$StoreAdapter;->this$0:Lcom/vkontakte/android/StoreActivity;

    const v5, 0x7f080335

    invoke-virtual {v4, v5}, Lcom/vkontakte/android/StoreActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_4

    .line 515
    :cond_a
    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 516
    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/16 v4, 0xff

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto/16 :goto_1

    .line 525
    :cond_b
    const v3, 0x7f0901b2

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v4, v8}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_2

    .line 529
    :cond_c
    if-nez p1, :cond_d

    .line 530
    const v3, 0x7f0200b1

    invoke-virtual {p2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_3

    .line 531
    :cond_d
    iget-object v3, p0, Lcom/vkontakte/android/StoreActivity$StoreAdapter;->this$0:Lcom/vkontakte/android/StoreActivity;

    invoke-static {v3}, Lcom/vkontakte/android/StoreActivity;->access$0(Lcom/vkontakte/android/StoreActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne p1, v3, :cond_e

    .line 532
    const v3, 0x7f0200ad

    invoke-virtual {p2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_3

    .line 534
    :cond_e
    const v3, 0x7f0200af

    invoke-virtual {p2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_3
.end method
