.class public Lcom/vkontakte/android/fragments/PostListFragment$NewsAdapter;
.super Landroid/widget/BaseAdapter;
.source "PostListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/fragments/PostListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "NewsAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/PostListFragment;


# direct methods
.method protected constructor <init>(Lcom/vkontakte/android/fragments/PostListFragment;)V
    .locals 0

    .prologue
    .line 722
    iput-object p1, p0, Lcom/vkontakte/android/fragments/PostListFragment$NewsAdapter;->this$0:Lcom/vkontakte/android/fragments/PostListFragment;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 745
    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 725
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostListFragment$NewsAdapter;->this$0:Lcom/vkontakte/android/fragments/PostListFragment;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostListFragment;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "pos"    # I

    .prologue
    .line 730
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 735
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "pos"    # I

    .prologue
    .line 755
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostListFragment$NewsAdapter;->this$0:Lcom/vkontakte/android/fragments/PostListFragment;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostListFragment;->items:Ljava/util/ArrayList;

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
    .line 760
    iget-object v5, p0, Lcom/vkontakte/android/fragments/PostListFragment$NewsAdapter;->this$0:Lcom/vkontakte/android/fragments/PostListFragment;

    iget-object v5, v5, Lcom/vkontakte/android/fragments/PostListFragment;->items:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/ui/posts/PostDisplayItem;

    .line 761
    .local v2, "item":Lcom/vkontakte/android/ui/posts/PostDisplayItem;
    iget-object v5, p0, Lcom/vkontakte/android/fragments/PostListFragment$NewsAdapter;->this$0:Lcom/vkontakte/android/fragments/PostListFragment;

    invoke-virtual {v5}, Lcom/vkontakte/android/fragments/PostListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v2, v5, p2}, Lcom/vkontakte/android/ui/posts/PostDisplayItem;->getView(Landroid/content/Context;Landroid/view/View;)Landroid/view/View;

    move-result-object v4

    .line 762
    .local v4, "view":Landroid/view/View;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v2}, Lcom/vkontakte/android/ui/posts/PostDisplayItem;->getImageCount()I

    move-result v5

    if-ge v1, v5, :cond_1

    .line 763
    invoke-virtual {v2, v1}, Lcom/vkontakte/android/ui/posts/PostDisplayItem;->getImageURL(I)Ljava/lang/String;

    move-result-object v3

    .line 764
    .local v3, "url":Ljava/lang/String;
    iget-object v5, p0, Lcom/vkontakte/android/fragments/PostListFragment$NewsAdapter;->this$0:Lcom/vkontakte/android/fragments/PostListFragment;

    iget-object v5, v5, Lcom/vkontakte/android/fragments/PostListFragment;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-virtual {v5, v3}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->isAlreadyLoaded(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 765
    iget-object v5, p0, Lcom/vkontakte/android/fragments/PostListFragment$NewsAdapter;->this$0:Lcom/vkontakte/android/fragments/PostListFragment;

    iget-object v5, v5, Lcom/vkontakte/android/fragments/PostListFragment;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-virtual {v5, v3}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v2, v1, v4, v5, v6}, Lcom/vkontakte/android/ui/posts/PostDisplayItem;->setImage(ILandroid/view/View;Landroid/graphics/Bitmap;Z)V

    .line 762
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 767
    :cond_0
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v1, v4, v5, v6}, Lcom/vkontakte/android/ui/posts/PostDisplayItem;->setImage(ILandroid/view/View;Landroid/graphics/Bitmap;Z)V

    goto :goto_1

    .line 770
    .end local v3    # "url":Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    .line 771
    .local v0, "bg":I
    iget v5, v2, Lcom/vkontakte/android/ui/posts/PostDisplayItem;->bgType:I

    packed-switch v5, :pswitch_data_0

    .line 782
    :goto_2
    if-eqz v0, :cond_2

    .line 783
    invoke-virtual {v4, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 784
    :cond_2
    new-instance v5, Landroid/widget/AbsListView$LayoutParams;

    const/4 v6, -0x1

    const/4 v7, -0x2

    invoke-direct {v5, v6, v7}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 786
    const v5, 0x7f08001f

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, v2, Lcom/vkontakte/android/ui/posts/PostDisplayItem;->postOwnerID:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v2, Lcom/vkontakte/android/ui/posts/PostDisplayItem;->postID:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 787
    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v4, v5}, Landroid/view/View;->setAlpha(F)V

    .line 788
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setTranslationY(F)V

    .line 789
    return-object v4

    .line 773
    :pswitch_0
    const v0, 0x7f020042

    .line 774
    goto :goto_2

    .line 776
    :pswitch_1
    const v0, 0x7f020043

    .line 777
    goto :goto_2

    .line 779
    :pswitch_2
    const v0, 0x7f020040

    goto :goto_2

    .line 771
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
    .line 750
    const/16 v0, 0x14

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 740
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostListFragment$NewsAdapter;->this$0:Lcom/vkontakte/android/fragments/PostListFragment;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostListFragment;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/ui/posts/PostDisplayItem;

    iget-boolean v0, v0, Lcom/vkontakte/android/ui/posts/PostDisplayItem;->clickable:Z

    return v0
.end method
