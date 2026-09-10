.class Lcom/vkontakte/android/PhotoAlbumsView$PhotoAlbumsAdapter;
.super Landroid/widget/BaseAdapter;
.source "PhotoAlbumsView.java"

# interfaces
.implements Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/PhotoAlbumsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PhotoAlbumsAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/PhotoAlbumsView;


# direct methods
.method private constructor <init>(Lcom/vkontakte/android/PhotoAlbumsView;)V
    .locals 0

    .prologue
    .line 374
    iput-object p1, p0, Lcom/vkontakte/android/PhotoAlbumsView$PhotoAlbumsAdapter;->this$0:Lcom/vkontakte/android/PhotoAlbumsView;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkontakte/android/PhotoAlbumsView;Lcom/vkontakte/android/PhotoAlbumsView$PhotoAlbumsAdapter;)V
    .locals 0

    .prologue
    .line 374
    invoke-direct {p0, p1}, Lcom/vkontakte/android/PhotoAlbumsView$PhotoAlbumsAdapter;-><init>(Lcom/vkontakte/android/PhotoAlbumsView;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 2

    .prologue
    .line 377
    iget-object v0, p0, Lcom/vkontakte/android/PhotoAlbumsView$PhotoAlbumsAdapter;->this$0:Lcom/vkontakte/android/PhotoAlbumsView;

    invoke-static {v0}, Lcom/vkontakte/android/PhotoAlbumsView;->access$0(Lcom/vkontakte/android/PhotoAlbumsView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/vkontakte/android/PhotoAlbumsView$PhotoAlbumsAdapter;->this$0:Lcom/vkontakte/android/PhotoAlbumsView;

    invoke-static {v1}, Lcom/vkontakte/android/PhotoAlbumsView;->access$5(Lcom/vkontakte/android/PhotoAlbumsView;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getCountForHeader(I)I
    .locals 1
    .param p1, "section"    # I

    .prologue
    .line 448
    packed-switch p1, :pswitch_data_0

    .line 454
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 450
    :pswitch_0
    iget-object v0, p0, Lcom/vkontakte/android/PhotoAlbumsView$PhotoAlbumsAdapter;->this$0:Lcom/vkontakte/android/PhotoAlbumsView;

    invoke-static {v0}, Lcom/vkontakte/android/PhotoAlbumsView;->access$5(Lcom/vkontakte/android/PhotoAlbumsView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0

    .line 452
    :pswitch_1
    iget-object v0, p0, Lcom/vkontakte/android/PhotoAlbumsView$PhotoAlbumsAdapter;->this$0:Lcom/vkontakte/android/PhotoAlbumsView;

    invoke-static {v0}, Lcom/vkontakte/android/PhotoAlbumsView;->access$0(Lcom/vkontakte/android/PhotoAlbumsView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0

    .line 448
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getHeaderView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "pos"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "arg2"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v3, 0x0

    .line 459
    if-nez p1, :cond_1

    .line 460
    if-nez p2, :cond_0

    new-instance v1, Landroid/view/View;

    iget-object v2, p0, Lcom/vkontakte/android/PhotoAlbumsView$PhotoAlbumsAdapter;->this$0:Lcom/vkontakte/android/PhotoAlbumsView;

    invoke-virtual {v2}, Lcom/vkontakte/android/PhotoAlbumsView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 472
    :goto_0
    return-object v1

    :cond_0
    move-object v1, p2

    .line 460
    goto :goto_0

    .line 462
    :cond_1
    instance-of v1, p2, Landroid/widget/TextView;

    if-nez v1, :cond_2

    const/4 p2, 0x0

    :cond_2
    move-object v0, p2

    .line 463
    check-cast v0, Landroid/widget/TextView;

    .line 464
    .local v0, "v":Landroid/widget/TextView;
    if-nez v0, :cond_3

    .line 465
    new-instance v0, Landroid/widget/TextView;

    .end local v0    # "v":Landroid/widget/TextView;
    iget-object v1, p0, Lcom/vkontakte/android/PhotoAlbumsView$PhotoAlbumsAdapter;->this$0:Lcom/vkontakte/android/PhotoAlbumsView;

    invoke-virtual {v1}, Lcom/vkontakte/android/PhotoAlbumsView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 466
    .restart local v0    # "v":Landroid/widget/TextView;
    const v1, -0x7a7a7b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 467
    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 468
    const/high16 v1, 0x41880000    # 17.0f

    invoke-static {v1}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v1

    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {v2}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v2

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 469
    const v1, 0x7f0d0062

    iget-object v2, p0, Lcom/vkontakte/android/PhotoAlbumsView$PhotoAlbumsAdapter;->this$0:Lcom/vkontakte/android/PhotoAlbumsView;

    invoke-static {v2}, Lcom/vkontakte/android/PhotoAlbumsView;->access$0(Lcom/vkontakte/android/PhotoAlbumsView;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget-object v3, p0, Lcom/vkontakte/android/PhotoAlbumsView$PhotoAlbumsAdapter;->this$0:Lcom/vkontakte/android/PhotoAlbumsView;

    invoke-virtual {v3}, Lcom/vkontakte/android/PhotoAlbumsView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/vkontakte/android/Global;->langPlural(IILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 470
    const/4 v1, 0x1

    const/high16 v2, 0x41600000    # 14.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_3
    move-object v1, v0

    .line 472
    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "arg0"    # I

    .prologue
    .line 382
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "pos"    # I

    .prologue
    .line 387
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 2
    .param p1, "pos"    # I

    .prologue
    .line 396
    iget-object v1, p0, Lcom/vkontakte/android/PhotoAlbumsView$PhotoAlbumsAdapter;->this$0:Lcom/vkontakte/android/PhotoAlbumsView;

    invoke-static {v1}, Lcom/vkontakte/android/PhotoAlbumsView;->access$5(Lcom/vkontakte/android/PhotoAlbumsView;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 397
    iget-object v1, p0, Lcom/vkontakte/android/PhotoAlbumsView$PhotoAlbumsAdapter;->this$0:Lcom/vkontakte/android/PhotoAlbumsView;

    invoke-static {v1}, Lcom/vkontakte/android/PhotoAlbumsView;->access$5(Lcom/vkontakte/android/PhotoAlbumsView;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/api/PhotoAlbum;

    .line 402
    .local v0, "a":Lcom/vkontakte/android/api/PhotoAlbum;
    :goto_0
    instance-of v1, v0, Lcom/vkontakte/android/api/MultiThumbPhotoAlbum;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    .line 403
    :goto_1
    return v1

    .line 399
    .end local v0    # "a":Lcom/vkontakte/android/api/PhotoAlbum;
    :cond_0
    iget-object v1, p0, Lcom/vkontakte/android/PhotoAlbumsView$PhotoAlbumsAdapter;->this$0:Lcom/vkontakte/android/PhotoAlbumsView;

    invoke-static {v1}, Lcom/vkontakte/android/PhotoAlbumsView;->access$5(Lcom/vkontakte/android/PhotoAlbumsView;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr p1, v1

    .line 400
    iget-object v1, p0, Lcom/vkontakte/android/PhotoAlbumsView$PhotoAlbumsAdapter;->this$0:Lcom/vkontakte/android/PhotoAlbumsView;

    invoke-static {v1}, Lcom/vkontakte/android/PhotoAlbumsView;->access$0(Lcom/vkontakte/android/PhotoAlbumsView;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/api/PhotoAlbum;

    .restart local v0    # "a":Lcom/vkontakte/android/api/PhotoAlbum;
    goto :goto_0

    .line 403
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getNumHeaders()I
    .locals 1

    .prologue
    .line 477
    iget-object v0, p0, Lcom/vkontakte/android/PhotoAlbumsView$PhotoAlbumsAdapter;->this$0:Lcom/vkontakte/android/PhotoAlbumsView;

    invoke-static {v0}, Lcom/vkontakte/android/PhotoAlbumsView;->access$0(Lcom/vkontakte/android/PhotoAlbumsView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/PhotoAlbumsView$PhotoAlbumsAdapter;->this$0:Lcom/vkontakte/android/PhotoAlbumsView;

    invoke-static {v0}, Lcom/vkontakte/android/PhotoAlbumsView;->access$5(Lcom/vkontakte/android/PhotoAlbumsView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 478
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/PhotoAlbumsView$PhotoAlbumsAdapter;->this$0:Lcom/vkontakte/android/PhotoAlbumsView;

    invoke-static {v0}, Lcom/vkontakte/android/PhotoAlbumsView;->access$0(Lcom/vkontakte/android/PhotoAlbumsView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 481
    :goto_0
    return v0

    .line 479
    :cond_1
    const/4 v0, 0x2

    goto :goto_0

    .line 481
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .param p1, "pos"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "group"    # Landroid/view/ViewGroup;

    .prologue
    const v10, 0x7f090125

    const v9, -0xd0d0e

    const v8, 0x7f090131

    .line 409
    move v3, p1

    .line 410
    .local v3, "realPos":I
    iget-object v4, p0, Lcom/vkontakte/android/PhotoAlbumsView$PhotoAlbumsAdapter;->this$0:Lcom/vkontakte/android/PhotoAlbumsView;

    invoke-static {v4}, Lcom/vkontakte/android/PhotoAlbumsView;->access$5(Lcom/vkontakte/android/PhotoAlbumsView;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge p1, v4, :cond_3

    .line 411
    iget-object v4, p0, Lcom/vkontakte/android/PhotoAlbumsView$PhotoAlbumsAdapter;->this$0:Lcom/vkontakte/android/PhotoAlbumsView;

    invoke-static {v4}, Lcom/vkontakte/android/PhotoAlbumsView;->access$5(Lcom/vkontakte/android/PhotoAlbumsView;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/api/PhotoAlbum;

    .line 416
    .local v0, "a":Lcom/vkontakte/android/api/PhotoAlbum;
    :goto_0
    if-nez p2, :cond_0

    .line 417
    iget-object v4, p0, Lcom/vkontakte/android/PhotoAlbumsView$PhotoAlbumsAdapter;->this$0:Lcom/vkontakte/android/PhotoAlbumsView;

    invoke-virtual {v4}, Lcom/vkontakte/android/PhotoAlbumsView;->getContext()Landroid/content/Context;

    move-result-object v5

    instance-of v4, v0, Lcom/vkontakte/android/api/MultiThumbPhotoAlbum;

    if-eqz v4, :cond_4

    const v4, 0x7f03006d

    :goto_1
    const/4 v6, 0x0

    invoke-static {v5, v4, v6}, Lcom/vkontakte/android/PhotoAlbumsView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 418
    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Lcom/vkontakte/android/PhotoAlbumsView$PhotoAlbumsAdapter;->this$0:Lcom/vkontakte/android/PhotoAlbumsView;

    invoke-static {v5}, Lcom/vkontakte/android/PhotoAlbumsView;->access$6(Lcom/vkontakte/android/PhotoAlbumsView;)Landroid/view/View$OnClickListener;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 420
    :cond_0
    instance-of v4, v0, Lcom/vkontakte/android/api/MultiThumbPhotoAlbum;

    if-nez v4, :cond_1

    .line 421
    new-instance v4, Landroid/widget/AbsListView$LayoutParams;

    const/4 v5, -0x1

    iget-object v6, p0, Lcom/vkontakte/android/PhotoAlbumsView$PhotoAlbumsAdapter;->this$0:Lcom/vkontakte/android/PhotoAlbumsView;

    invoke-static {v6}, Lcom/vkontakte/android/PhotoAlbumsView;->access$7(Lcom/vkontakte/android/PhotoAlbumsView;)I

    move-result v6

    invoke-direct {v4, v5, v6}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 423
    :cond_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p2, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 424
    const v4, 0x7f090126

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iget-object v5, v0, Lcom/vkontakte/android/api/PhotoAlbum;->title:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 425
    const v4, 0x7f090127

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iget v5, v0, Lcom/vkontakte/android/api/PhotoAlbum;->numPhotos:I

    if-lez v5, :cond_5

    const v5, 0x7f0d0014

    iget v6, v0, Lcom/vkontakte/android/api/PhotoAlbum;->numPhotos:I

    iget-object v7, p0, Lcom/vkontakte/android/PhotoAlbumsView$PhotoAlbumsAdapter;->this$0:Lcom/vkontakte/android/PhotoAlbumsView;

    invoke-virtual {v7}, Lcom/vkontakte/android/PhotoAlbumsView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/vkontakte/android/Global;->langPlural(IILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v5

    :goto_2
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 427
    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iget-object v4, p0, Lcom/vkontakte/android/PhotoAlbumsView$PhotoAlbumsAdapter;->this$0:Lcom/vkontakte/android/PhotoAlbumsView;

    invoke-static {v4}, Lcom/vkontakte/android/PhotoAlbumsView;->access$8(Lcom/vkontakte/android/PhotoAlbumsView;)I

    move-result v4

    sget v6, Lcom/vkontakte/android/Global;->uid:I

    if-eq v4, v6, :cond_2

    iget-object v4, p0, Lcom/vkontakte/android/PhotoAlbumsView$PhotoAlbumsAdapter;->this$0:Lcom/vkontakte/android/PhotoAlbumsView;

    invoke-static {v4}, Lcom/vkontakte/android/PhotoAlbumsView;->access$8(Lcom/vkontakte/android/PhotoAlbumsView;)I

    move-result v4

    if-nez v4, :cond_6

    :cond_2
    iget v4, v0, Lcom/vkontakte/android/api/PhotoAlbum;->id:I

    if-lez v4, :cond_6

    iget-object v4, p0, Lcom/vkontakte/android/PhotoAlbumsView$PhotoAlbumsAdapter;->this$0:Lcom/vkontakte/android/PhotoAlbumsView;

    invoke-static {v4}, Lcom/vkontakte/android/PhotoAlbumsView;->access$9(Lcom/vkontakte/android/PhotoAlbumsView;)Z

    move-result v4

    if-eqz v4, :cond_6

    const/4 v4, 0x0

    :goto_3
    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    .line 428
    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 429
    instance-of v4, v0, Lcom/vkontakte/android/api/MultiThumbPhotoAlbum;

    if-eqz v4, :cond_9

    move-object v2, v0

    .line 430
    check-cast v2, Lcom/vkontakte/android/api/MultiThumbPhotoAlbum;

    .line 431
    .local v2, "mt":Lcom/vkontakte/android/api/MultiThumbPhotoAlbum;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    iget-object v4, v2, Lcom/vkontakte/android/api/MultiThumbPhotoAlbum;->thumbs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v1, v4, :cond_7

    .line 443
    .end local v1    # "i":I
    .end local v2    # "mt":Lcom/vkontakte/android/api/MultiThumbPhotoAlbum;
    :goto_5
    return-object p2

    .line 413
    .end local v0    # "a":Lcom/vkontakte/android/api/PhotoAlbum;
    :cond_3
    iget-object v4, p0, Lcom/vkontakte/android/PhotoAlbumsView$PhotoAlbumsAdapter;->this$0:Lcom/vkontakte/android/PhotoAlbumsView;

    invoke-static {v4}, Lcom/vkontakte/android/PhotoAlbumsView;->access$5(Lcom/vkontakte/android/PhotoAlbumsView;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr p1, v4

    .line 414
    iget-object v4, p0, Lcom/vkontakte/android/PhotoAlbumsView$PhotoAlbumsAdapter;->this$0:Lcom/vkontakte/android/PhotoAlbumsView;

    invoke-static {v4}, Lcom/vkontakte/android/PhotoAlbumsView;->access$0(Lcom/vkontakte/android/PhotoAlbumsView;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/api/PhotoAlbum;

    .restart local v0    # "a":Lcom/vkontakte/android/api/PhotoAlbum;
    goto/16 :goto_0

    .line 417
    :cond_4
    const v4, 0x7f03006c

    goto/16 :goto_1

    .line 425
    :cond_5
    iget-object v5, p0, Lcom/vkontakte/android/PhotoAlbumsView$PhotoAlbumsAdapter;->this$0:Lcom/vkontakte/android/PhotoAlbumsView;

    invoke-virtual {v5}, Lcom/vkontakte/android/PhotoAlbumsView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0800db

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    .line 427
    :cond_6
    const/16 v4, 0x8

    goto :goto_3

    .line 432
    .restart local v1    # "i":I
    .restart local v2    # "mt":Lcom/vkontakte/android/api/MultiThumbPhotoAlbum;
    :cond_7
    iget-object v4, p0, Lcom/vkontakte/android/PhotoAlbumsView$PhotoAlbumsAdapter;->this$0:Lcom/vkontakte/android/PhotoAlbumsView;

    invoke-static {v4}, Lcom/vkontakte/android/PhotoAlbumsView;->access$10(Lcom/vkontakte/android/PhotoAlbumsView;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    move-result-object v5

    iget-object v4, v2, Lcom/vkontakte/android/api/MultiThumbPhotoAlbum;->thumbs:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->isAlreadyLoaded(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 433
    iget-object v4, p0, Lcom/vkontakte/android/PhotoAlbumsView$PhotoAlbumsAdapter;->this$0:Lcom/vkontakte/android/PhotoAlbumsView;

    invoke-static {v4, v1}, Lcom/vkontakte/android/PhotoAlbumsView;->access$11(Lcom/vkontakte/android/PhotoAlbumsView;I)I

    move-result v4

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/vkontakte/android/PhotoAlbumsView$PhotoAlbumsAdapter;->this$0:Lcom/vkontakte/android/PhotoAlbumsView;

    invoke-static {v5}, Lcom/vkontakte/android/PhotoAlbumsView;->access$10(Lcom/vkontakte/android/PhotoAlbumsView;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    move-result-object v6

    iget-object v5, v2, Lcom/vkontakte/android/api/MultiThumbPhotoAlbum;->thumbs:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 431
    :goto_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 435
    :cond_8
    iget-object v4, p0, Lcom/vkontakte/android/PhotoAlbumsView$PhotoAlbumsAdapter;->this$0:Lcom/vkontakte/android/PhotoAlbumsView;

    invoke-static {v4, v1}, Lcom/vkontakte/android/PhotoAlbumsView;->access$11(Lcom/vkontakte/android/PhotoAlbumsView;I)I

    move-result v4

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    new-instance v5, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v5, v9}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_6

    .line 438
    .end local v1    # "i":I
    .end local v2    # "mt":Lcom/vkontakte/android/api/MultiThumbPhotoAlbum;
    :cond_9
    iget-object v4, v0, Lcom/vkontakte/android/api/PhotoAlbum;->thumbURL:Ljava/lang/String;

    if-eqz v4, :cond_a

    iget-object v4, v0, Lcom/vkontakte/android/api/PhotoAlbum;->thumbURL:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_a

    iget-object v4, v0, Lcom/vkontakte/android/api/PhotoAlbum;->thumbURL:Ljava/lang/String;

    const-string v5, "gif"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_a

    iget-object v4, p0, Lcom/vkontakte/android/PhotoAlbumsView$PhotoAlbumsAdapter;->this$0:Lcom/vkontakte/android/PhotoAlbumsView;

    invoke-static {v4}, Lcom/vkontakte/android/PhotoAlbumsView;->access$10(Lcom/vkontakte/android/PhotoAlbumsView;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    move-result-object v4

    iget-object v5, v0, Lcom/vkontakte/android/api/PhotoAlbum;->thumbURL:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->isAlreadyLoaded(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 439
    invoke-virtual {p2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/vkontakte/android/PhotoAlbumsView$PhotoAlbumsAdapter;->this$0:Lcom/vkontakte/android/PhotoAlbumsView;

    invoke-static {v5}, Lcom/vkontakte/android/PhotoAlbumsView;->access$10(Lcom/vkontakte/android/PhotoAlbumsView;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    move-result-object v5

    iget-object v6, v0, Lcom/vkontakte/android/api/PhotoAlbum;->thumbURL:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_5

    .line 441
    :cond_a
    invoke-virtual {p2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    new-instance v5, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v5, v9}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_5
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 391
    const/4 v0, 0x2

    return v0
.end method
