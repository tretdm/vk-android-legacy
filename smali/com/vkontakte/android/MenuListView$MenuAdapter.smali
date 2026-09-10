.class Lcom/vkontakte/android/MenuListView$MenuAdapter;
.super Lcom/vkontakte/android/ui/MultiSectionAdapter;
.source "MenuListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/MenuListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MenuAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/MenuListView;


# direct methods
.method private constructor <init>(Lcom/vkontakte/android/MenuListView;)V
    .locals 0

    .prologue
    .line 410
    iput-object p1, p0, Lcom/vkontakte/android/MenuListView$MenuAdapter;->this$0:Lcom/vkontakte/android/MenuListView;

    invoke-direct {p0}, Lcom/vkontakte/android/ui/MultiSectionAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkontakte/android/MenuListView;Lcom/vkontakte/android/MenuListView$MenuAdapter;)V
    .locals 0

    .prologue
    .line 410
    invoke-direct {p0, p1}, Lcom/vkontakte/android/MenuListView$MenuAdapter;-><init>(Lcom/vkontakte/android/MenuListView;)V

    return-void
.end method


# virtual methods
.method public getExtraViewTypeCount()I
    .locals 1

    .prologue
    .line 651
    const/4 v0, 0x5

    return v0
.end method

.method public getItemCount(I)I
    .locals 3
    .param p1, "section"    # I

    .prologue
    const/4 v2, 0x5

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 599
    packed-switch p1, :pswitch_data_0

    move v0, v1

    .line 613
    :cond_0
    :goto_0
    return v0

    .line 601
    :pswitch_0
    iget-object v0, p0, Lcom/vkontakte/android/MenuListView$MenuAdapter;->this$0:Lcom/vkontakte/android/MenuListView;

    invoke-static {v0}, Lcom/vkontakte/android/MenuListView;->access$7(Lcom/vkontakte/android/MenuListView;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    goto :goto_0

    .line 603
    :pswitch_1
    invoke-static {}, Lcom/vkontakte/android/MenuListView;->access$9()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/vkontakte/android/MenuListView;->reminderIntent:Landroid/content/Intent;

    if-nez v2, :cond_0

    :cond_1
    move v0, v1

    goto :goto_0

    .line 605
    :pswitch_2
    iget-object v0, p0, Lcom/vkontakte/android/MenuListView$MenuAdapter;->this$0:Lcom/vkontakte/android/MenuListView;

    invoke-static {v0}, Lcom/vkontakte/android/MenuListView;->access$1(Lcom/vkontakte/android/MenuListView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0

    .line 607
    :pswitch_3
    iget-object v0, p0, Lcom/vkontakte/android/MenuListView$MenuAdapter;->this$0:Lcom/vkontakte/android/MenuListView;

    invoke-static {v0}, Lcom/vkontakte/android/MenuListView;->access$2(Lcom/vkontakte/android/MenuListView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0

    .line 609
    :pswitch_4
    const/4 v0, 0x3

    goto :goto_0

    .line 611
    :pswitch_5
    iget-object v2, p0, Lcom/vkontakte/android/MenuListView$MenuAdapter;->this$0:Lcom/vkontakte/android/MenuListView;

    invoke-static {v2}, Lcom/vkontakte/android/MenuListView;->access$3(Lcom/vkontakte/android/MenuListView;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 599
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public getItemId(II)J
    .locals 2
    .param p1, "section"    # I
    .param p2, "item"    # I

    .prologue
    .line 619
    packed-switch p1, :pswitch_data_0

    .line 628
    :goto_0
    const-wide/16 v0, 0x0

    :goto_1
    return-wide v0

    .line 621
    :pswitch_0
    const-wide/32 v0, -0x77359400

    goto :goto_1

    .line 623
    :pswitch_1
    :try_start_0
    iget-object v0, p0, Lcom/vkontakte/android/MenuListView$MenuAdapter;->this$0:Lcom/vkontakte/android/MenuListView;

    invoke-static {v0}, Lcom/vkontakte/android/MenuListView;->access$1(Lcom/vkontakte/android/MenuListView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/UserProfile;

    iget v0, v0, Lcom/vkontakte/android/UserProfile;->uid:I

    int-to-long v0, v0

    goto :goto_1

    .line 625
    :pswitch_2
    iget-object v0, p0, Lcom/vkontakte/android/MenuListView$MenuAdapter;->this$0:Lcom/vkontakte/android/MenuListView;

    invoke-static {v0}, Lcom/vkontakte/android/MenuListView;->access$2(Lcom/vkontakte/android/MenuListView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/api/Group;

    iget v0, v0, Lcom/vkontakte/android/api/Group;->id:I
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    neg-int v0, v0

    int-to-long v0, v0

    goto :goto_1

    .line 627
    :catch_0
    move-exception v0

    goto :goto_0

    .line 619
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getItemViewType(II)I
    .locals 2
    .param p1, "section"    # I
    .param p2, "item"    # I

    .prologue
    const/4 v1, 0x5

    const/4 v0, 0x4

    .line 655
    if-nez p1, :cond_2

    .line 656
    if-nez p2, :cond_1

    const/4 v0, 0x2

    .line 662
    :cond_0
    :goto_0
    return v0

    .line 657
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 659
    :cond_2
    if-eq p1, v0, :cond_0

    .line 660
    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    move v0, v1

    goto :goto_0

    .line 661
    :cond_3
    if-ne p1, v1, :cond_4

    const/4 v0, 0x6

    goto :goto_0

    .line 662
    :cond_4
    const/4 v0, 0x3

    goto :goto_0
.end method

.method public getSectionCount()I
    .locals 1

    .prologue
    .line 594
    const/4 v0, 0x6

    return v0
.end method

.method public getSectionTitle(I)Ljava/lang/String;
    .locals 2
    .param p1, "section"    # I

    .prologue
    .line 577
    packed-switch p1, :pswitch_data_0

    .line 589
    const-string v0, ""

    :goto_0
    return-object v0

    .line 579
    :pswitch_0
    const-string v0, ""

    goto :goto_0

    .line 581
    :pswitch_1
    iget-object v0, p0, Lcom/vkontakte/android/MenuListView$MenuAdapter;->this$0:Lcom/vkontakte/android/MenuListView;

    invoke-virtual {v0}, Lcom/vkontakte/android/MenuListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0901d3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 583
    :pswitch_2
    iget-object v0, p0, Lcom/vkontakte/android/MenuListView$MenuAdapter;->this$0:Lcom/vkontakte/android/MenuListView;

    invoke-virtual {v0}, Lcom/vkontakte/android/MenuListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090039

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 585
    :pswitch_3
    iget-object v0, p0, Lcom/vkontakte/android/MenuListView$MenuAdapter;->this$0:Lcom/vkontakte/android/MenuListView;

    invoke-virtual {v0}, Lcom/vkontakte/android/MenuListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090107

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 587
    :pswitch_4
    iget-object v0, p0, Lcom/vkontakte/android/MenuListView$MenuAdapter;->this$0:Lcom/vkontakte/android/MenuListView;

    invoke-virtual {v0}, Lcom/vkontakte/android/MenuListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0901cb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 577
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public getView(IILandroid/view/View;)Landroid/view/View;
    .locals 12
    .param p1, "section"    # I
    .param p2, "item"    # I
    .param p3, "view"    # Landroid/view/View;

    .prologue
    const/16 v7, 0x8

    const v11, 0x7f020091

    const/4 v5, 0x0

    const v10, 0x7f06006f

    const/4 v9, -0x1

    .line 413
    if-nez p1, :cond_8

    .line 414
    if-nez p2, :cond_4

    .line 415
    if-nez p3, :cond_0

    .line 416
    iget-object v6, p0, Lcom/vkontakte/android/MenuListView$MenuAdapter;->this$0:Lcom/vkontakte/android/MenuListView;

    invoke-virtual {v6}, Lcom/vkontakte/android/MenuListView;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f030026

    invoke-static {v6, v7, v5}, Lcom/vkontakte/android/MenuListView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    .line 417
    new-instance v6, Landroid/widget/AbsListView$LayoutParams;

    const/high16 v7, 0x42380000    # 46.0f

    invoke-static {v7}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v7

    invoke-direct {v6, v9, v7}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {p3, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 419
    const v6, 0x7f020092

    invoke-virtual {p3, v6}, Landroid/view/View;->setBackgroundResource(I)V

    .line 420
    invoke-static {p3}, Lcom/vkontakte/android/Global;->setFontOnAll(Landroid/view/View;)V

    .line 422
    :cond_0
    const v6, 0x7f060071

    invoke-virtual {p3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iget-object v7, p0, Lcom/vkontakte/android/MenuListView$MenuAdapter;->this$0:Lcom/vkontakte/android/MenuListView;

    invoke-static {v7}, Lcom/vkontakte/android/MenuListView;->access$4(Lcom/vkontakte/android/MenuListView;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 423
    const v6, 0x7f060070

    invoke-virtual {p3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    const v7, 0x7f0201ce

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 426
    iget-object v6, p0, Lcom/vkontakte/android/MenuListView$MenuAdapter;->this$0:Lcom/vkontakte/android/MenuListView;

    invoke-static {v6}, Lcom/vkontakte/android/MenuListView;->access$5(Lcom/vkontakte/android/MenuListView;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    move-result-object v6

    iget-object v7, p0, Lcom/vkontakte/android/MenuListView$MenuAdapter;->this$0:Lcom/vkontakte/android/MenuListView;

    invoke-static {v7}, Lcom/vkontakte/android/MenuListView;->access$6(Lcom/vkontakte/android/MenuListView;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->isAlreadyLoaded(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 427
    invoke-virtual {p3, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/vkontakte/android/MenuListView$MenuAdapter;->this$0:Lcom/vkontakte/android/MenuListView;

    invoke-static {v7}, Lcom/vkontakte/android/MenuListView;->access$5(Lcom/vkontakte/android/MenuListView;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    move-result-object v7

    iget-object v8, p0, Lcom/vkontakte/android/MenuListView$MenuAdapter;->this$0:Lcom/vkontakte/android/MenuListView;

    invoke-static {v8}, Lcom/vkontakte/android/MenuListView;->access$6(Lcom/vkontakte/android/MenuListView;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_1
    :goto_0
    move-object v5, p3

    .line 572
    :cond_2
    :goto_1
    return-object v5

    .line 429
    :cond_3
    invoke-virtual {p3, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    const v7, 0x7f020206

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 431
    :cond_4
    if-nez p3, :cond_5

    .line 432
    iget-object v6, p0, Lcom/vkontakte/android/MenuListView$MenuAdapter;->this$0:Lcom/vkontakte/android/MenuListView;

    invoke-virtual {v6}, Lcom/vkontakte/android/MenuListView;->getContext()Landroid/content/Context;

    move-result-object v6

    const v8, 0x7f030025

    invoke-static {v6, v8, v5}, Lcom/vkontakte/android/MenuListView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    .line 433
    new-instance v6, Landroid/widget/AbsListView$LayoutParams;

    iget-object v8, p0, Lcom/vkontakte/android/MenuListView$MenuAdapter;->this$0:Lcom/vkontakte/android/MenuListView;

    iget v8, v8, Lcom/vkontakte/android/MenuListView;->itemPadding:I

    add-int/lit8 v8, v8, 0x27

    int-to-float v8, v8

    invoke-static {v8}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v8

    invoke-direct {v6, v9, v8}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {p3, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 435
    invoke-virtual {p3, v11}, Landroid/view/View;->setBackgroundResource(I)V

    .line 436
    invoke-static {p3}, Lcom/vkontakte/android/Global;->setFontOnAll(Landroid/view/View;)V

    .line 438
    :cond_5
    const v6, 0x7f0600a9

    invoke-virtual {p3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iget-object v8, p0, Lcom/vkontakte/android/MenuListView$MenuAdapter;->this$0:Lcom/vkontakte/android/MenuListView;

    invoke-static {v8}, Lcom/vkontakte/android/MenuListView;->access$7(Lcom/vkontakte/android/MenuListView;)[Ljava/lang/String;

    move-result-object v8

    aget-object v8, v8, p2

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 439
    const/4 v0, 0x0

    .line 440
    .local v0, "counter":I
    const/4 v2, 0x0

    .line 441
    .local v2, "key":Ljava/lang/String;
    packed-switch p2, :pswitch_data_0

    .line 461
    :goto_2
    :pswitch_0
    if-eqz v2, :cond_6

    .line 462
    sget-object v6, Lcom/vkontakte/android/MenuListView;->counters:Ljava/util/HashMap;

    invoke-virtual {v6, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    sget-object v6, Lcom/vkontakte/android/MenuListView;->counters:Ljava/util/HashMap;

    invoke-virtual {v6, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 465
    :cond_6
    if-nez v0, :cond_7

    const v6, 0x7f0600aa

    invoke-virtual {p3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 471
    :goto_3
    if-eqz p2, :cond_1

    const v6, 0x7f0600a8

    invoke-virtual {p3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/vkontakte/android/MenuListView$MenuAdapter;->this$0:Lcom/vkontakte/android/MenuListView;

    invoke-static {v7}, Lcom/vkontakte/android/MenuListView;->access$8(Lcom/vkontakte/android/MenuListView;)[I

    move-result-object v7

    aget v7, v7, p2

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 443
    :pswitch_1
    const-string v2, "friends"

    .line 444
    goto :goto_2

    .line 452
    :pswitch_2
    const-string v2, "messages"

    .line 453
    goto :goto_2

    .line 455
    :pswitch_3
    const-string v2, "groups"

    .line 456
    goto :goto_2

    .line 458
    :pswitch_4
    const-string v2, "notifications"

    goto :goto_2

    .line 467
    :cond_7
    const v6, 0x7f0600aa

    invoke-virtual {p3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 468
    const v6, 0x7f0600aa

    invoke-virtual {p3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 478
    .end local v0    # "counter":I
    .end local v2    # "key":Ljava/lang/String;
    :cond_8
    const/4 v6, 0x1

    if-ne p1, v6, :cond_a

    .line 479
    if-nez p3, :cond_9

    .line 480
    new-instance p3, Lcom/vkontakte/android/MenuListView$MenuAdapter$1;

    .end local p3    # "view":Landroid/view/View;
    iget-object v6, p0, Lcom/vkontakte/android/MenuListView$MenuAdapter;->this$0:Lcom/vkontakte/android/MenuListView;

    invoke-virtual {v6}, Lcom/vkontakte/android/MenuListView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {p3, p0, v6}, Lcom/vkontakte/android/MenuListView$MenuAdapter$1;-><init>(Lcom/vkontakte/android/MenuListView$MenuAdapter;Landroid/content/Context;)V

    .line 485
    .restart local p3    # "view":Landroid/view/View;
    new-instance v6, Landroid/widget/AbsListView$LayoutParams;

    const/4 v7, -0x2

    invoke-direct {v6, v9, v7}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {p3, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 487
    invoke-virtual {p3, v11}, Landroid/view/View;->setBackgroundResource(I)V

    .line 488
    invoke-static {p3}, Lcom/vkontakte/android/Global;->setFontOnAll(Landroid/view/View;)V

    :cond_9
    move-object v5, p3

    .line 490
    check-cast v5, Landroid/widget/TextView;

    .line 491
    .local v5, "v":Landroid/widget/TextView;
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 492
    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 493
    const/high16 v6, 0x40a00000    # 5.0f

    invoke-static {v6}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v6

    const/high16 v7, 0x40e00000    # 7.0f

    invoke-static {v7}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v7

    const/high16 v8, 0x40a00000    # 5.0f

    invoke-static {v8}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v8

    const/high16 v9, 0x40e00000    # 7.0f

    invoke-static {v9}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v9

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 494
    invoke-static {}, Lcom/vkontakte/android/MenuListView;->access$9()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 497
    .end local v5    # "v":Landroid/widget/TextView;
    :cond_a
    const/4 v6, 0x2

    if-ne p1, v6, :cond_e

    .line 498
    if-nez p3, :cond_b

    .line 499
    iget-object v6, p0, Lcom/vkontakte/android/MenuListView$MenuAdapter;->this$0:Lcom/vkontakte/android/MenuListView;

    invoke-virtual {v6}, Lcom/vkontakte/android/MenuListView;->getContext()Landroid/content/Context;

    move-result-object v6

    const v8, 0x7f030026

    invoke-static {v6, v8, v5}, Lcom/vkontakte/android/MenuListView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    .line 500
    new-instance v6, Landroid/widget/AbsListView$LayoutParams;

    iget-object v8, p0, Lcom/vkontakte/android/MenuListView$MenuAdapter;->this$0:Lcom/vkontakte/android/MenuListView;

    iget v8, v8, Lcom/vkontakte/android/MenuListView;->itemPadding:I

    add-int/lit8 v8, v8, 0x27

    int-to-float v8, v8

    invoke-static {v8}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v8

    invoke-direct {v6, v9, v8}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {p3, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 502
    invoke-virtual {p3, v11}, Landroid/view/View;->setBackgroundResource(I)V

    .line 503
    invoke-static {p3}, Lcom/vkontakte/android/Global;->setFontOnAll(Landroid/view/View;)V

    .line 505
    :cond_b
    iget-object v6, p0, Lcom/vkontakte/android/MenuListView$MenuAdapter;->this$0:Lcom/vkontakte/android/MenuListView;

    invoke-static {v6}, Lcom/vkontakte/android/MenuListView;->access$1(Lcom/vkontakte/android/MenuListView;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vkontakte/android/UserProfile;

    .line 506
    .local v3, "p":Lcom/vkontakte/android/UserProfile;
    const v6, 0x7f060071

    invoke-virtual {p3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iget-object v8, v3, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 507
    const v6, 0x7f060070

    invoke-virtual {p3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iget v6, v3, Lcom/vkontakte/android/UserProfile;->online:I

    if-lez v6, :cond_c

    const/4 v6, 0x0

    :goto_4
    invoke-virtual {v8, v6}, Landroid/view/View;->setVisibility(I)V

    .line 510
    iget-object v6, p0, Lcom/vkontakte/android/MenuListView$MenuAdapter;->this$0:Lcom/vkontakte/android/MenuListView;

    invoke-static {v6}, Lcom/vkontakte/android/MenuListView;->access$5(Lcom/vkontakte/android/MenuListView;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    move-result-object v6

    iget-object v7, v3, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->isAlreadyLoaded(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 511
    invoke-virtual {p3, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/vkontakte/android/MenuListView$MenuAdapter;->this$0:Lcom/vkontakte/android/MenuListView;

    invoke-static {v7}, Lcom/vkontakte/android/MenuListView;->access$5(Lcom/vkontakte/android/MenuListView;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    move-result-object v7

    iget-object v8, v3, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_5
    move-object v5, p3

    .line 515
    goto/16 :goto_1

    :cond_c
    move v6, v7

    .line 507
    goto :goto_4

    .line 513
    :cond_d
    invoke-virtual {p3, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    const v7, 0x7f020206

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_5

    .line 517
    .end local v3    # "p":Lcom/vkontakte/android/UserProfile;
    :cond_e
    const/4 v6, 0x3

    if-ne p1, v6, :cond_11

    .line 518
    if-nez p3, :cond_f

    .line 519
    iget-object v6, p0, Lcom/vkontakte/android/MenuListView$MenuAdapter;->this$0:Lcom/vkontakte/android/MenuListView;

    invoke-virtual {v6}, Lcom/vkontakte/android/MenuListView;->getContext()Landroid/content/Context;

    move-result-object v6

    const v8, 0x7f030026

    invoke-static {v6, v8, v5}, Lcom/vkontakte/android/MenuListView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    .line 520
    new-instance v6, Landroid/widget/AbsListView$LayoutParams;

    iget-object v8, p0, Lcom/vkontakte/android/MenuListView$MenuAdapter;->this$0:Lcom/vkontakte/android/MenuListView;

    iget v8, v8, Lcom/vkontakte/android/MenuListView;->itemPadding:I

    add-int/lit8 v8, v8, 0x27

    int-to-float v8, v8

    invoke-static {v8}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v8

    invoke-direct {v6, v9, v8}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {p3, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 522
    invoke-virtual {p3, v11}, Landroid/view/View;->setBackgroundResource(I)V

    .line 523
    invoke-static {p3}, Lcom/vkontakte/android/Global;->setFontOnAll(Landroid/view/View;)V

    .line 525
    :cond_f
    iget-object v6, p0, Lcom/vkontakte/android/MenuListView$MenuAdapter;->this$0:Lcom/vkontakte/android/MenuListView;

    invoke-static {v6}, Lcom/vkontakte/android/MenuListView;->access$2(Lcom/vkontakte/android/MenuListView;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/api/Group;

    .line 526
    .local v1, "g":Lcom/vkontakte/android/api/Group;
    const v6, 0x7f060071

    invoke-virtual {p3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iget-object v8, v1, Lcom/vkontakte/android/api/Group;->name:Ljava/lang/String;

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 528
    const v6, 0x7f060070

    invoke-virtual {p3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 530
    iget-object v6, p0, Lcom/vkontakte/android/MenuListView$MenuAdapter;->this$0:Lcom/vkontakte/android/MenuListView;

    invoke-static {v6}, Lcom/vkontakte/android/MenuListView;->access$5(Lcom/vkontakte/android/MenuListView;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    move-result-object v6

    iget-object v7, v1, Lcom/vkontakte/android/api/Group;->photo:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->isAlreadyLoaded(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 531
    invoke-virtual {p3, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/vkontakte/android/MenuListView$MenuAdapter;->this$0:Lcom/vkontakte/android/MenuListView;

    invoke-static {v7}, Lcom/vkontakte/android/MenuListView;->access$5(Lcom/vkontakte/android/MenuListView;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    move-result-object v7

    iget-object v8, v1, Lcom/vkontakte/android/api/Group;->photo:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_6
    move-object v5, p3

    .line 535
    goto/16 :goto_1

    .line 533
    :cond_10
    invoke-virtual {p3, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    const v7, 0x7f020206

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_6

    .line 537
    .end local v1    # "g":Lcom/vkontakte/android/api/Group;
    :cond_11
    const/4 v6, 0x4

    if-ne p1, v6, :cond_13

    .line 538
    if-nez p3, :cond_12

    .line 539
    iget-object v6, p0, Lcom/vkontakte/android/MenuListView$MenuAdapter;->this$0:Lcom/vkontakte/android/MenuListView;

    invoke-virtual {v6}, Lcom/vkontakte/android/MenuListView;->getContext()Landroid/content/Context;

    move-result-object v6

    const v8, 0x7f030026

    invoke-static {v6, v8, v5}, Lcom/vkontakte/android/MenuListView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    .line 540
    new-instance v6, Landroid/widget/AbsListView$LayoutParams;

    iget-object v8, p0, Lcom/vkontakte/android/MenuListView$MenuAdapter;->this$0:Lcom/vkontakte/android/MenuListView;

    iget v8, v8, Lcom/vkontakte/android/MenuListView;->itemPadding:I

    add-int/lit8 v8, v8, 0x27

    int-to-float v8, v8

    invoke-static {v8}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v8

    invoke-direct {v6, v9, v8}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {p3, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 542
    invoke-virtual {p3, v11}, Landroid/view/View;->setBackgroundResource(I)V

    .line 543
    invoke-static {p3}, Lcom/vkontakte/android/Global;->setFontOnAll(Landroid/view/View;)V

    .line 545
    :cond_12
    const v6, 0x7f060070

    invoke-virtual {p3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 546
    invoke-virtual {p3, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 548
    const-string v4, ""

    .line 549
    .local v4, "title":Ljava/lang/String;
    packed-switch p2, :pswitch_data_1

    .line 561
    :goto_7
    const v6, 0x7f060071

    invoke-virtual {p3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object v5, p3

    .line 563
    goto/16 :goto_1

    .line 551
    :pswitch_5
    iget-object v6, p0, Lcom/vkontakte/android/MenuListView$MenuAdapter;->this$0:Lcom/vkontakte/android/MenuListView;

    invoke-virtual {v6}, Lcom/vkontakte/android/MenuListView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f09000e

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 552
    goto :goto_7

    .line 554
    :pswitch_6
    iget-object v6, p0, Lcom/vkontakte/android/MenuListView$MenuAdapter;->this$0:Lcom/vkontakte/android/MenuListView;

    invoke-virtual {v6}, Lcom/vkontakte/android/MenuListView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f09000f

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 555
    goto :goto_7

    .line 557
    :pswitch_7
    iget-object v6, p0, Lcom/vkontakte/android/MenuListView$MenuAdapter;->this$0:Lcom/vkontakte/android/MenuListView;

    invoke-virtual {v6}, Lcom/vkontakte/android/MenuListView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0900a3

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_7

    .line 565
    .end local v4    # "title":Ljava/lang/String;
    :cond_13
    const/4 v6, 0x5

    if-ne p1, v6, :cond_2

    .line 566
    if-nez p3, :cond_14

    .line 567
    new-instance p3, Landroid/view/View;

    .end local p3    # "view":Landroid/view/View;
    iget-object v6, p0, Lcom/vkontakte/android/MenuListView$MenuAdapter;->this$0:Lcom/vkontakte/android/MenuListView;

    invoke-virtual {v6}, Lcom/vkontakte/android/MenuListView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {p3, v6}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 568
    .restart local p3    # "view":Landroid/view/View;
    new-instance v6, Landroid/widget/AbsListView$LayoutParams;

    iget-object v7, p0, Lcom/vkontakte/android/MenuListView$MenuAdapter;->this$0:Lcom/vkontakte/android/MenuListView;

    invoke-static {v7}, Lcom/vkontakte/android/MenuListView;->access$3(Lcom/vkontakte/android/MenuListView;)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v7

    add-int/lit8 v7, v7, -0x2

    invoke-direct {v6, v9, v7}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {p3, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_14
    move-object v5, p3

    .line 570
    goto/16 :goto_1

    .line 441
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 549
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public isSectionHeaderVisible(I)Z
    .locals 3
    .param p1, "section"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 633
    packed-switch p1, :pswitch_data_0

    .line 647
    if-eqz p1, :cond_0

    move v0, v1

    :cond_0
    :goto_0
    :pswitch_0
    return v0

    .line 637
    :pswitch_1
    invoke-static {}, Lcom/vkontakte/android/MenuListView;->access$9()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/vkontakte/android/MenuListView;->reminderIntent:Landroid/content/Intent;

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 639
    :pswitch_2
    iget-object v2, p0, Lcom/vkontakte/android/MenuListView$MenuAdapter;->this$0:Lcom/vkontakte/android/MenuListView;

    invoke-static {v2}, Lcom/vkontakte/android/MenuListView;->access$1(Lcom/vkontakte/android/MenuListView;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 641
    :pswitch_3
    iget-object v2, p0, Lcom/vkontakte/android/MenuListView$MenuAdapter;->this$0:Lcom/vkontakte/android/MenuListView;

    invoke-static {v2}, Lcom/vkontakte/android/MenuListView;->access$2(Lcom/vkontakte/android/MenuListView;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    move v0, v1

    goto :goto_0

    :pswitch_4
    move v0, v1

    .line 643
    goto :goto_0

    .line 633
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
    .end packed-switch
.end method

.method public setHeaderStyle(Landroid/widget/TextView;)V
    .locals 6
    .param p1, "t"    # Landroid/widget/TextView;

    .prologue
    const/4 v5, -0x1

    const/high16 v4, 0x40e00000    # 7.0f

    .line 666
    const v0, 0x7f020008

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 667
    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 668
    const/4 v0, 0x1

    const/high16 v1, 0x41500000    # 13.0f

    invoke-virtual {p1, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 669
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 670
    const v0, 0x322bcc77    # 1.0E-8f

    const/4 v1, 0x0

    const/high16 v2, -0x40800000    # -1.0f

    const/high16 v3, -0x1000000

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 671
    invoke-static {v4}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v0

    const/high16 v1, 0x40800000    # 4.0f

    invoke-static {v1}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v1

    invoke-static {v4}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v2

    const/high16 v3, 0x40c00000    # 6.0f

    invoke-static {v3}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 672
    sget-object v0, Lcom/vkontakte/android/Global;->boldFont:Landroid/graphics/Typeface;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 673
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    const/high16 v1, 0x41d40000    # 26.5f

    invoke-static {v1}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v1

    invoke-direct {v0, v5, v1}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 674
    return-void
.end method
