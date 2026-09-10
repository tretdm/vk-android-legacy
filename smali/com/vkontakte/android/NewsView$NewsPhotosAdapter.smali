.class public Lcom/vkontakte/android/NewsView$NewsPhotosAdapter;
.super Lcom/vkontakte/android/ui/ListImageLoaderAdapter;
.source "NewsView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/NewsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "NewsPhotosAdapter"
.end annotation


# instance fields
.field offset:I

.field final synthetic this$0:Lcom/vkontakte/android/NewsView;


# direct methods
.method public constructor <init>(Lcom/vkontakte/android/NewsView;I)V
    .locals 0
    .param p2, "offset"    # I

    .prologue
    .line 1456
    iput-object p1, p0, Lcom/vkontakte/android/NewsView$NewsPhotosAdapter;->this$0:Lcom/vkontakte/android/NewsView;

    invoke-direct {p0}, Lcom/vkontakte/android/ui/ListImageLoaderAdapter;-><init>()V

    .line 1457
    iput p2, p0, Lcom/vkontakte/android/NewsView$NewsPhotosAdapter;->offset:I

    .line 1458
    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/NewsView$NewsPhotosAdapter;)Lcom/vkontakte/android/NewsView;
    .locals 1

    .prologue
    .line 1453
    iget-object v0, p0, Lcom/vkontakte/android/NewsView$NewsPhotosAdapter;->this$0:Lcom/vkontakte/android/NewsView;

    return-object v0
.end method


# virtual methods
.method public getImageCountForItem(I)I
    .locals 1
    .param p1, "item"    # I

    .prologue
    .line 1467
    iget-object v0, p0, Lcom/vkontakte/android/NewsView$NewsPhotosAdapter;->this$0:Lcom/vkontakte/android/NewsView;

    invoke-static {v0}, Lcom/vkontakte/android/NewsView;->access$0(Lcom/vkontakte/android/NewsView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/ui/posts/PostDisplayItem;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/posts/PostDisplayItem;->getImageCount()I

    move-result v0

    return v0
.end method

.method public getImageURL(II)Ljava/lang/String;
    .locals 1
    .param p1, "item"    # I
    .param p2, "image"    # I

    .prologue
    .line 1472
    iget-object v0, p0, Lcom/vkontakte/android/NewsView$NewsPhotosAdapter;->this$0:Lcom/vkontakte/android/NewsView;

    invoke-static {v0}, Lcom/vkontakte/android/NewsView;->access$0(Lcom/vkontakte/android/NewsView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/ui/posts/PostDisplayItem;

    invoke-virtual {v0, p2}, Lcom/vkontakte/android/ui/posts/PostDisplayItem;->getImageURL(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 1462
    iget-object v0, p0, Lcom/vkontakte/android/NewsView$NewsPhotosAdapter;->this$0:Lcom/vkontakte/android/NewsView;

    invoke-static {v0}, Lcom/vkontakte/android/NewsView;->access$0(Lcom/vkontakte/android/NewsView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public imageLoaded(IILandroid/graphics/Bitmap;)V
    .locals 8
    .param p1, "_item"    # I
    .param p2, "image"    # I
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 1477
    iget-object v0, p0, Lcom/vkontakte/android/NewsView$NewsPhotosAdapter;->this$0:Lcom/vkontakte/android/NewsView;

    iget-object v0, v0, Lcom/vkontakte/android/NewsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/RefreshableListView;->getHeaderViewsCount()I

    move-result v0

    add-int v6, p1, v0

    .line 1478
    .local v6, "item":I
    iget-object v0, p0, Lcom/vkontakte/android/NewsView$NewsPhotosAdapter;->this$0:Lcom/vkontakte/android/NewsView;

    iget-object v0, v0, Lcom/vkontakte/android/NewsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/RefreshableListView;->getFirstVisiblePosition()I

    move-result v0

    if-lt v6, v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/NewsView$NewsPhotosAdapter;->this$0:Lcom/vkontakte/android/NewsView;

    iget-object v0, v0, Lcom/vkontakte/android/NewsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/RefreshableListView;->getLastVisiblePosition()I

    move-result v0

    if-le v6, v0, :cond_1

    .line 1489
    :cond_0
    :goto_0
    return-void

    .line 1481
    :cond_1
    iget-object v0, p0, Lcom/vkontakte/android/NewsView$NewsPhotosAdapter;->this$0:Lcom/vkontakte/android/NewsView;

    iget-object v0, v0, Lcom/vkontakte/android/NewsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    iget-object v1, p0, Lcom/vkontakte/android/NewsView$NewsPhotosAdapter;->this$0:Lcom/vkontakte/android/NewsView;

    iget-object v1, v1, Lcom/vkontakte/android/NewsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v1}, Lcom/vkontakte/android/ui/RefreshableListView;->getFirstVisiblePosition()I

    move-result v1

    sub-int v1, v6, v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/RefreshableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1482
    .local v2, "view":Landroid/view/View;
    iget-object v7, p0, Lcom/vkontakte/android/NewsView$NewsPhotosAdapter;->this$0:Lcom/vkontakte/android/NewsView;

    new-instance v0, Lcom/vkontakte/android/NewsView$NewsPhotosAdapter$1;

    move-object v1, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/vkontakte/android/NewsView$NewsPhotosAdapter$1;-><init>(Lcom/vkontakte/android/NewsView$NewsPhotosAdapter;Landroid/view/View;IILandroid/graphics/Bitmap;)V

    invoke-virtual {v7, v0}, Lcom/vkontakte/android/NewsView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
