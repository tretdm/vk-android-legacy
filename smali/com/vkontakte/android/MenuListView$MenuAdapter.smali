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
    .line 575
    iput-object p1, p0, Lcom/vkontakte/android/MenuListView$MenuAdapter;->this$0:Lcom/vkontakte/android/MenuListView;

    invoke-direct {p0}, Lcom/vkontakte/android/ui/MultiSectionAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkontakte/android/MenuListView;Lcom/vkontakte/android/MenuListView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/vkontakte/android/MenuListView;
    .param p2, "x1"    # Lcom/vkontakte/android/MenuListView$1;

    .prologue
    .line 575
    invoke-direct {p0, p1}, Lcom/vkontakte/android/MenuListView$MenuAdapter;-><init>(Lcom/vkontakte/android/MenuListView;)V

    return-void
.end method


# virtual methods
.method public getExtraViewTypeCount()I
    .locals 1

    .prologue
    .line 839
    const/4 v0, 0x5

    return v0
.end method

.method public getHeaderLayoutResource()I
    .locals 1

    .prologue
    .line 854
    const v0, 0x7f03003d

    return v0
.end method

.method public getItemCount(I)I
    .locals 3
    .param p1, "section"    # I

    .prologue
    const/4 v2, 0x5

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 789
    packed-switch p1, :pswitch_data_0

    move v0, v1

    .line 803
    :cond_0
    :goto_0
    return v0

    .line 791
    :pswitch_0
    iget-object v0, p0, Lcom/vkontakte/android/MenuListView$MenuAdapter;->this$0:Lcom/vkontakte/android/MenuListView;

    invoke-static {v0}, Lcom/vkontakte/android/MenuListView;->access$1300(Lcom/vkontakte/android/MenuListView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    .line 793
    :pswitch_1
    invoke-static {}, Lcom/vkontakte/android/MenuListView;->access$1200()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 795
    :pswitch_2
    iget-object v0, p0, Lcom/vkontakte/android/MenuListView$MenuAdapter;->this$0:Lcom/vkontakte/android/MenuListView;

    invoke-static {v0}, Lcom/vkontakte/android/MenuListView;->access$000(Lcom/vkontakte/android/MenuListView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0

    .line 797
    :pswitch_3
    iget-object v0, p0, Lcom/vkontakte/android/MenuListView$MenuAdapter;->this$0:Lcom/vkontakte/android/MenuListView;

    invoke-static {v0}, Lcom/vkontakte/android/MenuListView;->access$100(Lcom/vkontakte/android/MenuListView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0

    .line 801
    :pswitch_4
    iget-object v2, p0, Lcom/vkontakte/android/MenuListView$MenuAdapter;->this$0:Lcom/vkontakte/android/MenuListView;

    invoke-static {v2}, Lcom/vkontakte/android/MenuListView;->access$500(Lcom/vkontakte/android/MenuListView;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 789
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

.method public getItemId(II)J
    .locals 2
    .param p1, "section"    # I
    .param p2, "item"    # I

    .prologue
    .line 809
    packed-switch p1, :pswitch_data_0

    .line 818
    :goto_0
    const-wide/16 v0, 0x0

    :goto_1
    return-wide v0

    .line 811
    :pswitch_0
    const-wide/32 v0, -0x77359400

    goto :goto_1

    .line 813
    :pswitch_1
    :try_start_0
    iget-object v0, p0, Lcom/vkontakte/android/MenuListView$MenuAdapter;->this$0:Lcom/vkontakte/android/MenuListView;

    invoke-static {v0}, Lcom/vkontakte/android/MenuListView;->access$000(Lcom/vkontakte/android/MenuListView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/UserProfile;

    iget v0, v0, Lcom/vkontakte/android/UserProfile;->uid:I

    int-to-long v0, v0

    goto :goto_1

    .line 815
    :pswitch_2
    iget-object v0, p0, Lcom/vkontakte/android/MenuListView$MenuAdapter;->this$0:Lcom/vkontakte/android/MenuListView;

    invoke-static {v0}, Lcom/vkontakte/android/MenuListView;->access$100(Lcom/vkontakte/android/MenuListView;)Ljava/util/ArrayList;

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

    .line 817
    :catch_0
    move-exception v0

    goto :goto_0

    .line 809
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

    .line 843
    if-nez p1, :cond_2

    .line 844
    if-nez p2, :cond_1

    const/4 v0, 0x2

    .line 850
    :cond_0
    :goto_0
    return v0

    .line 845
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 847
    :cond_2
    if-eq p1, v0, :cond_0

    .line 848
    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    move v0, v1

    goto :goto_0

    .line 849
    :cond_3
    if-ne p1, v1, :cond_4

    const/4 v0, 0x6

    goto :goto_0

    .line 850
    :cond_4
    const/4 v0, 0x3

    goto :goto_0
.end method

.method public getSectionCount()I
    .locals 1

    .prologue
    .line 784
    const/4 v0, 0x5

    return v0
.end method

.method public getSectionTitle(I)Ljava/lang/String;
    .locals 2
    .param p1, "section"    # I

    .prologue
    .line 767
    packed-switch p1, :pswitch_data_0

    .line 779
    const-string v0, ""

    :goto_0
    return-object v0

    .line 769
    :pswitch_0
    const-string v0, ""

    goto :goto_0

    .line 771
    :pswitch_1
    iget-object v0, p0, Lcom/vkontakte/android/MenuListView$MenuAdapter;->this$0:Lcom/vkontakte/android/MenuListView;

    invoke-virtual {v0}, Lcom/vkontakte/android/MenuListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d025b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 773
    :pswitch_2
    iget-object v0, p0, Lcom/vkontakte/android/MenuListView$MenuAdapter;->this$0:Lcom/vkontakte/android/MenuListView;

    invoke-virtual {v0}, Lcom/vkontakte/android/MenuListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0100

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 775
    :pswitch_3
    iget-object v0, p0, Lcom/vkontakte/android/MenuListView$MenuAdapter;->this$0:Lcom/vkontakte/android/MenuListView;

    invoke-virtual {v0}, Lcom/vkontakte/android/MenuListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0131

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 767
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
    .locals 12
    .param p1, "section"    # I
    .param p2, "item"    # I
    .param p3, "view"    # Landroid/view/View;

    .prologue
    .line 578
    if-nez p1, :cond_9

    .line 579
    if-nez p2, :cond_4

    .line 580
    if-nez p3, :cond_0

    .line 581
    iget-object v8, p0, Lcom/vkontakte/android/MenuListView$MenuAdapter;->this$0:Lcom/vkontakte/android/MenuListView;

    invoke-virtual {v8}, Lcom/vkontakte/android/MenuListView;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f03003a

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    .line 582
    new-instance v8, Landroid/widget/AbsListView$LayoutParams;

    const/4 v9, -0x1

    const/high16 v10, 0x425c0000    # 55.0f

    invoke-static {v10}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v10

    invoke-direct {v8, v9, v10}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {p3, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 586
    const v8, 0x7f0800ae

    invoke-virtual {p3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    const v9, 0x7f0200f2

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 587
    const v8, 0x7f0800ae

    invoke-virtual {p3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    new-instance v9, Lcom/vkontakte/android/MenuListView$MenuAdapter$1;

    invoke-direct {v9, p0}, Lcom/vkontakte/android/MenuListView$MenuAdapter$1;-><init>(Lcom/vkontakte/android/MenuListView$MenuAdapter;)V

    invoke-virtual {v8, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 596
    :cond_0
    new-instance v5, Landroid/text/TextPaint;

    invoke-direct {v5}, Landroid/text/TextPaint;-><init>()V

    .line 597
    .local v5, "tp":Landroid/text/TextPaint;
    sget-object v8, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v5, v8}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 598
    const/high16 v8, 0x41880000    # 17.0f

    invoke-static {v8}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v5, v8}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 599
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 600
    .local v0, "bnds":Landroid/graphics/Rect;
    iget-object v8, p0, Lcom/vkontakte/android/MenuListView$MenuAdapter;->this$0:Lcom/vkontakte/android/MenuListView;

    invoke-static {v8}, Lcom/vkontakte/android/MenuListView;->access$400(Lcom/vkontakte/android/MenuListView;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/vkontakte/android/MenuListView$MenuAdapter;->this$0:Lcom/vkontakte/android/MenuListView;

    invoke-static {v10}, Lcom/vkontakte/android/MenuListView;->access$400(Lcom/vkontakte/android/MenuListView;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v5, v8, v9, v10, v0}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 602
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v8

    iget-object v9, p0, Lcom/vkontakte/android/MenuListView$MenuAdapter;->this$0:Lcom/vkontakte/android/MenuListView;

    iget-object v9, v9, Lcom/vkontakte/android/MenuListView;->list:Landroid/widget/ListView;

    invoke-virtual {v9}, Landroid/widget/ListView;->getWidth()I

    move-result v9

    const/high16 v10, 0x43070000    # 135.0f

    invoke-static {v10}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v10

    sub-int/2addr v9, v10

    if-gt v8, v9, :cond_2

    .line 603
    const v8, 0x7f0800af

    invoke-virtual {p3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iget-object v9, p0, Lcom/vkontakte/android/MenuListView$MenuAdapter;->this$0:Lcom/vkontakte/android/MenuListView;

    invoke-static {v9}, Lcom/vkontakte/android/MenuListView;->access$400(Lcom/vkontakte/android/MenuListView;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 608
    :goto_0
    iget-object v8, p0, Lcom/vkontakte/android/MenuListView$MenuAdapter;->this$0:Lcom/vkontakte/android/MenuListView;

    invoke-static {v8}, Lcom/vkontakte/android/MenuListView;->access$300(Lcom/vkontakte/android/MenuListView;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    move-result-object v8

    iget-object v9, p0, Lcom/vkontakte/android/MenuListView$MenuAdapter;->this$0:Lcom/vkontakte/android/MenuListView;

    invoke-static {v9}, Lcom/vkontakte/android/MenuListView;->access$200(Lcom/vkontakte/android/MenuListView;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->isAlreadyLoaded(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 609
    const v8, 0x7f0800ad

    invoke-virtual {p3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iget-object v9, p0, Lcom/vkontakte/android/MenuListView$MenuAdapter;->this$0:Lcom/vkontakte/android/MenuListView;

    invoke-static {v9}, Lcom/vkontakte/android/MenuListView;->access$300(Lcom/vkontakte/android/MenuListView;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    move-result-object v9

    iget-object v10, p0, Lcom/vkontakte/android/MenuListView$MenuAdapter;->this$0:Lcom/vkontakte/android/MenuListView;

    invoke-static {v10}, Lcom/vkontakte/android/MenuListView;->access$200(Lcom/vkontakte/android/MenuListView;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .end local v0    # "bnds":Landroid/graphics/Rect;
    .end local v5    # "tp":Landroid/text/TextPaint;
    :cond_1
    :goto_1
    move-object v6, p3

    .line 762
    :goto_2
    return-object v6

    .line 605
    .restart local v0    # "bnds":Landroid/graphics/Rect;
    .restart local v5    # "tp":Landroid/text/TextPaint;
    :cond_2
    const v8, 0x7f0800af

    invoke-virtual {p3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iget-object v9, p0, Lcom/vkontakte/android/MenuListView$MenuAdapter;->this$0:Lcom/vkontakte/android/MenuListView;

    invoke-static {v9}, Lcom/vkontakte/android/MenuListView;->access$400(Lcom/vkontakte/android/MenuListView;)Ljava/lang/String;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    aget-object v9, v9, v10

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 611
    :cond_3
    const v8, 0x7f0800ad

    invoke-virtual {p3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    const v9, 0x7f0201ef

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 613
    .end local v0    # "bnds":Landroid/graphics/Rect;
    .end local v5    # "tp":Landroid/text/TextPaint;
    :cond_4
    if-nez p3, :cond_5

    .line 614
    iget-object v8, p0, Lcom/vkontakte/android/MenuListView$MenuAdapter;->this$0:Lcom/vkontakte/android/MenuListView;

    invoke-virtual {v8}, Lcom/vkontakte/android/MenuListView;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f030038

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    .line 615
    new-instance v8, Landroid/widget/AbsListView$LayoutParams;

    const/4 v9, -0x1

    const/high16 v10, 0x425c0000    # 55.0f

    invoke-static {v10}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v10

    invoke-direct {v8, v9, v10}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {p3, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 619
    :cond_5
    const v8, 0x7f0800bf

    invoke-virtual {p3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iget-object v9, p0, Lcom/vkontakte/android/MenuListView$MenuAdapter;->this$0:Lcom/vkontakte/android/MenuListView;

    invoke-static {v9}, Lcom/vkontakte/android/MenuListView;->access$1300(Lcom/vkontakte/android/MenuListView;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/CharSequence;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 620
    const/4 v1, 0x0

    .line 621
    .local v1, "counter":I
    const/4 v3, 0x0

    .line 622
    .local v3, "key":Ljava/lang/String;
    packed-switch p2, :pswitch_data_0

    .line 645
    :goto_3
    :pswitch_0
    if-eqz v3, :cond_6

    .line 647
    :try_start_0
    sget-object v8, Lcom/vkontakte/android/MenuListView;->counters:Ljava/util/HashMap;

    invoke-virtual {v8, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    sget-object v8, Lcom/vkontakte/android/MenuListView;->counters:Ljava/util/HashMap;

    invoke-virtual {v8, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 652
    :cond_6
    :goto_4
    if-nez v1, :cond_7

    const v8, 0x7f0800c0

    :try_start_1
    invoke-virtual {p3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 663
    :goto_5
    if-eqz p2, :cond_1

    const v8, 0x7f0800be

    invoke-virtual {p3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    invoke-static {}, Lcom/vkontakte/android/MenuListView;->access$1400()[Landroid/graphics/drawable/Drawable;

    move-result-object v9

    aget-object v9, v9, p2

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    .line 624
    :pswitch_1
    const-string v3, "friends"

    .line 625
    goto :goto_3

    .line 633
    :pswitch_2
    const-string v3, "messages"

    .line 634
    goto :goto_3

    .line 636
    :pswitch_3
    const-string v3, "groups"

    .line 637
    goto :goto_3

    .line 639
    :pswitch_4
    const-string v3, "notifications"

    .line 640
    goto :goto_3

    .line 642
    :pswitch_5
    const-string v3, "sdk"

    goto :goto_3

    .line 648
    :catch_0
    move-exception v7

    .local v7, "x":Ljava/lang/Exception;
    const-string v8, "vk"

    invoke-static {v8, v7}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    .line 655
    .end local v7    # "x":Ljava/lang/Exception;
    :cond_7
    const v8, 0x7f0800c0

    :try_start_2
    invoke-virtual {p3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 656
    const/16 v8, 0x3e8

    if-le v1, v8, :cond_8

    .line 657
    const v8, 0x7f0800c0

    invoke-virtual {p3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    div-int/lit16 v10, v1, 0x3e8

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "K"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_5

    .line 661
    :catch_1
    move-exception v7

    .restart local v7    # "x":Ljava/lang/Exception;
    const-string v8, "vk"

    invoke-static {v8, v7}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    .line 659
    .end local v7    # "x":Ljava/lang/Exception;
    :cond_8
    const v8, 0x7f0800c0

    :try_start_3
    invoke-virtual {p3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_5

    .line 670
    .end local v1    # "counter":I
    .end local v3    # "key":Ljava/lang/String;
    :cond_9
    const/4 v8, 0x1

    if-ne p1, v8, :cond_b

    .line 671
    if-nez p3, :cond_a

    .line 672
    new-instance p3, Lcom/vkontakte/android/MenuListView$MenuAdapter$2;

    .end local p3    # "view":Landroid/view/View;
    iget-object v8, p0, Lcom/vkontakte/android/MenuListView$MenuAdapter;->this$0:Lcom/vkontakte/android/MenuListView;

    invoke-virtual {v8}, Lcom/vkontakte/android/MenuListView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {p3, p0, v8}, Lcom/vkontakte/android/MenuListView$MenuAdapter$2;-><init>(Lcom/vkontakte/android/MenuListView$MenuAdapter;Landroid/content/Context;)V

    .line 677
    .restart local p3    # "view":Landroid/view/View;
    new-instance v8, Landroid/widget/AbsListView$LayoutParams;

    const/4 v9, -0x1

    const/4 v10, -0x2

    invoke-direct {v8, v9, v10}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {p3, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_a
    move-object v6, p3

    .line 681
    check-cast v6, Landroid/widget/TextView;

    .line 682
    .local v6, "v":Landroid/widget/TextView;
    const/4 v8, 0x1

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setGravity(I)V

    .line 683
    const/4 v8, -0x1

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 684
    const/high16 v8, 0x41a00000    # 20.0f

    invoke-static {v8}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v8

    const/high16 v9, 0x41400000    # 12.0f

    invoke-static {v9}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v9

    const/high16 v10, 0x41a00000    # 20.0f

    invoke-static {v10}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v10

    const/high16 v11, 0x41400000    # 12.0f

    invoke-static {v11}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v11

    invoke-virtual {v6, v8, v9, v10, v11}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 685
    invoke-static {}, Lcom/vkontakte/android/MenuListView;->access$1200()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 688
    .end local v6    # "v":Landroid/widget/TextView;
    :cond_b
    const/4 v8, 0x2

    if-ne p1, v8, :cond_10

    .line 689
    if-nez p3, :cond_c

    .line 690
    iget-object v8, p0, Lcom/vkontakte/android/MenuListView$MenuAdapter;->this$0:Lcom/vkontakte/android/MenuListView;

    invoke-virtual {v8}, Lcom/vkontakte/android/MenuListView;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f030039

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    .line 691
    new-instance v8, Landroid/widget/AbsListView$LayoutParams;

    const/4 v9, -0x1

    const/high16 v10, 0x425c0000    # 55.0f

    invoke-static {v10}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v10

    invoke-direct {v8, v9, v10}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {p3, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 695
    :cond_c
    iget-object v8, p0, Lcom/vkontakte/android/MenuListView$MenuAdapter;->this$0:Lcom/vkontakte/android/MenuListView;

    invoke-static {v8}, Lcom/vkontakte/android/MenuListView;->access$000(Lcom/vkontakte/android/MenuListView;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vkontakte/android/UserProfile;

    .line 696
    .local v4, "p":Lcom/vkontakte/android/UserProfile;
    const v8, 0x7f0800af

    invoke-virtual {p3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iget-object v9, v4, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 697
    const v8, 0x7f0800ae

    invoke-virtual {p3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    iget v8, v4, Lcom/vkontakte/android/UserProfile;->online:I

    if-lez v8, :cond_d

    const/4 v8, 0x0

    :goto_6
    invoke-virtual {v9, v8}, Landroid/view/View;->setVisibility(I)V

    .line 698
    const v8, 0x7f0800ae

    invoke-virtual {p3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iget v9, v4, Lcom/vkontakte/android/UserProfile;->online:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_e

    const v9, 0x7f0200ee

    :goto_7
    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 701
    iget-object v8, p0, Lcom/vkontakte/android/MenuListView$MenuAdapter;->this$0:Lcom/vkontakte/android/MenuListView;

    invoke-static {v8}, Lcom/vkontakte/android/MenuListView;->access$300(Lcom/vkontakte/android/MenuListView;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    move-result-object v8

    iget-object v9, v4, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->isAlreadyLoaded(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_f

    .line 702
    const v8, 0x7f0800ad

    invoke-virtual {p3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iget-object v9, p0, Lcom/vkontakte/android/MenuListView$MenuAdapter;->this$0:Lcom/vkontakte/android/MenuListView;

    invoke-static {v9}, Lcom/vkontakte/android/MenuListView;->access$300(Lcom/vkontakte/android/MenuListView;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    move-result-object v9

    iget-object v10, v4, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_8
    move-object v6, p3

    .line 706
    goto/16 :goto_2

    .line 697
    :cond_d
    const/16 v8, 0x8

    goto :goto_6

    .line 698
    :cond_e
    const v9, 0x7f0200ef

    goto :goto_7

    .line 704
    :cond_f
    const v8, 0x7f0800ad

    invoke-virtual {p3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    const v9, 0x7f0201ef

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_8

    .line 708
    .end local v4    # "p":Lcom/vkontakte/android/UserProfile;
    :cond_10
    const/4 v8, 0x3

    if-ne p1, v8, :cond_13

    .line 709
    if-nez p3, :cond_11

    .line 710
    iget-object v8, p0, Lcom/vkontakte/android/MenuListView$MenuAdapter;->this$0:Lcom/vkontakte/android/MenuListView;

    invoke-virtual {v8}, Lcom/vkontakte/android/MenuListView;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f030039

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    .line 711
    new-instance v8, Landroid/widget/AbsListView$LayoutParams;

    const/4 v9, -0x1

    const/high16 v10, 0x425c0000    # 55.0f

    invoke-static {v10}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v10

    invoke-direct {v8, v9, v10}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {p3, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 715
    :cond_11
    iget-object v8, p0, Lcom/vkontakte/android/MenuListView$MenuAdapter;->this$0:Lcom/vkontakte/android/MenuListView;

    invoke-static {v8}, Lcom/vkontakte/android/MenuListView;->access$100(Lcom/vkontakte/android/MenuListView;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/api/Group;

    .line 716
    .local v2, "g":Lcom/vkontakte/android/api/Group;
    const v8, 0x7f0800af

    invoke-virtual {p3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iget-object v9, v2, Lcom/vkontakte/android/api/Group;->name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 718
    const v8, 0x7f0800ae

    invoke-virtual {p3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 720
    iget-object v8, p0, Lcom/vkontakte/android/MenuListView$MenuAdapter;->this$0:Lcom/vkontakte/android/MenuListView;

    invoke-static {v8}, Lcom/vkontakte/android/MenuListView;->access$300(Lcom/vkontakte/android/MenuListView;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    move-result-object v8

    iget-object v9, v2, Lcom/vkontakte/android/api/Group;->photo:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->isAlreadyLoaded(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_12

    .line 721
    const v8, 0x7f0800ad

    invoke-virtual {p3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iget-object v9, p0, Lcom/vkontakte/android/MenuListView$MenuAdapter;->this$0:Lcom/vkontakte/android/MenuListView;

    invoke-static {v9}, Lcom/vkontakte/android/MenuListView;->access$300(Lcom/vkontakte/android/MenuListView;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    move-result-object v9

    iget-object v10, v2, Lcom/vkontakte/android/api/Group;->photo:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_9
    move-object v6, p3

    .line 725
    goto/16 :goto_2

    .line 723
    :cond_12
    const v8, 0x7f0800ad

    invoke-virtual {p3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    const v9, 0x7f020075

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_9

    .line 755
    .end local v2    # "g":Lcom/vkontakte/android/api/Group;
    :cond_13
    const/4 v8, 0x4

    if-ne p1, v8, :cond_15

    .line 756
    if-nez p3, :cond_14

    .line 757
    new-instance p3, Landroid/view/View;

    .end local p3    # "view":Landroid/view/View;
    iget-object v8, p0, Lcom/vkontakte/android/MenuListView$MenuAdapter;->this$0:Lcom/vkontakte/android/MenuListView;

    invoke-virtual {v8}, Lcom/vkontakte/android/MenuListView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {p3, v8}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 758
    .restart local p3    # "view":Landroid/view/View;
    new-instance v8, Landroid/widget/AbsListView$LayoutParams;

    const/4 v9, -0x1

    const/high16 v10, 0x42640000    # 57.0f

    invoke-static {v10}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v10

    invoke-direct {v8, v9, v10}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {p3, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_14
    move-object v6, p3

    .line 760
    goto/16 :goto_2

    .line 762
    :cond_15
    const/4 v6, 0x0

    goto/16 :goto_2

    .line 622
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method public isSectionHeaderVisible(I)Z
    .locals 3
    .param p1, "section"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 823
    packed-switch p1, :pswitch_data_0

    .line 835
    if-eqz p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :pswitch_0
    move v0, v1

    .line 825
    goto :goto_0

    .line 827
    :pswitch_1
    invoke-static {}, Lcom/vkontakte/android/MenuListView;->access$1200()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 829
    :pswitch_2
    iget-object v2, p0, Lcom/vkontakte/android/MenuListView$MenuAdapter;->this$0:Lcom/vkontakte/android/MenuListView;

    invoke-static {v2}, Lcom/vkontakte/android/MenuListView;->access$000(Lcom/vkontakte/android/MenuListView;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 831
    :pswitch_3
    iget-object v2, p0, Lcom/vkontakte/android/MenuListView$MenuAdapter;->this$0:Lcom/vkontakte/android/MenuListView;

    invoke-static {v2}, Lcom/vkontakte/android/MenuListView;->access$100(Lcom/vkontakte/android/MenuListView;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_0

    move v0, v1

    goto :goto_0

    :pswitch_4
    move v0, v1

    .line 833
    goto :goto_0

    :cond_1
    move v0, v1

    .line 835
    goto :goto_0

    .line 823
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
