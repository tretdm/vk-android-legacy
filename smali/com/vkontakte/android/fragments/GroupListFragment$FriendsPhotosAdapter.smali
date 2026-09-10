.class Lcom/vkontakte/android/fragments/GroupListFragment$FriendsPhotosAdapter;
.super Lcom/vkontakte/android/MultiSectionImageLoaderAdapter;
.source "GroupListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/fragments/GroupListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FriendsPhotosAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/GroupListFragment;


# direct methods
.method private constructor <init>(Lcom/vkontakte/android/fragments/GroupListFragment;)V
    .locals 0

    .prologue
    .line 462
    iput-object p1, p0, Lcom/vkontakte/android/fragments/GroupListFragment$FriendsPhotosAdapter;->this$0:Lcom/vkontakte/android/fragments/GroupListFragment;

    invoke-direct {p0}, Lcom/vkontakte/android/MultiSectionImageLoaderAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkontakte/android/fragments/GroupListFragment;Lcom/vkontakte/android/fragments/GroupListFragment$FriendsPhotosAdapter;)V
    .locals 0

    .prologue
    .line 462
    invoke-direct {p0, p1}, Lcom/vkontakte/android/fragments/GroupListFragment$FriendsPhotosAdapter;-><init>(Lcom/vkontakte/android/fragments/GroupListFragment;)V

    return-void
.end method


# virtual methods
.method public getImageCountForItem(II)I
    .locals 1
    .param p1, "section"    # I
    .param p2, "item"    # I

    .prologue
    .line 480
    const/4 v0, 0x1

    return v0
.end method

.method public getImageURL(III)Ljava/lang/String;
    .locals 1
    .param p1, "section"    # I
    .param p2, "item"    # I
    .param p3, "image"    # I

    .prologue
    .line 486
    :try_start_0
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GroupListFragment$FriendsPhotosAdapter;->this$0:Lcom/vkontakte/android/fragments/GroupListFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/GroupListFragment;->access$0(Lcom/vkontakte/android/fragments/GroupListFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/fragments/GroupListFragment$Section;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/GroupListFragment$Section;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/api/Group;

    iget-object v0, v0, Lcom/vkontakte/android/api/Group;->photo:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 488
    :goto_0
    return-object v0

    .line 487
    :catch_0
    move-exception v0

    .line 488
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemCount(I)I
    .locals 1
    .param p1, "section"    # I

    .prologue
    .line 470
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GroupListFragment$FriendsPhotosAdapter;->this$0:Lcom/vkontakte/android/fragments/GroupListFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/GroupListFragment;->access$0(Lcom/vkontakte/android/fragments/GroupListFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/fragments/GroupListFragment$Section;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/GroupListFragment$Section;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getSectionCount()I
    .locals 1

    .prologue
    .line 465
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GroupListFragment$FriendsPhotosAdapter;->this$0:Lcom/vkontakte/android/fragments/GroupListFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/GroupListFragment;->access$0(Lcom/vkontakte/android/fragments/GroupListFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public imageLoaded(IILandroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "item"    # I
    .param p2, "image"    # I
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 493
    iget-object v1, p0, Lcom/vkontakte/android/fragments/GroupListFragment$FriendsPhotosAdapter;->this$0:Lcom/vkontakte/android/fragments/GroupListFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/GroupListFragment;->access$2(Lcom/vkontakte/android/fragments/GroupListFragment;)Lcom/vkontakte/android/ui/PinnedHeaderListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vkontakte/android/ui/PinnedHeaderListView;->getHeaderViewsCount()I

    move-result v1

    add-int/2addr p1, v1

    .line 494
    iget-object v1, p0, Lcom/vkontakte/android/fragments/GroupListFragment$FriendsPhotosAdapter;->this$0:Lcom/vkontakte/android/fragments/GroupListFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/GroupListFragment;->access$2(Lcom/vkontakte/android/fragments/GroupListFragment;)Lcom/vkontakte/android/ui/PinnedHeaderListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vkontakte/android/ui/PinnedHeaderListView;->getFirstVisiblePosition()I

    move-result v1

    if-lt p1, v1, :cond_0

    iget-object v1, p0, Lcom/vkontakte/android/fragments/GroupListFragment$FriendsPhotosAdapter;->this$0:Lcom/vkontakte/android/fragments/GroupListFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/GroupListFragment;->access$2(Lcom/vkontakte/android/fragments/GroupListFragment;)Lcom/vkontakte/android/ui/PinnedHeaderListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vkontakte/android/ui/PinnedHeaderListView;->getLastVisiblePosition()I

    move-result v1

    if-le p1, v1, :cond_1

    .line 505
    :cond_0
    :goto_0
    return-void

    .line 497
    :cond_1
    iget-object v1, p0, Lcom/vkontakte/android/fragments/GroupListFragment$FriendsPhotosAdapter;->this$0:Lcom/vkontakte/android/fragments/GroupListFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/GroupListFragment;->access$2(Lcom/vkontakte/android/fragments/GroupListFragment;)Lcom/vkontakte/android/ui/PinnedHeaderListView;

    move-result-object v1

    iget-object v2, p0, Lcom/vkontakte/android/fragments/GroupListFragment$FriendsPhotosAdapter;->this$0:Lcom/vkontakte/android/fragments/GroupListFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/GroupListFragment;->access$2(Lcom/vkontakte/android/fragments/GroupListFragment;)Lcom/vkontakte/android/ui/PinnedHeaderListView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vkontakte/android/ui/PinnedHeaderListView;->getFirstVisiblePosition()I

    move-result v2

    sub-int v2, p1, v2

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/ui/PinnedHeaderListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 498
    .local v0, "v":Landroid/view/View;
    iget-object v1, p0, Lcom/vkontakte/android/fragments/GroupListFragment$FriendsPhotosAdapter;->this$0:Lcom/vkontakte/android/fragments/GroupListFragment;

    invoke-virtual {v1}, Lcom/vkontakte/android/fragments/GroupListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/vkontakte/android/fragments/GroupListFragment$FriendsPhotosAdapter$1;

    invoke-direct {v2, p0, v0, p3}, Lcom/vkontakte/android/fragments/GroupListFragment$FriendsPhotosAdapter$1;-><init>(Lcom/vkontakte/android/fragments/GroupListFragment$FriendsPhotosAdapter;Landroid/view/View;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public isSectionHeaderVisible(I)Z
    .locals 1
    .param p1, "section"    # I

    .prologue
    .line 475
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GroupListFragment$FriendsPhotosAdapter;->this$0:Lcom/vkontakte/android/fragments/GroupListFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/GroupListFragment;->access$0(Lcom/vkontakte/android/fragments/GroupListFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/fragments/GroupListFragment$Section;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/GroupListFragment$Section;->title:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/fragments/GroupListFragment$FriendsPhotosAdapter;->this$0:Lcom/vkontakte/android/fragments/GroupListFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/GroupListFragment;->access$0(Lcom/vkontakte/android/fragments/GroupListFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/fragments/GroupListFragment$Section;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/GroupListFragment$Section;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
