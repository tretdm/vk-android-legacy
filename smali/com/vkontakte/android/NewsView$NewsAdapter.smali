.class public Lcom/vkontakte/android/NewsView$NewsAdapter;
.super Landroid/widget/BaseAdapter;
.source "NewsView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/NewsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "NewsAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/NewsView;


# direct methods
.method protected constructor <init>(Lcom/vkontakte/android/NewsView;)V
    .locals 0

    .prologue
    .line 1385
    iput-object p1, p0, Lcom/vkontakte/android/NewsView$NewsAdapter;->this$0:Lcom/vkontakte/android/NewsView;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 1408
    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 1388
    iget-object v0, p0, Lcom/vkontakte/android/NewsView$NewsAdapter;->this$0:Lcom/vkontakte/android/NewsView;

    invoke-static {v0}, Lcom/vkontakte/android/NewsView;->access$0(Lcom/vkontakte/android/NewsView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "pos"    # I

    .prologue
    .line 1393
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 1398
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "pos"    # I

    .prologue
    .line 1418
    iget-object v0, p0, Lcom/vkontakte/android/NewsView$NewsAdapter;->this$0:Lcom/vkontakte/android/NewsView;

    invoke-static {v0}, Lcom/vkontakte/android/NewsView;->access$0(Lcom/vkontakte/android/NewsView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/ui/posts/PostDisplayItem;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/posts/PostDisplayItem;->getType()I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "position"    # I
    .param p2, "cview"    # Landroid/view/View;
    .param p3, "group"    # Landroid/view/ViewGroup;

    .prologue
    .line 1423
    iget-object v5, p0, Lcom/vkontakte/android/NewsView$NewsAdapter;->this$0:Lcom/vkontakte/android/NewsView;

    invoke-static {v5}, Lcom/vkontakte/android/NewsView;->access$0(Lcom/vkontakte/android/NewsView;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/ui/posts/PostDisplayItem;

    .line 1424
    .local v2, "item":Lcom/vkontakte/android/ui/posts/PostDisplayItem;
    iget-object v5, p0, Lcom/vkontakte/android/NewsView$NewsAdapter;->this$0:Lcom/vkontakte/android/NewsView;

    invoke-virtual {v5}, Lcom/vkontakte/android/NewsView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v2, v5, p2}, Lcom/vkontakte/android/ui/posts/PostDisplayItem;->getView(Landroid/content/Context;Landroid/view/View;)Landroid/view/View;

    move-result-object v4

    .line 1425
    .local v4, "view":Landroid/view/View;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v2}, Lcom/vkontakte/android/ui/posts/PostDisplayItem;->getImageCount()I

    move-result v5

    if-lt v1, v5, :cond_2

    .line 1432
    iget-object v5, p0, Lcom/vkontakte/android/NewsView$NewsAdapter;->this$0:Lcom/vkontakte/android/NewsView;

    invoke-static {v5}, Lcom/vkontakte/android/NewsView;->access$1(Lcom/vkontakte/android/NewsView;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1433
    const/4 v0, 0x0

    .line 1434
    .local v0, "bg":I
    iget v5, v2, Lcom/vkontakte/android/ui/posts/PostDisplayItem;->bgType:I

    packed-switch v5, :pswitch_data_0

    .line 1445
    :goto_1
    if-eqz v0, :cond_0

    .line 1446
    invoke-virtual {v4, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1447
    :cond_0
    new-instance v5, Landroid/widget/AbsListView$LayoutParams;

    const/4 v6, -0x1

    const/4 v7, -0x2

    invoke-direct {v5, v6, v7}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1449
    .end local v0    # "bg":I
    :cond_1
    return-object v4

    .line 1426
    :cond_2
    invoke-virtual {v2, v1}, Lcom/vkontakte/android/ui/posts/PostDisplayItem;->getImageURL(I)Ljava/lang/String;

    move-result-object v3

    .line 1427
    .local v3, "url":Ljava/lang/String;
    iget-object v5, p0, Lcom/vkontakte/android/NewsView$NewsAdapter;->this$0:Lcom/vkontakte/android/NewsView;

    iget-object v5, v5, Lcom/vkontakte/android/NewsView;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-virtual {v5, v3}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->isAlreadyLoaded(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1428
    iget-object v5, p0, Lcom/vkontakte/android/NewsView$NewsAdapter;->this$0:Lcom/vkontakte/android/NewsView;

    iget-object v5, v5, Lcom/vkontakte/android/NewsView;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-virtual {v5, v3}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v2, v1, v4, v5, v6}, Lcom/vkontakte/android/ui/posts/PostDisplayItem;->setImage(ILandroid/view/View;Landroid/graphics/Bitmap;Z)V

    .line 1425
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1430
    :cond_3
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v1, v4, v5, v6}, Lcom/vkontakte/android/ui/posts/PostDisplayItem;->setImage(ILandroid/view/View;Landroid/graphics/Bitmap;Z)V

    goto :goto_2

    .line 1436
    .end local v3    # "url":Ljava/lang/String;
    .restart local v0    # "bg":I
    :pswitch_0
    const v0, 0x7f0200af

    .line 1437
    goto :goto_1

    .line 1439
    :pswitch_1
    const v0, 0x7f0200b0

    .line 1440
    goto :goto_1

    .line 1442
    :pswitch_2
    const v0, 0x7f0200ad

    goto :goto_1

    .line 1434
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 1413
    const/16 v0, 0x14

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 1403
    iget-object v0, p0, Lcom/vkontakte/android/NewsView$NewsAdapter;->this$0:Lcom/vkontakte/android/NewsView;

    invoke-static {v0}, Lcom/vkontakte/android/NewsView;->access$0(Lcom/vkontakte/android/NewsView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/ui/posts/PostDisplayItem;

    iget-boolean v0, v0, Lcom/vkontakte/android/ui/posts/PostDisplayItem;->clickable:Z

    return v0
.end method
