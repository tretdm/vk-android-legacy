.class Lcom/vkontakte/android/PhotoListView$PhotosAdapter;
.super Landroid/widget/BaseAdapter;
.source "PhotoListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/PhotoListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PhotosAdapter"
.end annotation


# instance fields
.field lastPosition:I

.field final synthetic this$0:Lcom/vkontakte/android/PhotoListView;


# direct methods
.method private constructor <init>(Lcom/vkontakte/android/PhotoListView;)V
    .locals 1

    .prologue
    .line 402
    iput-object p1, p0, Lcom/vkontakte/android/PhotoListView$PhotosAdapter;->this$0:Lcom/vkontakte/android/PhotoListView;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 403
    const/4 v0, -0x1

    iput v0, p0, Lcom/vkontakte/android/PhotoListView$PhotosAdapter;->lastPosition:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkontakte/android/PhotoListView;Lcom/vkontakte/android/PhotoListView$PhotosAdapter;)V
    .locals 0

    .prologue
    .line 402
    invoke-direct {p0, p1}, Lcom/vkontakte/android/PhotoListView$PhotosAdapter;-><init>(Lcom/vkontakte/android/PhotoListView;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 6

    .prologue
    .line 407
    iget-object v2, p0, Lcom/vkontakte/android/PhotoListView$PhotosAdapter;->this$0:Lcom/vkontakte/android/PhotoListView;

    invoke-static {v2}, Lcom/vkontakte/android/PhotoListView;->access$4(Lcom/vkontakte/android/PhotoListView;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/vkontakte/android/PhotoListView$PhotosAdapter;->this$0:Lcom/vkontakte/android/PhotoListView;

    invoke-static {v2}, Lcom/vkontakte/android/PhotoListView;->access$2(Lcom/vkontakte/android/PhotoListView;)Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-lez v2, :cond_4

    .line 408
    iget-object v2, p0, Lcom/vkontakte/android/PhotoListView$PhotosAdapter;->this$0:Lcom/vkontakte/android/PhotoListView;

    invoke-virtual {v2}, Lcom/vkontakte/android/PhotoListView;->getWidth()I

    move-result v1

    .line 409
    .local v1, "w":I
    if-nez v1, :cond_0

    iget-object v2, p0, Lcom/vkontakte/android/PhotoListView$PhotosAdapter;->this$0:Lcom/vkontakte/android/PhotoListView;

    invoke-virtual {v2}, Lcom/vkontakte/android/PhotoListView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v1, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 410
    :cond_0
    iget-object v2, p0, Lcom/vkontakte/android/PhotoListView$PhotosAdapter;->this$0:Lcom/vkontakte/android/PhotoListView;

    invoke-static {v2}, Lcom/vkontakte/android/PhotoListView;->access$5(Lcom/vkontakte/android/PhotoListView;)I

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/vkontakte/android/PhotoListView$PhotosAdapter;->this$0:Lcom/vkontakte/android/PhotoListView;

    invoke-static {v2}, Lcom/vkontakte/android/PhotoListView;->access$6(Lcom/vkontakte/android/PhotoListView;)I

    move-result v2

    if-nez v2, :cond_2

    .line 411
    :cond_1
    iget-object v2, p0, Lcom/vkontakte/android/PhotoListView$PhotosAdapter;->this$0:Lcom/vkontakte/android/PhotoListView;

    invoke-virtual {v2}, Lcom/vkontakte/android/PhotoListView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v2, v2, 0xf

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3

    .line 412
    iget-object v2, p0, Lcom/vkontakte/android/PhotoListView$PhotosAdapter;->this$0:Lcom/vkontakte/android/PhotoListView;

    const/16 v3, 0x69

    invoke-static {v2, v3}, Lcom/vkontakte/android/PhotoListView;->access$7(Lcom/vkontakte/android/PhotoListView;I)V

    .line 413
    iget-object v2, p0, Lcom/vkontakte/android/PhotoListView$PhotosAdapter;->this$0:Lcom/vkontakte/android/PhotoListView;

    const/16 v3, 0xa

    invoke-static {v2, v3}, Lcom/vkontakte/android/PhotoListView;->access$8(Lcom/vkontakte/android/PhotoListView;I)V

    .line 419
    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/vkontakte/android/PhotoListView$PhotosAdapter;->this$0:Lcom/vkontakte/android/PhotoListView;

    invoke-static {v2}, Lcom/vkontakte/android/PhotoListView;->access$5(Lcom/vkontakte/android/PhotoListView;)I

    move-result v2

    iget-object v3, p0, Lcom/vkontakte/android/PhotoListView$PhotosAdapter;->this$0:Lcom/vkontakte/android/PhotoListView;

    invoke-static {v3}, Lcom/vkontakte/android/PhotoListView;->access$6(Lcom/vkontakte/android/PhotoListView;)I

    move-result v3

    add-int/2addr v2, v3

    div-int v2, v1, v2

    iget-object v3, p0, Lcom/vkontakte/android/PhotoListView$PhotosAdapter;->this$0:Lcom/vkontakte/android/PhotoListView;

    invoke-static {v3}, Lcom/vkontakte/android/PhotoListView;->access$2(Lcom/vkontakte/android/PhotoListView;)Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    iget-object v4, p0, Lcom/vkontakte/android/PhotoListView$PhotosAdapter;->this$0:Lcom/vkontakte/android/PhotoListView;

    invoke-static {v4}, Lcom/vkontakte/android/PhotoListView;->access$5(Lcom/vkontakte/android/PhotoListView;)I

    move-result v4

    iget-object v5, p0, Lcom/vkontakte/android/PhotoListView$PhotosAdapter;->this$0:Lcom/vkontakte/android/PhotoListView;

    invoke-static {v5}, Lcom/vkontakte/android/PhotoListView;->access$6(Lcom/vkontakte/android/PhotoListView;)I

    move-result v5

    add-int/2addr v4, v5

    div-int v4, v1, v4

    rem-int/2addr v3, v4

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/vkontakte/android/PhotoListView$PhotosAdapter;->this$0:Lcom/vkontakte/android/PhotoListView;

    invoke-static {v3}, Lcom/vkontakte/android/PhotoListView;->access$5(Lcom/vkontakte/android/PhotoListView;)I

    move-result v3

    iget-object v4, p0, Lcom/vkontakte/android/PhotoListView$PhotosAdapter;->this$0:Lcom/vkontakte/android/PhotoListView;

    invoke-static {v4}, Lcom/vkontakte/android/PhotoListView;->access$6(Lcom/vkontakte/android/PhotoListView;)I

    move-result v4

    add-int/2addr v3, v4

    div-int v3, v1, v3

    rem-int v0, v2, v3

    .line 420
    .local v0, "add":I
    iget-object v2, p0, Lcom/vkontakte/android/PhotoListView$PhotosAdapter;->this$0:Lcom/vkontakte/android/PhotoListView;

    invoke-static {v2}, Lcom/vkontakte/android/PhotoListView;->access$2(Lcom/vkontakte/android/PhotoListView;)Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    add-int/2addr v2, v0

    iput v2, p0, Lcom/vkontakte/android/PhotoListView$PhotosAdapter;->lastPosition:I

    .line 421
    iget v2, p0, Lcom/vkontakte/android/PhotoListView$PhotosAdapter;->lastPosition:I

    add-int/lit8 v2, v2, 0x1

    .line 423
    .end local v0    # "add":I
    .end local v1    # "w":I
    :goto_1
    return v2

    .line 415
    .restart local v1    # "w":I
    :cond_3
    iget-object v2, p0, Lcom/vkontakte/android/PhotoListView$PhotosAdapter;->this$0:Lcom/vkontakte/android/PhotoListView;

    const/high16 v3, 0x428c0000    # 70.0f

    invoke-static {v3}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v3

    invoke-static {v2, v3}, Lcom/vkontakte/android/PhotoListView;->access$7(Lcom/vkontakte/android/PhotoListView;I)V

    .line 416
    iget-object v2, p0, Lcom/vkontakte/android/PhotoListView$PhotosAdapter;->this$0:Lcom/vkontakte/android/PhotoListView;

    const/high16 v3, 0x40e00000    # 7.0f

    invoke-static {v3}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v3

    invoke-static {v2, v3}, Lcom/vkontakte/android/PhotoListView;->access$8(Lcom/vkontakte/android/PhotoListView;I)V

    goto :goto_0

    .line 423
    .end local v1    # "w":I
    :cond_4
    iget-object v2, p0, Lcom/vkontakte/android/PhotoListView$PhotosAdapter;->this$0:Lcom/vkontakte/android/PhotoListView;

    invoke-static {v2}, Lcom/vkontakte/android/PhotoListView;->access$2(Lcom/vkontakte/android/PhotoListView;)Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    goto :goto_1
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "pos"    # I

    .prologue
    .line 428
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "pos"    # I

    .prologue
    .line 433
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "pos"    # I

    .prologue
    .line 441
    iget-object v0, p0, Lcom/vkontakte/android/PhotoListView$PhotosAdapter;->this$0:Lcom/vkontakte/android/PhotoListView;

    invoke-static {v0}, Lcom/vkontakte/android/PhotoListView;->access$2(Lcom/vkontakte/android/PhotoListView;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    const/4 v0, 0x0

    .line 443
    :goto_0
    return v0

    .line 442
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/PhotoListView$PhotosAdapter;->this$0:Lcom/vkontakte/android/PhotoListView;

    invoke-static {v0}, Lcom/vkontakte/android/PhotoListView;->access$2(Lcom/vkontakte/android/PhotoListView;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    iget v0, p0, Lcom/vkontakte/android/PhotoListView$PhotosAdapter;->lastPosition:I

    if-eq p1, v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    .line 443
    :cond_1
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .param p1, "pos"    # I
    .param p2, "conv"    # Landroid/view/View;
    .param p3, "group"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v6, 0x0

    .line 452
    iget-object v5, p0, Lcom/vkontakte/android/PhotoListView$PhotosAdapter;->this$0:Lcom/vkontakte/android/PhotoListView;

    invoke-static {v5}, Lcom/vkontakte/android/PhotoListView;->access$2(Lcom/vkontakte/android/PhotoListView;)Ljava/util/Vector;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    if-ge p1, v5, :cond_5

    .line 454
    if-eqz p2, :cond_2

    instance-of v5, p2, Lcom/vkontakte/android/ui/PhotoListItem;

    if-eqz v5, :cond_2

    move-object v2, p2

    check-cast v2, Lcom/vkontakte/android/ui/PhotoListItem;

    .line 459
    .local v2, "item":Lcom/vkontakte/android/ui/PhotoListItem;
    :goto_0
    const/4 v1, 0x0

    .line 460
    .local v1, "img":Landroid/graphics/Bitmap;
    iget-object v5, p0, Lcom/vkontakte/android/PhotoListView$PhotosAdapter;->this$0:Lcom/vkontakte/android/PhotoListView;

    invoke-static {v5}, Lcom/vkontakte/android/PhotoListView;->access$9(Lcom/vkontakte/android/PhotoListView;)Lcom/vkontakte/android/ui/ListImageLoader;

    move-result-object v7

    iget-object v5, p0, Lcom/vkontakte/android/PhotoListView$PhotosAdapter;->this$0:Lcom/vkontakte/android/PhotoListView;

    invoke-static {v5}, Lcom/vkontakte/android/PhotoListView;->access$2(Lcom/vkontakte/android/PhotoListView;)Ljava/util/Vector;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vkontakte/android/Photo;

    iget-object v5, v5, Lcom/vkontakte/android/Photo;->thumbURL:Ljava/lang/String;

    invoke-virtual {v7, v5}, Lcom/vkontakte/android/ui/ListImageLoader;->isAlreadyLoaded(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 461
    iget-object v5, p0, Lcom/vkontakte/android/PhotoListView$PhotosAdapter;->this$0:Lcom/vkontakte/android/PhotoListView;

    invoke-static {v5}, Lcom/vkontakte/android/PhotoListView;->access$9(Lcom/vkontakte/android/PhotoListView;)Lcom/vkontakte/android/ui/ListImageLoader;

    move-result-object v7

    iget-object v5, p0, Lcom/vkontakte/android/PhotoListView$PhotosAdapter;->this$0:Lcom/vkontakte/android/PhotoListView;

    invoke-static {v5}, Lcom/vkontakte/android/PhotoListView;->access$2(Lcom/vkontakte/android/PhotoListView;)Ljava/util/Vector;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vkontakte/android/Photo;

    iget-object v5, v5, Lcom/vkontakte/android/Photo;->thumbURL:Ljava/lang/String;

    invoke-virtual {v7, v5}, Lcom/vkontakte/android/ui/ListImageLoader;->getImage(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 464
    :cond_0
    if-eqz v1, :cond_3

    .line 465
    invoke-virtual {v2, v1}, Lcom/vkontakte/android/ui/PhotoListItem;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 469
    :goto_1
    add-int/lit8 v5, p1, 0x1

    iget-object v7, p0, Lcom/vkontakte/android/PhotoListView$PhotosAdapter;->this$0:Lcom/vkontakte/android/PhotoListView;

    invoke-static {v7}, Lcom/vkontakte/android/PhotoListView;->access$5(Lcom/vkontakte/android/PhotoListView;)I

    move-result v7

    iget-object v8, p0, Lcom/vkontakte/android/PhotoListView$PhotosAdapter;->this$0:Lcom/vkontakte/android/PhotoListView;

    invoke-static {v8}, Lcom/vkontakte/android/PhotoListView;->access$6(Lcom/vkontakte/android/PhotoListView;)I

    move-result v8

    add-int/2addr v7, v8

    mul-int/2addr v5, v7

    iget-object v7, p0, Lcom/vkontakte/android/PhotoListView$PhotosAdapter;->this$0:Lcom/vkontakte/android/PhotoListView;

    invoke-virtual {v7}, Lcom/vkontakte/android/PhotoListView;->getWidth()I

    move-result v7

    add-int/lit8 v7, v7, 0x5

    if-ge v5, v7, :cond_4

    const/high16 v5, 0x40e00000    # 7.0f

    invoke-static {v5}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v5

    :goto_2
    invoke-virtual {v2, v6, v5, v6, v6}, Lcom/vkontakte/android/ui/PhotoListItem;->setPadding(IIII)V

    .line 470
    new-instance v5, Landroid/widget/AbsListView$LayoutParams;

    iget-object v6, p0, Lcom/vkontakte/android/PhotoListView$PhotosAdapter;->this$0:Lcom/vkontakte/android/PhotoListView;

    invoke-static {v6}, Lcom/vkontakte/android/PhotoListView;->access$5(Lcom/vkontakte/android/PhotoListView;)I

    move-result v6

    iget-object v7, p0, Lcom/vkontakte/android/PhotoListView$PhotosAdapter;->this$0:Lcom/vkontakte/android/PhotoListView;

    invoke-static {v7}, Lcom/vkontakte/android/PhotoListView;->access$5(Lcom/vkontakte/android/PhotoListView;)I

    move-result v7

    invoke-direct {v5, v6, v7}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v5}, Lcom/vkontakte/android/ui/PhotoListItem;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object p2, v2

    .line 489
    .end local v1    # "img":Landroid/graphics/Bitmap;
    .end local v2    # "item":Lcom/vkontakte/android/ui/PhotoListItem;
    .end local p2    # "conv":Landroid/view/View;
    :cond_1
    :goto_3
    return-object p2

    .line 456
    .restart local p2    # "conv":Landroid/view/View;
    :cond_2
    new-instance v2, Lcom/vkontakte/android/ui/PhotoListItem;

    iget-object v5, p0, Lcom/vkontakte/android/PhotoListView$PhotosAdapter;->this$0:Lcom/vkontakte/android/PhotoListView;

    invoke-virtual {v5}, Lcom/vkontakte/android/PhotoListView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v2, v5}, Lcom/vkontakte/android/ui/PhotoListItem;-><init>(Landroid/content/Context;)V

    .restart local v2    # "item":Lcom/vkontakte/android/ui/PhotoListItem;
    goto :goto_0

    .line 467
    .restart local v1    # "img":Landroid/graphics/Bitmap;
    :cond_3
    invoke-virtual {v2}, Lcom/vkontakte/android/ui/PhotoListItem;->reset()V

    goto :goto_1

    :cond_4
    move v5, v6

    .line 469
    goto :goto_2

    .line 474
    .end local v1    # "img":Landroid/graphics/Bitmap;
    .end local v2    # "item":Lcom/vkontakte/android/ui/PhotoListItem;
    :cond_5
    iget v5, p0, Lcom/vkontakte/android/PhotoListView$PhotosAdapter;->lastPosition:I

    if-ne p1, v5, :cond_7

    .line 475
    if-nez p2, :cond_6

    .line 476
    new-instance v0, Lcom/vkontakte/android/PhotoListView$FooterView;

    iget-object v5, p0, Lcom/vkontakte/android/PhotoListView$PhotosAdapter;->this$0:Lcom/vkontakte/android/PhotoListView;

    iget-object v6, p0, Lcom/vkontakte/android/PhotoListView$PhotosAdapter;->this$0:Lcom/vkontakte/android/PhotoListView;

    invoke-virtual {v6}, Lcom/vkontakte/android/PhotoListView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v0, v5, v6}, Lcom/vkontakte/android/PhotoListView$FooterView;-><init>(Lcom/vkontakte/android/PhotoListView;Landroid/content/Context;)V

    .line 477
    .local v0, "fv":Lcom/vkontakte/android/PhotoListView$FooterView;
    new-instance v3, Landroid/widget/AbsListView$LayoutParams;

    iget-object v5, p0, Lcom/vkontakte/android/PhotoListView$PhotosAdapter;->this$0:Lcom/vkontakte/android/PhotoListView;

    invoke-virtual {v5}, Lcom/vkontakte/android/PhotoListView;->getWidth()I

    move-result v5

    iget-object v6, p0, Lcom/vkontakte/android/PhotoListView$PhotosAdapter;->this$0:Lcom/vkontakte/android/PhotoListView;

    invoke-static {v6}, Lcom/vkontakte/android/PhotoListView;->access$5(Lcom/vkontakte/android/PhotoListView;)I

    move-result v6

    invoke-direct {v3, v5, v6}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 478
    .local v3, "lp":Landroid/widget/AbsListView$LayoutParams;
    invoke-virtual {v0, v3}, Lcom/vkontakte/android/PhotoListView$FooterView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object p2, v0

    .line 479
    goto :goto_3

    .line 481
    .end local v0    # "fv":Lcom/vkontakte/android/PhotoListView$FooterView;
    .end local v3    # "lp":Landroid/widget/AbsListView$LayoutParams;
    :cond_6
    new-instance v5, Landroid/widget/AbsListView$LayoutParams;

    iget-object v6, p0, Lcom/vkontakte/android/PhotoListView$PhotosAdapter;->this$0:Lcom/vkontakte/android/PhotoListView;

    invoke-virtual {v6}, Lcom/vkontakte/android/PhotoListView;->getWidth()I

    move-result v6

    iget-object v7, p0, Lcom/vkontakte/android/PhotoListView$PhotosAdapter;->this$0:Lcom/vkontakte/android/PhotoListView;

    invoke-static {v7}, Lcom/vkontakte/android/PhotoListView;->access$5(Lcom/vkontakte/android/PhotoListView;)I

    move-result v7

    invoke-direct {v5, v6, v7}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_3

    .line 484
    :cond_7
    if-nez p2, :cond_1

    .line 485
    new-instance v4, Landroid/view/View;

    iget-object v5, p0, Lcom/vkontakte/android/PhotoListView$PhotosAdapter;->this$0:Lcom/vkontakte/android/PhotoListView;

    invoke-virtual {v5}, Lcom/vkontakte/android/PhotoListView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 486
    .local v4, "v":Landroid/view/View;
    new-instance v5, Landroid/widget/AbsListView$LayoutParams;

    iget-object v6, p0, Lcom/vkontakte/android/PhotoListView$PhotosAdapter;->this$0:Lcom/vkontakte/android/PhotoListView;

    invoke-static {v6}, Lcom/vkontakte/android/PhotoListView;->access$5(Lcom/vkontakte/android/PhotoListView;)I

    move-result v6

    iget-object v7, p0, Lcom/vkontakte/android/PhotoListView$PhotosAdapter;->this$0:Lcom/vkontakte/android/PhotoListView;

    invoke-static {v7}, Lcom/vkontakte/android/PhotoListView;->access$5(Lcom/vkontakte/android/PhotoListView;)I

    move-result v7

    invoke-direct {v5, v6, v7}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object p2, v4

    .line 487
    goto :goto_3
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 437
    const/4 v0, 0x3

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "pos"    # I

    .prologue
    .line 447
    iget-object v0, p0, Lcom/vkontakte/android/PhotoListView$PhotosAdapter;->this$0:Lcom/vkontakte/android/PhotoListView;

    invoke-static {v0}, Lcom/vkontakte/android/PhotoListView;->access$2(Lcom/vkontakte/android/PhotoListView;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
