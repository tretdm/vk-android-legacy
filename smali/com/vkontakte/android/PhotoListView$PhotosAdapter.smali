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
    .line 337
    iput-object p1, p0, Lcom/vkontakte/android/PhotoListView$PhotosAdapter;->this$0:Lcom/vkontakte/android/PhotoListView;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 338
    const/4 v0, -0x1

    iput v0, p0, Lcom/vkontakte/android/PhotoListView$PhotosAdapter;->lastPosition:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkontakte/android/PhotoListView;Lcom/vkontakte/android/PhotoListView$PhotosAdapter;)V
    .locals 0

    .prologue
    .line 337
    invoke-direct {p0, p1}, Lcom/vkontakte/android/PhotoListView$PhotosAdapter;-><init>(Lcom/vkontakte/android/PhotoListView;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 6

    .prologue
    .line 342
    iget-object v2, p0, Lcom/vkontakte/android/PhotoListView$PhotosAdapter;->this$0:Lcom/vkontakte/android/PhotoListView;

    invoke-static {v2}, Lcom/vkontakte/android/PhotoListView;->access$3(Lcom/vkontakte/android/PhotoListView;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/vkontakte/android/PhotoListView$PhotosAdapter;->this$0:Lcom/vkontakte/android/PhotoListView;

    invoke-static {v2}, Lcom/vkontakte/android/PhotoListView;->access$1(Lcom/vkontakte/android/PhotoListView;)Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-lez v2, :cond_4

    .line 343
    iget-object v2, p0, Lcom/vkontakte/android/PhotoListView$PhotosAdapter;->this$0:Lcom/vkontakte/android/PhotoListView;

    invoke-virtual {v2}, Lcom/vkontakte/android/PhotoListView;->getWidth()I

    move-result v1

    .line 344
    .local v1, "w":I
    if-nez v1, :cond_0

    iget-object v2, p0, Lcom/vkontakte/android/PhotoListView$PhotosAdapter;->this$0:Lcom/vkontakte/android/PhotoListView;

    invoke-virtual {v2}, Lcom/vkontakte/android/PhotoListView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v1, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 345
    :cond_0
    iget-object v2, p0, Lcom/vkontakte/android/PhotoListView$PhotosAdapter;->this$0:Lcom/vkontakte/android/PhotoListView;

    invoke-static {v2}, Lcom/vkontakte/android/PhotoListView;->access$4(Lcom/vkontakte/android/PhotoListView;)I

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/vkontakte/android/PhotoListView$PhotosAdapter;->this$0:Lcom/vkontakte/android/PhotoListView;

    invoke-static {v2}, Lcom/vkontakte/android/PhotoListView;->access$5(Lcom/vkontakte/android/PhotoListView;)I

    move-result v2

    if-nez v2, :cond_2

    .line 346
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

    .line 347
    iget-object v2, p0, Lcom/vkontakte/android/PhotoListView$PhotosAdapter;->this$0:Lcom/vkontakte/android/PhotoListView;

    const/16 v3, 0x69

    invoke-static {v2, v3}, Lcom/vkontakte/android/PhotoListView;->access$6(Lcom/vkontakte/android/PhotoListView;I)V

    .line 348
    iget-object v2, p0, Lcom/vkontakte/android/PhotoListView$PhotosAdapter;->this$0:Lcom/vkontakte/android/PhotoListView;

    const/16 v3, 0xa

    invoke-static {v2, v3}, Lcom/vkontakte/android/PhotoListView;->access$7(Lcom/vkontakte/android/PhotoListView;I)V

    .line 354
    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/vkontakte/android/PhotoListView$PhotosAdapter;->this$0:Lcom/vkontakte/android/PhotoListView;

    invoke-static {v2}, Lcom/vkontakte/android/PhotoListView;->access$4(Lcom/vkontakte/android/PhotoListView;)I

    move-result v2

    iget-object v3, p0, Lcom/vkontakte/android/PhotoListView$PhotosAdapter;->this$0:Lcom/vkontakte/android/PhotoListView;

    invoke-static {v3}, Lcom/vkontakte/android/PhotoListView;->access$5(Lcom/vkontakte/android/PhotoListView;)I

    move-result v3

    add-int/2addr v2, v3

    div-int v2, v1, v2

    iget-object v3, p0, Lcom/vkontakte/android/PhotoListView$PhotosAdapter;->this$0:Lcom/vkontakte/android/PhotoListView;

    invoke-static {v3}, Lcom/vkontakte/android/PhotoListView;->access$1(Lcom/vkontakte/android/PhotoListView;)Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    iget-object v4, p0, Lcom/vkontakte/android/PhotoListView$PhotosAdapter;->this$0:Lcom/vkontakte/android/PhotoListView;

    invoke-static {v4}, Lcom/vkontakte/android/PhotoListView;->access$4(Lcom/vkontakte/android/PhotoListView;)I

    move-result v4

    iget-object v5, p0, Lcom/vkontakte/android/PhotoListView$PhotosAdapter;->this$0:Lcom/vkontakte/android/PhotoListView;

    invoke-static {v5}, Lcom/vkontakte/android/PhotoListView;->access$5(Lcom/vkontakte/android/PhotoListView;)I

    move-result v5

    add-int/2addr v4, v5

    div-int v4, v1, v4

    rem-int/2addr v3, v4

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/vkontakte/android/PhotoListView$PhotosAdapter;->this$0:Lcom/vkontakte/android/PhotoListView;

    invoke-static {v3}, Lcom/vkontakte/android/PhotoListView;->access$4(Lcom/vkontakte/android/PhotoListView;)I

    move-result v3

    iget-object v4, p0, Lcom/vkontakte/android/PhotoListView$PhotosAdapter;->this$0:Lcom/vkontakte/android/PhotoListView;

    invoke-static {v4}, Lcom/vkontakte/android/PhotoListView;->access$5(Lcom/vkontakte/android/PhotoListView;)I

    move-result v4

    add-int/2addr v3, v4

    div-int v3, v1, v3

    rem-int v0, v2, v3

    .line 355
    .local v0, "add":I
    iget-object v2, p0, Lcom/vkontakte/android/PhotoListView$PhotosAdapter;->this$0:Lcom/vkontakte/android/PhotoListView;

    invoke-static {v2}, Lcom/vkontakte/android/PhotoListView;->access$1(Lcom/vkontakte/android/PhotoListView;)Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    add-int/2addr v2, v0

    iput v2, p0, Lcom/vkontakte/android/PhotoListView$PhotosAdapter;->lastPosition:I

    .line 356
    iget v2, p0, Lcom/vkontakte/android/PhotoListView$PhotosAdapter;->lastPosition:I

    add-int/lit8 v2, v2, 0x1

    .line 358
    .end local v0    # "add":I
    .end local v1    # "w":I
    :goto_1
    return v2

    .line 350
    .restart local v1    # "w":I
    :cond_3
    iget-object v2, p0, Lcom/vkontakte/android/PhotoListView$PhotosAdapter;->this$0:Lcom/vkontakte/android/PhotoListView;

    const/high16 v3, 0x428c0000    # 70.0f

    invoke-static {v3}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v3

    invoke-static {v2, v3}, Lcom/vkontakte/android/PhotoListView;->access$6(Lcom/vkontakte/android/PhotoListView;I)V

    .line 351
    iget-object v2, p0, Lcom/vkontakte/android/PhotoListView$PhotosAdapter;->this$0:Lcom/vkontakte/android/PhotoListView;

    const/high16 v3, 0x40e00000    # 7.0f

    invoke-static {v3}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v3

    invoke-static {v2, v3}, Lcom/vkontakte/android/PhotoListView;->access$7(Lcom/vkontakte/android/PhotoListView;I)V

    goto :goto_0

    .line 358
    .end local v1    # "w":I
    :cond_4
    iget-object v2, p0, Lcom/vkontakte/android/PhotoListView$PhotosAdapter;->this$0:Lcom/vkontakte/android/PhotoListView;

    invoke-static {v2}, Lcom/vkontakte/android/PhotoListView;->access$1(Lcom/vkontakte/android/PhotoListView;)Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    goto :goto_1
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "pos"    # I

    .prologue
    .line 363
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "pos"    # I

    .prologue
    .line 368
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "pos"    # I

    .prologue
    .line 376
    iget-object v0, p0, Lcom/vkontakte/android/PhotoListView$PhotosAdapter;->this$0:Lcom/vkontakte/android/PhotoListView;

    invoke-static {v0}, Lcom/vkontakte/android/PhotoListView;->access$1(Lcom/vkontakte/android/PhotoListView;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    const/4 v0, 0x0

    .line 378
    :goto_0
    return v0

    .line 377
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/PhotoListView$PhotosAdapter;->this$0:Lcom/vkontakte/android/PhotoListView;

    invoke-static {v0}, Lcom/vkontakte/android/PhotoListView;->access$1(Lcom/vkontakte/android/PhotoListView;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    iget v0, p0, Lcom/vkontakte/android/PhotoListView$PhotosAdapter;->lastPosition:I

    if-eq p1, v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    .line 378
    :cond_1
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "pos"    # I
    .param p2, "conv"    # Landroid/view/View;
    .param p3, "group"    # Landroid/view/ViewGroup;

    .prologue
    .line 387
    iget-object v4, p0, Lcom/vkontakte/android/PhotoListView$PhotosAdapter;->this$0:Lcom/vkontakte/android/PhotoListView;

    invoke-static {v4}, Lcom/vkontakte/android/PhotoListView;->access$1(Lcom/vkontakte/android/PhotoListView;)Ljava/util/Vector;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-ge p1, v4, :cond_3

    .line 389
    if-eqz p2, :cond_1

    instance-of v4, p2, Lcom/vkontakte/android/ui/PhotoListItem;

    if-eqz v4, :cond_1

    move-object v1, p2

    check-cast v1, Lcom/vkontakte/android/ui/PhotoListItem;

    .line 395
    .local v1, "item":Lcom/vkontakte/android/ui/PhotoListItem;
    :goto_0
    iget-object v4, p0, Lcom/vkontakte/android/PhotoListView$PhotosAdapter;->this$0:Lcom/vkontakte/android/PhotoListView;

    invoke-static {v4}, Lcom/vkontakte/android/PhotoListView;->access$8(Lcom/vkontakte/android/PhotoListView;)Lcom/vkontakte/android/ui/ListImageLoader;

    move-result-object v5

    iget-object v4, p0, Lcom/vkontakte/android/PhotoListView$PhotosAdapter;->this$0:Lcom/vkontakte/android/PhotoListView;

    invoke-static {v4}, Lcom/vkontakte/android/PhotoListView;->access$1(Lcom/vkontakte/android/PhotoListView;)Ljava/util/Vector;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vkontakte/android/Photo;

    iget-object v4, v4, Lcom/vkontakte/android/Photo;->thumbURL:Ljava/lang/String;

    invoke-virtual {v5, v4}, Lcom/vkontakte/android/ui/ListImageLoader;->isAlreadyLoaded(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 396
    iget-object v4, p0, Lcom/vkontakte/android/PhotoListView$PhotosAdapter;->this$0:Lcom/vkontakte/android/PhotoListView;

    invoke-static {v4}, Lcom/vkontakte/android/PhotoListView;->access$8(Lcom/vkontakte/android/PhotoListView;)Lcom/vkontakte/android/ui/ListImageLoader;

    move-result-object v5

    iget-object v4, p0, Lcom/vkontakte/android/PhotoListView$PhotosAdapter;->this$0:Lcom/vkontakte/android/PhotoListView;

    invoke-static {v4}, Lcom/vkontakte/android/PhotoListView;->access$1(Lcom/vkontakte/android/PhotoListView;)Ljava/util/Vector;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vkontakte/android/Photo;

    iget-object v4, v4, Lcom/vkontakte/android/Photo;->thumbURL:Ljava/lang/String;

    invoke-virtual {v5, v4}, Lcom/vkontakte/android/ui/ListImageLoader;->getImage(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/vkontakte/android/ui/PhotoListItem;->setBitmap(Landroid/graphics/Bitmap;)V

    :goto_1
    move-object p2, v1

    .line 417
    .end local v1    # "item":Lcom/vkontakte/android/ui/PhotoListItem;
    .end local p2    # "conv":Landroid/view/View;
    :cond_0
    :goto_2
    return-object p2

    .line 391
    .restart local p2    # "conv":Landroid/view/View;
    :cond_1
    new-instance v1, Lcom/vkontakte/android/ui/PhotoListItem;

    iget-object v4, p0, Lcom/vkontakte/android/PhotoListView$PhotosAdapter;->this$0:Lcom/vkontakte/android/PhotoListView;

    invoke-virtual {v4}, Lcom/vkontakte/android/PhotoListView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/vkontakte/android/ui/PhotoListItem;-><init>(Landroid/content/Context;)V

    .line 392
    .restart local v1    # "item":Lcom/vkontakte/android/ui/PhotoListItem;
    new-instance v4, Landroid/widget/AbsListView$LayoutParams;

    iget-object v5, p0, Lcom/vkontakte/android/PhotoListView$PhotosAdapter;->this$0:Lcom/vkontakte/android/PhotoListView;

    invoke-static {v5}, Lcom/vkontakte/android/PhotoListView;->access$4(Lcom/vkontakte/android/PhotoListView;)I

    move-result v5

    iget-object v6, p0, Lcom/vkontakte/android/PhotoListView$PhotosAdapter;->this$0:Lcom/vkontakte/android/PhotoListView;

    invoke-static {v6}, Lcom/vkontakte/android/PhotoListView;->access$4(Lcom/vkontakte/android/PhotoListView;)I

    move-result v6

    invoke-direct {v4, v5, v6}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v4}, Lcom/vkontakte/android/ui/PhotoListItem;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 398
    :cond_2
    invoke-virtual {v1}, Lcom/vkontakte/android/ui/PhotoListItem;->reset()V

    goto :goto_1

    .line 402
    .end local v1    # "item":Lcom/vkontakte/android/ui/PhotoListItem;
    :cond_3
    iget v4, p0, Lcom/vkontakte/android/PhotoListView$PhotosAdapter;->lastPosition:I

    if-ne p1, v4, :cond_5

    .line 403
    if-nez p2, :cond_4

    .line 404
    new-instance v0, Lcom/vkontakte/android/PhotoListView$FooterView;

    iget-object v4, p0, Lcom/vkontakte/android/PhotoListView$PhotosAdapter;->this$0:Lcom/vkontakte/android/PhotoListView;

    iget-object v5, p0, Lcom/vkontakte/android/PhotoListView$PhotosAdapter;->this$0:Lcom/vkontakte/android/PhotoListView;

    invoke-virtual {v5}, Lcom/vkontakte/android/PhotoListView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Lcom/vkontakte/android/PhotoListView$FooterView;-><init>(Lcom/vkontakte/android/PhotoListView;Landroid/content/Context;)V

    .line 405
    .local v0, "fv":Lcom/vkontakte/android/PhotoListView$FooterView;
    new-instance v2, Landroid/widget/AbsListView$LayoutParams;

    iget-object v4, p0, Lcom/vkontakte/android/PhotoListView$PhotosAdapter;->this$0:Lcom/vkontakte/android/PhotoListView;

    invoke-virtual {v4}, Lcom/vkontakte/android/PhotoListView;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/vkontakte/android/PhotoListView$PhotosAdapter;->this$0:Lcom/vkontakte/android/PhotoListView;

    invoke-static {v5}, Lcom/vkontakte/android/PhotoListView;->access$4(Lcom/vkontakte/android/PhotoListView;)I

    move-result v5

    invoke-direct {v2, v4, v5}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 406
    .local v2, "lp":Landroid/widget/AbsListView$LayoutParams;
    invoke-virtual {v0, v2}, Lcom/vkontakte/android/PhotoListView$FooterView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object p2, v0

    .line 407
    goto :goto_2

    .line 409
    .end local v0    # "fv":Lcom/vkontakte/android/PhotoListView$FooterView;
    .end local v2    # "lp":Landroid/widget/AbsListView$LayoutParams;
    :cond_4
    new-instance v4, Landroid/widget/AbsListView$LayoutParams;

    iget-object v5, p0, Lcom/vkontakte/android/PhotoListView$PhotosAdapter;->this$0:Lcom/vkontakte/android/PhotoListView;

    invoke-virtual {v5}, Lcom/vkontakte/android/PhotoListView;->getWidth()I

    move-result v5

    iget-object v6, p0, Lcom/vkontakte/android/PhotoListView$PhotosAdapter;->this$0:Lcom/vkontakte/android/PhotoListView;

    invoke-static {v6}, Lcom/vkontakte/android/PhotoListView;->access$4(Lcom/vkontakte/android/PhotoListView;)I

    move-result v6

    invoke-direct {v4, v5, v6}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    .line 412
    :cond_5
    if-nez p2, :cond_0

    .line 413
    new-instance v3, Landroid/view/View;

    iget-object v4, p0, Lcom/vkontakte/android/PhotoListView$PhotosAdapter;->this$0:Lcom/vkontakte/android/PhotoListView;

    invoke-virtual {v4}, Lcom/vkontakte/android/PhotoListView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 414
    .local v3, "v":Landroid/view/View;
    new-instance v4, Landroid/widget/AbsListView$LayoutParams;

    iget-object v5, p0, Lcom/vkontakte/android/PhotoListView$PhotosAdapter;->this$0:Lcom/vkontakte/android/PhotoListView;

    invoke-static {v5}, Lcom/vkontakte/android/PhotoListView;->access$4(Lcom/vkontakte/android/PhotoListView;)I

    move-result v5

    iget-object v6, p0, Lcom/vkontakte/android/PhotoListView$PhotosAdapter;->this$0:Lcom/vkontakte/android/PhotoListView;

    invoke-static {v6}, Lcom/vkontakte/android/PhotoListView;->access$4(Lcom/vkontakte/android/PhotoListView;)I

    move-result v6

    invoke-direct {v4, v5, v6}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object p2, v3

    .line 415
    goto/16 :goto_2
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 372
    const/4 v0, 0x3

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "pos"    # I

    .prologue
    .line 382
    iget-object v0, p0, Lcom/vkontakte/android/PhotoListView$PhotosAdapter;->this$0:Lcom/vkontakte/android/PhotoListView;

    invoke-static {v0}, Lcom/vkontakte/android/PhotoListView;->access$1(Lcom/vkontakte/android/PhotoListView;)Ljava/util/Vector;

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
