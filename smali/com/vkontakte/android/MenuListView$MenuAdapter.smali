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
    .line 459
    iput-object p1, p0, Lcom/vkontakte/android/MenuListView$MenuAdapter;->this$0:Lcom/vkontakte/android/MenuListView;

    invoke-direct {p0}, Lcom/vkontakte/android/ui/MultiSectionAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkontakte/android/MenuListView;Lcom/vkontakte/android/MenuListView$MenuAdapter;)V
    .locals 0

    .prologue
    .line 459
    invoke-direct {p0, p1}, Lcom/vkontakte/android/MenuListView$MenuAdapter;-><init>(Lcom/vkontakte/android/MenuListView;)V

    return-void
.end method

.method static synthetic access$1(Lcom/vkontakte/android/MenuListView$MenuAdapter;)Lcom/vkontakte/android/MenuListView;
    .locals 1

    .prologue
    .line 459
    iget-object v0, p0, Lcom/vkontakte/android/MenuListView$MenuAdapter;->this$0:Lcom/vkontakte/android/MenuListView;

    return-object v0
.end method


# virtual methods
.method public getExtraViewTypeCount()I
    .locals 1

    .prologue
    .line 719
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

    .line 669
    packed-switch p1, :pswitch_data_0

    move v0, v1

    .line 683
    :cond_0
    :goto_0
    return v0

    .line 671
    :pswitch_0
    iget-object v0, p0, Lcom/vkontakte/android/MenuListView$MenuAdapter;->this$0:Lcom/vkontakte/android/MenuListView;

    invoke-static {v0}, Lcom/vkontakte/android/MenuListView;->access$7(Lcom/vkontakte/android/MenuListView;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    goto :goto_0

    .line 673
    :pswitch_1
    invoke-static {}, Lcom/vkontakte/android/MenuListView;->access$9()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 675
    :pswitch_2
    iget-object v0, p0, Lcom/vkontakte/android/MenuListView$MenuAdapter;->this$0:Lcom/vkontakte/android/MenuListView;

    invoke-static {v0}, Lcom/vkontakte/android/MenuListView;->access$0(Lcom/vkontakte/android/MenuListView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0

    .line 677
    :pswitch_3
    iget-object v0, p0, Lcom/vkontakte/android/MenuListView$MenuAdapter;->this$0:Lcom/vkontakte/android/MenuListView;

    invoke-static {v0}, Lcom/vkontakte/android/MenuListView;->access$1(Lcom/vkontakte/android/MenuListView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0

    .line 681
    :pswitch_4
    iget-object v2, p0, Lcom/vkontakte/android/MenuListView$MenuAdapter;->this$0:Lcom/vkontakte/android/MenuListView;

    invoke-static {v2}, Lcom/vkontakte/android/MenuListView;->access$4(Lcom/vkontakte/android/MenuListView;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 669
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public getItemId(II)J
    .locals 2
    .param p1, "section"    # I
    .param p2, "item"    # I

    .prologue
    .line 689
    packed-switch p1, :pswitch_data_0

    .line 698
    :goto_0
    const-wide/16 v0, 0x0

    :goto_1
    return-wide v0

    .line 691
    :pswitch_0
    const-wide/32 v0, -0x77359400

    goto :goto_1

    .line 693
    :pswitch_1
    :try_start_0
    iget-object v0, p0, Lcom/vkontakte/android/MenuListView$MenuAdapter;->this$0:Lcom/vkontakte/android/MenuListView;

    invoke-static {v0}, Lcom/vkontakte/android/MenuListView;->access$0(Lcom/vkontakte/android/MenuListView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/UserProfile;

    iget v0, v0, Lcom/vkontakte/android/UserProfile;->uid:I

    int-to-long v0, v0

    goto :goto_1

    .line 695
    :pswitch_2
    iget-object v0, p0, Lcom/vkontakte/android/MenuListView$MenuAdapter;->this$0:Lcom/vkontakte/android/MenuListView;

    invoke-static {v0}, Lcom/vkontakte/android/MenuListView;->access$1(Lcom/vkontakte/android/MenuListView;)Ljava/util/ArrayList;

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

    .line 697
    :catch_0
    move-exception v0

    goto :goto_0

    .line 689
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

    .line 723
    if-nez p1, :cond_2

    .line 724
    if-nez p2, :cond_1

    const/4 v0, 0x2

    .line 730
    :cond_0
    :goto_0
    return v0

    .line 725
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 727
    :cond_2
    if-eq p1, v0, :cond_0

    .line 728
    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    move v0, v1

    goto :goto_0

    .line 729
    :cond_3
    if-ne p1, v1, :cond_4

    const/4 v0, 0x6

    goto :goto_0

    .line 730
    :cond_4
    const/4 v0, 0x3

    goto :goto_0
.end method

.method public getSectionCount()I
    .locals 1

    .prologue
    .line 664
    const/4 v0, 0x5

    return v0
.end method

.method public getSectionTitle(I)Ljava/lang/String;
    .locals 2
    .param p1, "section"    # I

    .prologue
    .line 647
    packed-switch p1, :pswitch_data_0

    .line 659
    const-string v0, ""

    :goto_0
    return-object v0

    .line 649
    :pswitch_0
    const-string v0, ""

    goto :goto_0

    .line 651
    :pswitch_1
    iget-object v0, p0, Lcom/vkontakte/android/MenuListView$MenuAdapter;->this$0:Lcom/vkontakte/android/MenuListView;

    invoke-virtual {v0}, Lcom/vkontakte/android/MenuListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060160

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 653
    :pswitch_2
    iget-object v0, p0, Lcom/vkontakte/android/MenuListView$MenuAdapter;->this$0:Lcom/vkontakte/android/MenuListView;

    invoke-virtual {v0}, Lcom/vkontakte/android/MenuListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06003d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 655
    :pswitch_3
    iget-object v0, p0, Lcom/vkontakte/android/MenuListView$MenuAdapter;->this$0:Lcom/vkontakte/android/MenuListView;

    invoke-virtual {v0}, Lcom/vkontakte/android/MenuListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0600e0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 647
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getView(IILandroid/view/View;)Landroid/view/View;
    .locals 11
    .param p1, "section"    # I
    .param p2, "item"    # I
    .param p3, "view"    # Landroid/view/View;

    .prologue
    .line 462
    if-nez p1, :cond_a

    .line 463
    if-nez p2, :cond_4

    .line 464
    if-nez p3, :cond_0

    .line 465
    iget-object v7, p0, Lcom/vkontakte/android/MenuListView$MenuAdapter;->this$0:Lcom/vkontakte/android/MenuListView;

    invoke-virtual {v7}, Lcom/vkontakte/android/MenuListView;->getContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f030036

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Lcom/vkontakte/android/MenuListView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    .line 466
    new-instance v7, Landroid/widget/AbsListView$LayoutParams;

    const/4 v8, -0x1

    const/high16 v9, 0x425c0000    # 55.0f

    invoke-static {v9}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v9

    invoke-direct {v7, v8, v9}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {p3, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 469
    const v7, 0x7f0200de

    invoke-virtual {p3, v7}, Landroid/view/View;->setBackgroundResource(I)V

    .line 470
    const v7, 0x7f0800a2

    invoke-virtual {p3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    const v8, 0x7f020153

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 471
    const v7, 0x7f0800a2

    invoke-virtual {p3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    new-instance v8, Lcom/vkontakte/android/MenuListView$MenuAdapter$1;

    invoke-direct {v8, p0}, Lcom/vkontakte/android/MenuListView$MenuAdapter$1;-><init>(Lcom/vkontakte/android/MenuListView$MenuAdapter;)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 480
    :cond_0
    new-instance v5, Landroid/text/TextPaint;

    invoke-direct {v5}, Landroid/text/TextPaint;-><init>()V

    .line 481
    .local v5, "tp":Landroid/text/TextPaint;
    sget-object v7, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v5, v7}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 482
    const/high16 v7, 0x41880000    # 17.0f

    invoke-static {v7}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v5, v7}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 483
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 484
    .local v0, "bnds":Landroid/graphics/Rect;
    iget-object v7, p0, Lcom/vkontakte/android/MenuListView$MenuAdapter;->this$0:Lcom/vkontakte/android/MenuListView;

    invoke-static {v7}, Lcom/vkontakte/android/MenuListView;->access$5(Lcom/vkontakte/android/MenuListView;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/vkontakte/android/MenuListView$MenuAdapter;->this$0:Lcom/vkontakte/android/MenuListView;

    invoke-static {v9}, Lcom/vkontakte/android/MenuListView;->access$5(Lcom/vkontakte/android/MenuListView;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v5, v7, v8, v9, v0}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 486
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v7

    iget-object v8, p0, Lcom/vkontakte/android/MenuListView$MenuAdapter;->this$0:Lcom/vkontakte/android/MenuListView;

    iget-object v8, v8, Lcom/vkontakte/android/MenuListView;->list:Landroid/widget/ListView;

    invoke-virtual {v8}, Landroid/widget/ListView;->getWidth()I

    move-result v8

    const/high16 v9, 0x42f00000    # 120.0f

    invoke-static {v9}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v9

    sub-int/2addr v8, v9

    if-gt v7, v8, :cond_2

    .line 487
    const v7, 0x7f0800a3

    invoke-virtual {p3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iget-object v8, p0, Lcom/vkontakte/android/MenuListView$MenuAdapter;->this$0:Lcom/vkontakte/android/MenuListView;

    invoke-static {v8}, Lcom/vkontakte/android/MenuListView;->access$5(Lcom/vkontakte/android/MenuListView;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 492
    :goto_0
    iget-object v7, p0, Lcom/vkontakte/android/MenuListView$MenuAdapter;->this$0:Lcom/vkontakte/android/MenuListView;

    invoke-static {v7}, Lcom/vkontakte/android/MenuListView;->access$3(Lcom/vkontakte/android/MenuListView;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    move-result-object v7

    iget-object v8, p0, Lcom/vkontakte/android/MenuListView$MenuAdapter;->this$0:Lcom/vkontakte/android/MenuListView;

    invoke-static {v8}, Lcom/vkontakte/android/MenuListView;->access$6(Lcom/vkontakte/android/MenuListView;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->isAlreadyLoaded(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 493
    const v7, 0x7f0800a1

    invoke-virtual {p3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iget-object v8, p0, Lcom/vkontakte/android/MenuListView$MenuAdapter;->this$0:Lcom/vkontakte/android/MenuListView;

    invoke-static {v8}, Lcom/vkontakte/android/MenuListView;->access$3(Lcom/vkontakte/android/MenuListView;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    move-result-object v8

    iget-object v9, p0, Lcom/vkontakte/android/MenuListView$MenuAdapter;->this$0:Lcom/vkontakte/android/MenuListView;

    invoke-static {v9}, Lcom/vkontakte/android/MenuListView;->access$6(Lcom/vkontakte/android/MenuListView;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .end local v0    # "bnds":Landroid/graphics/Rect;
    .end local v5    # "tp":Landroid/text/TextPaint;
    :cond_1
    :goto_1
    move-object v6, p3

    .line 642
    :goto_2
    return-object v6

    .line 489
    .restart local v0    # "bnds":Landroid/graphics/Rect;
    .restart local v5    # "tp":Landroid/text/TextPaint;
    :cond_2
    const v7, 0x7f0800a3

    invoke-virtual {p3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iget-object v8, p0, Lcom/vkontakte/android/MenuListView$MenuAdapter;->this$0:Lcom/vkontakte/android/MenuListView;

    invoke-static {v8}, Lcom/vkontakte/android/MenuListView;->access$5(Lcom/vkontakte/android/MenuListView;)Ljava/lang/String;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    aget-object v8, v8, v9

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 495
    :cond_3
    const v7, 0x7f0800a1

    invoke-virtual {p3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    const v8, 0x7f02024a

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 497
    .end local v0    # "bnds":Landroid/graphics/Rect;
    .end local v5    # "tp":Landroid/text/TextPaint;
    :cond_4
    if-nez p3, :cond_5

    .line 498
    iget-object v7, p0, Lcom/vkontakte/android/MenuListView$MenuAdapter;->this$0:Lcom/vkontakte/android/MenuListView;

    invoke-virtual {v7}, Lcom/vkontakte/android/MenuListView;->getContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f030034

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Lcom/vkontakte/android/MenuListView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    .line 499
    new-instance v7, Landroid/widget/AbsListView$LayoutParams;

    const/4 v8, -0x1

    const/high16 v9, 0x423c0000    # 47.0f

    invoke-static {v9}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v9

    invoke-direct {v7, v8, v9}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {p3, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 502
    :cond_5
    if-nez p2, :cond_7

    const v7, 0x7f0200de

    :goto_3
    invoke-virtual {p3, v7}, Landroid/view/View;->setBackgroundResource(I)V

    .line 503
    const v7, 0x7f0800bc

    invoke-virtual {p3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iget-object v8, p0, Lcom/vkontakte/android/MenuListView$MenuAdapter;->this$0:Lcom/vkontakte/android/MenuListView;

    invoke-static {v8}, Lcom/vkontakte/android/MenuListView;->access$7(Lcom/vkontakte/android/MenuListView;)[Ljava/lang/String;

    move-result-object v8

    aget-object v8, v8, p2

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 504
    const/4 v1, 0x0

    .line 505
    .local v1, "counter":I
    const/4 v3, 0x0

    .line 506
    .local v3, "key":Ljava/lang/String;
    packed-switch p2, :pswitch_data_0

    .line 526
    :goto_4
    :pswitch_0
    if-eqz v3, :cond_6

    .line 528
    :try_start_0
    sget-object v7, Lcom/vkontakte/android/MenuListView;->counters:Ljava/util/HashMap;

    invoke-virtual {v7, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    sget-object v7, Lcom/vkontakte/android/MenuListView;->counters:Ljava/util/HashMap;

    invoke-virtual {v7, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 533
    :cond_6
    :goto_5
    if-nez v1, :cond_8

    const v7, 0x7f0800bd

    :try_start_1
    invoke-virtual {p3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 544
    :goto_6
    if-eqz p2, :cond_1

    const v7, 0x7f0800bb

    invoke-virtual {p3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iget-object v8, p0, Lcom/vkontakte/android/MenuListView$MenuAdapter;->this$0:Lcom/vkontakte/android/MenuListView;

    invoke-static {v8}, Lcom/vkontakte/android/MenuListView;->access$8(Lcom/vkontakte/android/MenuListView;)[I

    move-result-object v8

    aget v8, v8, p2

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    .line 502
    .end local v1    # "counter":I
    .end local v3    # "key":Ljava/lang/String;
    :cond_7
    const v7, 0x7f0200dd

    goto :goto_3

    .line 508
    .restart local v1    # "counter":I
    .restart local v3    # "key":Ljava/lang/String;
    :pswitch_1
    const-string v3, "friends"

    .line 509
    goto :goto_4

    .line 517
    :pswitch_2
    const-string v3, "messages"

    .line 518
    goto :goto_4

    .line 520
    :pswitch_3
    const-string v3, "groups"

    .line 521
    goto :goto_4

    .line 523
    :pswitch_4
    const-string v3, "notifications"

    goto :goto_4

    .line 536
    :cond_8
    const v7, 0x7f0800bd

    :try_start_2
    invoke-virtual {p3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 537
    const/16 v7, 0x3e8

    if-le v1, v7, :cond_9

    .line 538
    const v7, 0x7f0800bd

    invoke-virtual {p3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    new-instance v8, Ljava/lang/StringBuilder;

    div-int/lit16 v9, v1, 0x3e8

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "K"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 542
    :catch_0
    move-exception v7

    goto :goto_6

    .line 540
    :cond_9
    const v7, 0x7f0800bd

    invoke-virtual {p3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_6

    .line 551
    .end local v1    # "counter":I
    .end local v3    # "key":Ljava/lang/String;
    :cond_a
    const/4 v7, 0x1

    if-ne p1, v7, :cond_c

    .line 552
    if-nez p3, :cond_b

    .line 553
    new-instance p3, Lcom/vkontakte/android/MenuListView$MenuAdapter$2;

    .end local p3    # "view":Landroid/view/View;
    iget-object v7, p0, Lcom/vkontakte/android/MenuListView$MenuAdapter;->this$0:Lcom/vkontakte/android/MenuListView;

    invoke-virtual {v7}, Lcom/vkontakte/android/MenuListView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {p3, p0, v7}, Lcom/vkontakte/android/MenuListView$MenuAdapter$2;-><init>(Lcom/vkontakte/android/MenuListView$MenuAdapter;Landroid/content/Context;)V

    .line 558
    .restart local p3    # "view":Landroid/view/View;
    new-instance v7, Landroid/widget/AbsListView$LayoutParams;

    const/4 v8, -0x1

    const/4 v9, -0x2

    invoke-direct {v7, v8, v9}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {p3, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 560
    const v7, 0x7f0200de

    invoke-virtual {p3, v7}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_b
    move-object v6, p3

    .line 562
    check-cast v6, Landroid/widget/TextView;

    .line 563
    .local v6, "v":Landroid/widget/TextView;
    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setGravity(I)V

    .line 564
    const/4 v7, -0x1

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 565
    const/high16 v7, 0x40a00000    # 5.0f

    invoke-static {v7}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v7

    const/high16 v8, 0x40e00000    # 7.0f

    invoke-static {v8}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v8

    const/high16 v9, 0x40a00000    # 5.0f

    invoke-static {v9}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v9

    const/high16 v10, 0x40e00000    # 7.0f

    invoke-static {v10}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v10

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 566
    invoke-static {}, Lcom/vkontakte/android/MenuListView;->access$9()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 569
    .end local v6    # "v":Landroid/widget/TextView;
    :cond_c
    const/4 v7, 0x2

    if-ne p1, v7, :cond_11

    .line 570
    if-nez p3, :cond_d

    .line 571
    iget-object v7, p0, Lcom/vkontakte/android/MenuListView$MenuAdapter;->this$0:Lcom/vkontakte/android/MenuListView;

    invoke-virtual {v7}, Lcom/vkontakte/android/MenuListView;->getContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f030035

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Lcom/vkontakte/android/MenuListView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    .line 572
    new-instance v7, Landroid/widget/AbsListView$LayoutParams;

    const/4 v8, -0x1

    const/high16 v9, 0x423c0000    # 47.0f

    invoke-static {v9}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v9

    invoke-direct {v7, v8, v9}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {p3, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 575
    :cond_d
    if-nez p2, :cond_e

    const v7, 0x7f0200de

    :goto_7
    invoke-virtual {p3, v7}, Landroid/view/View;->setBackgroundResource(I)V

    .line 576
    iget-object v7, p0, Lcom/vkontakte/android/MenuListView$MenuAdapter;->this$0:Lcom/vkontakte/android/MenuListView;

    invoke-static {v7}, Lcom/vkontakte/android/MenuListView;->access$0(Lcom/vkontakte/android/MenuListView;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vkontakte/android/UserProfile;

    .line 577
    .local v4, "p":Lcom/vkontakte/android/UserProfile;
    const v7, 0x7f0800a3

    invoke-virtual {p3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iget-object v8, v4, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 578
    const v7, 0x7f0800a2

    invoke-virtual {p3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iget v7, v4, Lcom/vkontakte/android/UserProfile;->online:I

    if-lez v7, :cond_f

    const/4 v7, 0x0

    :goto_8
    invoke-virtual {v8, v7}, Landroid/view/View;->setVisibility(I)V

    .line 581
    iget-object v7, p0, Lcom/vkontakte/android/MenuListView$MenuAdapter;->this$0:Lcom/vkontakte/android/MenuListView;

    invoke-static {v7}, Lcom/vkontakte/android/MenuListView;->access$3(Lcom/vkontakte/android/MenuListView;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    move-result-object v7

    iget-object v8, v4, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->isAlreadyLoaded(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_10

    .line 582
    const v7, 0x7f0800a1

    invoke-virtual {p3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iget-object v8, p0, Lcom/vkontakte/android/MenuListView$MenuAdapter;->this$0:Lcom/vkontakte/android/MenuListView;

    invoke-static {v8}, Lcom/vkontakte/android/MenuListView;->access$3(Lcom/vkontakte/android/MenuListView;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    move-result-object v8

    iget-object v9, v4, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_9
    move-object v6, p3

    .line 586
    goto/16 :goto_2

    .line 575
    .end local v4    # "p":Lcom/vkontakte/android/UserProfile;
    :cond_e
    const v7, 0x7f0200dd

    goto :goto_7

    .line 578
    .restart local v4    # "p":Lcom/vkontakte/android/UserProfile;
    :cond_f
    const/16 v7, 0x8

    goto :goto_8

    .line 584
    :cond_10
    const v7, 0x7f0800a1

    invoke-virtual {p3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    const v8, 0x7f02024a

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_9

    .line 588
    .end local v4    # "p":Lcom/vkontakte/android/UserProfile;
    :cond_11
    const/4 v7, 0x3

    if-ne p1, v7, :cond_15

    .line 589
    if-nez p3, :cond_12

    .line 590
    iget-object v7, p0, Lcom/vkontakte/android/MenuListView$MenuAdapter;->this$0:Lcom/vkontakte/android/MenuListView;

    invoke-virtual {v7}, Lcom/vkontakte/android/MenuListView;->getContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f030035

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Lcom/vkontakte/android/MenuListView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    .line 591
    new-instance v7, Landroid/widget/AbsListView$LayoutParams;

    const/4 v8, -0x1

    const/high16 v9, 0x423c0000    # 47.0f

    invoke-static {v9}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v9

    invoke-direct {v7, v8, v9}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {p3, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 594
    :cond_12
    if-nez p2, :cond_13

    const v7, 0x7f0200de

    :goto_a
    invoke-virtual {p3, v7}, Landroid/view/View;->setBackgroundResource(I)V

    .line 595
    iget-object v7, p0, Lcom/vkontakte/android/MenuListView$MenuAdapter;->this$0:Lcom/vkontakte/android/MenuListView;

    invoke-static {v7}, Lcom/vkontakte/android/MenuListView;->access$1(Lcom/vkontakte/android/MenuListView;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/api/Group;

    .line 596
    .local v2, "g":Lcom/vkontakte/android/api/Group;
    const v7, 0x7f0800a3

    invoke-virtual {p3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iget-object v8, v2, Lcom/vkontakte/android/api/Group;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 598
    const v7, 0x7f0800a2

    invoke-virtual {p3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 600
    iget-object v7, p0, Lcom/vkontakte/android/MenuListView$MenuAdapter;->this$0:Lcom/vkontakte/android/MenuListView;

    invoke-static {v7}, Lcom/vkontakte/android/MenuListView;->access$3(Lcom/vkontakte/android/MenuListView;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    move-result-object v7

    iget-object v8, v2, Lcom/vkontakte/android/api/Group;->photo:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->isAlreadyLoaded(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_14

    .line 601
    const v7, 0x7f0800a1

    invoke-virtual {p3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iget-object v8, p0, Lcom/vkontakte/android/MenuListView$MenuAdapter;->this$0:Lcom/vkontakte/android/MenuListView;

    invoke-static {v8}, Lcom/vkontakte/android/MenuListView;->access$3(Lcom/vkontakte/android/MenuListView;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    move-result-object v8

    iget-object v9, v2, Lcom/vkontakte/android/api/Group;->photo:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_b
    move-object v6, p3

    .line 605
    goto/16 :goto_2

    .line 594
    .end local v2    # "g":Lcom/vkontakte/android/api/Group;
    :cond_13
    const v7, 0x7f0200dd

    goto :goto_a

    .line 603
    .restart local v2    # "g":Lcom/vkontakte/android/api/Group;
    :cond_14
    const v7, 0x7f0800a1

    invoke-virtual {p3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    const v8, 0x7f0200d8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_b

    .line 635
    .end local v2    # "g":Lcom/vkontakte/android/api/Group;
    :cond_15
    const/4 v7, 0x4

    if-ne p1, v7, :cond_17

    .line 636
    if-nez p3, :cond_16

    .line 637
    new-instance p3, Landroid/view/View;

    .end local p3    # "view":Landroid/view/View;
    iget-object v7, p0, Lcom/vkontakte/android/MenuListView$MenuAdapter;->this$0:Lcom/vkontakte/android/MenuListView;

    invoke-virtual {v7}, Lcom/vkontakte/android/MenuListView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {p3, v7}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 638
    .restart local p3    # "view":Landroid/view/View;
    new-instance v7, Landroid/widget/AbsListView$LayoutParams;

    const/4 v8, -0x1

    iget-object v9, p0, Lcom/vkontakte/android/MenuListView$MenuAdapter;->this$0:Lcom/vkontakte/android/MenuListView;

    invoke-static {v9}, Lcom/vkontakte/android/MenuListView;->access$4(Lcom/vkontakte/android/MenuListView;)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v9

    add-int/lit8 v9, v9, -0x2

    invoke-direct {v7, v8, v9}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {p3, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_16
    move-object v6, p3

    .line 640
    goto/16 :goto_2

    .line 642
    :cond_17
    const/4 v6, 0x0

    goto/16 :goto_2

    .line 529
    .restart local v1    # "counter":I
    .restart local v3    # "key":Ljava/lang/String;
    :catch_1
    move-exception v7

    goto/16 :goto_5

    .line 506
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public isSectionHeaderVisible(I)Z
    .locals 3
    .param p1, "section"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 703
    packed-switch p1, :pswitch_data_0

    .line 715
    if-eqz p1, :cond_0

    move v0, v1

    :cond_0
    :goto_0
    :pswitch_0
    return v0

    .line 707
    :pswitch_1
    invoke-static {}, Lcom/vkontakte/android/MenuListView;->access$9()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 709
    :pswitch_2
    iget-object v2, p0, Lcom/vkontakte/android/MenuListView$MenuAdapter;->this$0:Lcom/vkontakte/android/MenuListView;

    invoke-static {v2}, Lcom/vkontakte/android/MenuListView;->access$0(Lcom/vkontakte/android/MenuListView;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 711
    :pswitch_3
    iget-object v2, p0, Lcom/vkontakte/android/MenuListView$MenuAdapter;->this$0:Lcom/vkontakte/android/MenuListView;

    invoke-static {v2}, Lcom/vkontakte/android/MenuListView;->access$1(Lcom/vkontakte/android/MenuListView;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 703
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method public setHeaderStyle(Landroid/widget/TextView;)V
    .locals 5
    .param p1, "t"    # Landroid/widget/TextView;

    .prologue
    const/4 v4, 0x1

    const/high16 v2, 0x41500000    # 13.0f

    .line 734
    const v0, 0x7f020096

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 735
    const v0, -0xb6652e

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 736
    const/high16 v0, 0x41600000    # 14.0f

    invoke-virtual {p1, v4, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 737
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 738
    invoke-static {v2}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v0

    const/high16 v1, 0x40800000    # 4.0f

    invoke-static {v1}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v1

    invoke-static {v2}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v2

    const/high16 v3, 0x40c00000    # 6.0f

    invoke-static {v3}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 739
    sget-object v0, Lcom/vkontakte/android/Global;->boldFont:Landroid/graphics/Typeface;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 741
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 742
    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 745
    :cond_0
    return-void
.end method
