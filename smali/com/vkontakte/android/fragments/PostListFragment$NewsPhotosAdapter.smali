.class public Lcom/vkontakte/android/fragments/PostListFragment$NewsPhotosAdapter;
.super Lcom/vkontakte/android/ui/ListImageLoaderAdapter;
.source "PostListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/fragments/PostListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "NewsPhotosAdapter"
.end annotation


# instance fields
.field offset:I

.field final synthetic this$0:Lcom/vkontakte/android/fragments/PostListFragment;


# direct methods
.method public constructor <init>(Lcom/vkontakte/android/fragments/PostListFragment;I)V
    .locals 0
    .param p2, "offset"    # I

    .prologue
    .line 796
    iput-object p1, p0, Lcom/vkontakte/android/fragments/PostListFragment$NewsPhotosAdapter;->this$0:Lcom/vkontakte/android/fragments/PostListFragment;

    invoke-direct {p0}, Lcom/vkontakte/android/ui/ListImageLoaderAdapter;-><init>()V

    .line 797
    iput p2, p0, Lcom/vkontakte/android/fragments/PostListFragment$NewsPhotosAdapter;->offset:I

    .line 798
    return-void
.end method


# virtual methods
.method public getImageCountForItem(I)I
    .locals 1
    .param p1, "item"    # I

    .prologue
    .line 807
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostListFragment$NewsPhotosAdapter;->this$0:Lcom/vkontakte/android/fragments/PostListFragment;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostListFragment;->items:Ljava/util/ArrayList;

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
    .line 812
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostListFragment$NewsPhotosAdapter;->this$0:Lcom/vkontakte/android/fragments/PostListFragment;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostListFragment;->items:Ljava/util/ArrayList;

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
    .line 802
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostListFragment$NewsPhotosAdapter;->this$0:Lcom/vkontakte/android/fragments/PostListFragment;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostListFragment;->items:Ljava/util/ArrayList;

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
    .line 817
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostListFragment$NewsPhotosAdapter;->this$0:Lcom/vkontakte/android/fragments/PostListFragment;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostListFragment;->list:Landroid/widget/ListView;

    if-nez v0, :cond_1

    .line 835
    :cond_0
    :goto_0
    return-void

    .line 818
    :cond_1
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostListFragment$NewsPhotosAdapter;->this$0:Lcom/vkontakte/android/fragments/PostListFragment;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostListFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    add-int v6, p1, v0

    .line 820
    .local v6, "item":I
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostListFragment$NewsPhotosAdapter;->this$0:Lcom/vkontakte/android/fragments/PostListFragment;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostListFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    if-lt v6, v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostListFragment$NewsPhotosAdapter;->this$0:Lcom/vkontakte/android/fragments/PostListFragment;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostListFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v0

    if-gt v6, v0, :cond_0

    .line 824
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostListFragment$NewsPhotosAdapter;->this$0:Lcom/vkontakte/android/fragments/PostListFragment;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostListFragment;->list:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/vkontakte/android/fragments/PostListFragment$NewsPhotosAdapter;->this$0:Lcom/vkontakte/android/fragments/PostListFragment;

    iget-object v1, v1, Lcom/vkontakte/android/fragments/PostListFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    sub-int v1, v6, v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 826
    .local v2, "view":Landroid/view/View;
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostListFragment$NewsPhotosAdapter;->this$0:Lcom/vkontakte/android/fragments/PostListFragment;

    invoke-virtual {v0}, Lcom/vkontakte/android/fragments/PostListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 827
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostListFragment$NewsPhotosAdapter;->this$0:Lcom/vkontakte/android/fragments/PostListFragment;

    invoke-virtual {v0}, Lcom/vkontakte/android/fragments/PostListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    new-instance v0, Lcom/vkontakte/android/fragments/PostListFragment$NewsPhotosAdapter$1;

    move-object v1, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/vkontakte/android/fragments/PostListFragment$NewsPhotosAdapter$1;-><init>(Lcom/vkontakte/android/fragments/PostListFragment$NewsPhotosAdapter;Landroid/view/View;IILandroid/graphics/Bitmap;)V

    invoke-virtual {v7, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
