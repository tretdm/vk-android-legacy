.class Lcom/vkontakte/android/fragments/FriendListFragment$FriendsPhotosAdapter;
.super Lcom/vkontakte/android/MultiSectionImageLoaderAdapter;
.source "FriendListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/fragments/FriendListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FriendsPhotosAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/FriendListFragment;


# direct methods
.method private constructor <init>(Lcom/vkontakte/android/fragments/FriendListFragment;)V
    .locals 0

    .prologue
    .line 636
    iput-object p1, p0, Lcom/vkontakte/android/fragments/FriendListFragment$FriendsPhotosAdapter;->this$0:Lcom/vkontakte/android/fragments/FriendListFragment;

    invoke-direct {p0}, Lcom/vkontakte/android/MultiSectionImageLoaderAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkontakte/android/fragments/FriendListFragment;Lcom/vkontakte/android/fragments/FriendListFragment$FriendsPhotosAdapter;)V
    .locals 0

    .prologue
    .line 636
    invoke-direct {p0, p1}, Lcom/vkontakte/android/fragments/FriendListFragment$FriendsPhotosAdapter;-><init>(Lcom/vkontakte/android/fragments/FriendListFragment;)V

    return-void
.end method


# virtual methods
.method public getImageCountForItem(II)I
    .locals 1
    .param p1, "section"    # I
    .param p2, "item"    # I

    .prologue
    .line 654
    const/4 v0, 0x1

    return v0
.end method

.method public getImageURL(III)Ljava/lang/String;
    .locals 1
    .param p1, "section"    # I
    .param p2, "item"    # I
    .param p3, "image"    # I

    .prologue
    .line 660
    :try_start_0
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendListFragment$FriendsPhotosAdapter;->this$0:Lcom/vkontakte/android/fragments/FriendListFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/FriendListFragment;->access$1(Lcom/vkontakte/android/fragments/FriendListFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/fragments/FriendListFragment$Section;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/FriendListFragment$Section;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/UserProfile;

    iget-object v0, v0, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 662
    :goto_0
    return-object v0

    .line 661
    :catch_0
    move-exception v0

    .line 662
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemCount(I)I
    .locals 1
    .param p1, "section"    # I

    .prologue
    .line 644
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendListFragment$FriendsPhotosAdapter;->this$0:Lcom/vkontakte/android/fragments/FriendListFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/FriendListFragment;->access$1(Lcom/vkontakte/android/fragments/FriendListFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/fragments/FriendListFragment$Section;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/FriendListFragment$Section;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getSectionCount()I
    .locals 1

    .prologue
    .line 639
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendListFragment$FriendsPhotosAdapter;->this$0:Lcom/vkontakte/android/fragments/FriendListFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/FriendListFragment;->access$1(Lcom/vkontakte/android/fragments/FriendListFragment;)Ljava/util/ArrayList;

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
    .line 667
    iget-object v1, p0, Lcom/vkontakte/android/fragments/FriendListFragment$FriendsPhotosAdapter;->this$0:Lcom/vkontakte/android/fragments/FriendListFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/FriendListFragment;->access$4(Lcom/vkontakte/android/fragments/FriendListFragment;)Lcom/vkontakte/android/ui/PinnedHeaderListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vkontakte/android/ui/PinnedHeaderListView;->getHeaderViewsCount()I

    move-result v1

    add-int/2addr p1, v1

    .line 668
    iget-object v1, p0, Lcom/vkontakte/android/fragments/FriendListFragment$FriendsPhotosAdapter;->this$0:Lcom/vkontakte/android/fragments/FriendListFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/FriendListFragment;->access$4(Lcom/vkontakte/android/fragments/FriendListFragment;)Lcom/vkontakte/android/ui/PinnedHeaderListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vkontakte/android/ui/PinnedHeaderListView;->getFirstVisiblePosition()I

    move-result v1

    if-lt p1, v1, :cond_0

    iget-object v1, p0, Lcom/vkontakte/android/fragments/FriendListFragment$FriendsPhotosAdapter;->this$0:Lcom/vkontakte/android/fragments/FriendListFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/FriendListFragment;->access$4(Lcom/vkontakte/android/fragments/FriendListFragment;)Lcom/vkontakte/android/ui/PinnedHeaderListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vkontakte/android/ui/PinnedHeaderListView;->getLastVisiblePosition()I

    move-result v1

    if-le p1, v1, :cond_1

    .line 679
    :cond_0
    :goto_0
    return-void

    .line 671
    :cond_1
    iget-object v1, p0, Lcom/vkontakte/android/fragments/FriendListFragment$FriendsPhotosAdapter;->this$0:Lcom/vkontakte/android/fragments/FriendListFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/FriendListFragment;->access$4(Lcom/vkontakte/android/fragments/FriendListFragment;)Lcom/vkontakte/android/ui/PinnedHeaderListView;

    move-result-object v1

    iget-object v2, p0, Lcom/vkontakte/android/fragments/FriendListFragment$FriendsPhotosAdapter;->this$0:Lcom/vkontakte/android/fragments/FriendListFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/FriendListFragment;->access$4(Lcom/vkontakte/android/fragments/FriendListFragment;)Lcom/vkontakte/android/ui/PinnedHeaderListView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vkontakte/android/ui/PinnedHeaderListView;->getFirstVisiblePosition()I

    move-result v2

    sub-int v2, p1, v2

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/ui/PinnedHeaderListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 672
    .local v0, "v":Landroid/view/View;
    iget-object v1, p0, Lcom/vkontakte/android/fragments/FriendListFragment$FriendsPhotosAdapter;->this$0:Lcom/vkontakte/android/fragments/FriendListFragment;

    invoke-virtual {v1}, Lcom/vkontakte/android/fragments/FriendListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/vkontakte/android/fragments/FriendListFragment$FriendsPhotosAdapter$1;

    invoke-direct {v2, p0, v0, p3}, Lcom/vkontakte/android/fragments/FriendListFragment$FriendsPhotosAdapter$1;-><init>(Lcom/vkontakte/android/fragments/FriendListFragment$FriendsPhotosAdapter;Landroid/view/View;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public isSectionHeaderVisible(I)Z
    .locals 1
    .param p1, "section"    # I

    .prologue
    .line 649
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendListFragment$FriendsPhotosAdapter;->this$0:Lcom/vkontakte/android/fragments/FriendListFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/FriendListFragment;->access$1(Lcom/vkontakte/android/fragments/FriendListFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/fragments/FriendListFragment$Section;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/FriendListFragment$Section;->title:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendListFragment$FriendsPhotosAdapter;->this$0:Lcom/vkontakte/android/fragments/FriendListFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/FriendListFragment;->access$1(Lcom/vkontakte/android/fragments/FriendListFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/fragments/FriendListFragment$Section;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/FriendListFragment$Section;->list:Ljava/util/ArrayList;

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
