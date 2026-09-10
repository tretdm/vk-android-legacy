.class Lcom/vkontakte/android/fragments/FriendRequestsFragment$FriendReqPhotosAdapter;
.super Lcom/vkontakte/android/MultiSectionImageLoaderAdapter;
.source "FriendRequestsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/fragments/FriendRequestsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FriendReqPhotosAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/FriendRequestsFragment;


# direct methods
.method private constructor <init>(Lcom/vkontakte/android/fragments/FriendRequestsFragment;)V
    .locals 0

    .prologue
    .line 665
    iput-object p1, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$FriendReqPhotosAdapter;->this$0:Lcom/vkontakte/android/fragments/FriendRequestsFragment;

    invoke-direct {p0}, Lcom/vkontakte/android/MultiSectionImageLoaderAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkontakte/android/fragments/FriendRequestsFragment;Lcom/vkontakte/android/fragments/FriendRequestsFragment$FriendReqPhotosAdapter;)V
    .locals 0

    .prologue
    .line 665
    invoke-direct {p0, p1}, Lcom/vkontakte/android/fragments/FriendRequestsFragment$FriendReqPhotosAdapter;-><init>(Lcom/vkontakte/android/fragments/FriendRequestsFragment;)V

    return-void
.end method

.method static synthetic access$1(Lcom/vkontakte/android/fragments/FriendRequestsFragment$FriendReqPhotosAdapter;)Lcom/vkontakte/android/fragments/FriendRequestsFragment;
    .locals 1

    .prologue
    .line 665
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$FriendReqPhotosAdapter;->this$0:Lcom/vkontakte/android/fragments/FriendRequestsFragment;

    return-object v0
.end method


# virtual methods
.method public getImageCountForItem(II)I
    .locals 3
    .param p1, "section"    # I
    .param p2, "item"    # I

    .prologue
    const/4 v1, 0x0

    .line 701
    if-nez p1, :cond_1

    iget-object v2, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$FriendReqPhotosAdapter;->this$0:Lcom/vkontakte/android/fragments/FriendRequestsFragment;

    iget-object v2, v2, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->recommends:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne p2, v2, :cond_1

    .line 715
    :cond_0
    :goto_0
    return v1

    .line 702
    :cond_1
    const/4 v0, 0x0

    .line 703
    .local v0, "req":Lcom/vkontakte/android/api/FriendRequest;
    packed-switch p1, :pswitch_data_0

    .line 714
    :goto_1
    if-eqz v0, :cond_0

    .line 715
    iget-object v2, v0, Lcom/vkontakte/android/api/FriendRequest;->mutualFriends:[Lcom/vkontakte/android/UserProfile;

    if-nez v2, :cond_2

    :goto_2
    const/4 v2, 0x5

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 705
    :pswitch_0
    iget-object v2, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$FriendReqPhotosAdapter;->this$0:Lcom/vkontakte/android/fragments/FriendRequestsFragment;

    iget-object v2, v2, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->recommends:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "req":Lcom/vkontakte/android/api/FriendRequest;
    check-cast v0, Lcom/vkontakte/android/api/FriendRequest;

    .line 706
    .restart local v0    # "req":Lcom/vkontakte/android/api/FriendRequest;
    goto :goto_1

    .line 708
    :pswitch_1
    iget-object v2, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$FriendReqPhotosAdapter;->this$0:Lcom/vkontakte/android/fragments/FriendRequestsFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->access$0(Lcom/vkontakte/android/fragments/FriendRequestsFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "req":Lcom/vkontakte/android/api/FriendRequest;
    check-cast v0, Lcom/vkontakte/android/api/FriendRequest;

    .line 709
    .restart local v0    # "req":Lcom/vkontakte/android/api/FriendRequest;
    goto :goto_1

    .line 711
    :pswitch_2
    iget-object v2, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$FriendReqPhotosAdapter;->this$0:Lcom/vkontakte/android/fragments/FriendRequestsFragment;

    iget-object v2, v2, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->suggestions:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "req":Lcom/vkontakte/android/api/FriendRequest;
    check-cast v0, Lcom/vkontakte/android/api/FriendRequest;

    .restart local v0    # "req":Lcom/vkontakte/android/api/FriendRequest;
    goto :goto_1

    .line 715
    :cond_2
    iget-object v1, v0, Lcom/vkontakte/android/api/FriendRequest;->mutualFriends:[Lcom/vkontakte/android/UserProfile;

    array-length v1, v1

    goto :goto_2

    .line 703
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getImageURL(III)Ljava/lang/String;
    .locals 3
    .param p1, "section"    # I
    .param p2, "item"    # I
    .param p3, "image"    # I

    .prologue
    .line 720
    const/4 v0, 0x0

    .line 721
    .local v0, "req":Lcom/vkontakte/android/api/FriendRequest;
    packed-switch p1, :pswitch_data_0

    .line 732
    :goto_0
    if-nez p3, :cond_0

    iget-object v1, v0, Lcom/vkontakte/android/api/FriendRequest;->profile:Lcom/vkontakte/android/UserProfile;

    iget-object v1, v1, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    .line 733
    :goto_1
    return-object v1

    .line 723
    :pswitch_0
    iget-object v1, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$FriendReqPhotosAdapter;->this$0:Lcom/vkontakte/android/fragments/FriendRequestsFragment;

    iget-object v1, v1, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->recommends:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "req":Lcom/vkontakte/android/api/FriendRequest;
    check-cast v0, Lcom/vkontakte/android/api/FriendRequest;

    .line 724
    .restart local v0    # "req":Lcom/vkontakte/android/api/FriendRequest;
    goto :goto_0

    .line 726
    :pswitch_1
    iget-object v1, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$FriendReqPhotosAdapter;->this$0:Lcom/vkontakte/android/fragments/FriendRequestsFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->access$0(Lcom/vkontakte/android/fragments/FriendRequestsFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "req":Lcom/vkontakte/android/api/FriendRequest;
    check-cast v0, Lcom/vkontakte/android/api/FriendRequest;

    .line 727
    .restart local v0    # "req":Lcom/vkontakte/android/api/FriendRequest;
    goto :goto_0

    .line 729
    :pswitch_2
    iget-object v1, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$FriendReqPhotosAdapter;->this$0:Lcom/vkontakte/android/fragments/FriendRequestsFragment;

    iget-object v1, v1, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->suggestions:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "req":Lcom/vkontakte/android/api/FriendRequest;
    check-cast v0, Lcom/vkontakte/android/api/FriendRequest;

    .restart local v0    # "req":Lcom/vkontakte/android/api/FriendRequest;
    goto :goto_0

    .line 733
    :cond_0
    iget-object v1, v0, Lcom/vkontakte/android/api/FriendRequest;->mutualFriends:[Lcom/vkontakte/android/UserProfile;

    add-int/lit8 v2, p3, -0x1

    aget-object v1, v1, v2

    iget-object v1, v1, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    goto :goto_1

    .line 721
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getItemCount(I)I
    .locals 1
    .param p1, "section"    # I

    .prologue
    .line 690
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$FriendReqPhotosAdapter;->this$0:Lcom/vkontakte/android/fragments/FriendRequestsFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->access$6(Lcom/vkontakte/android/fragments/FriendRequestsFragment;)Lcom/vkontakte/android/fragments/FriendRequestsFragment$FriendRequestsAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/vkontakte/android/fragments/FriendRequestsFragment$FriendRequestsAdapter;->getItemCount(I)I

    move-result v0

    return v0
.end method

.method public getSectionCount()I
    .locals 1

    .prologue
    .line 685
    const/4 v0, 0x3

    return v0
.end method

.method public imageLoaded(IILandroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "item"    # I
    .param p2, "image"    # I
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 669
    iget-object v1, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$FriendReqPhotosAdapter;->this$0:Lcom/vkontakte/android/fragments/FriendRequestsFragment;

    invoke-virtual {v1}, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-nez v1, :cond_1

    .line 681
    :cond_0
    :goto_0
    return-void

    .line 670
    :cond_1
    iget-object v1, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$FriendReqPhotosAdapter;->this$0:Lcom/vkontakte/android/fragments/FriendRequestsFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->access$5(Lcom/vkontakte/android/fragments/FriendRequestsFragment;)Lcom/vkontakte/android/ui/RefreshableListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vkontakte/android/ui/RefreshableListView;->getHeaderViewsCount()I

    move-result v1

    add-int/2addr p1, v1

    .line 671
    iget-object v1, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$FriendReqPhotosAdapter;->this$0:Lcom/vkontakte/android/fragments/FriendRequestsFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->access$5(Lcom/vkontakte/android/fragments/FriendRequestsFragment;)Lcom/vkontakte/android/ui/RefreshableListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vkontakte/android/ui/RefreshableListView;->getFirstVisiblePosition()I

    move-result v1

    if-lt p1, v1, :cond_0

    iget-object v1, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$FriendReqPhotosAdapter;->this$0:Lcom/vkontakte/android/fragments/FriendRequestsFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->access$5(Lcom/vkontakte/android/fragments/FriendRequestsFragment;)Lcom/vkontakte/android/ui/RefreshableListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vkontakte/android/ui/RefreshableListView;->getLastVisiblePosition()I

    move-result v1

    if-gt p1, v1, :cond_0

    .line 672
    iget-object v1, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$FriendReqPhotosAdapter;->this$0:Lcom/vkontakte/android/fragments/FriendRequestsFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->access$5(Lcom/vkontakte/android/fragments/FriendRequestsFragment;)Lcom/vkontakte/android/ui/RefreshableListView;

    move-result-object v1

    iget-object v2, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$FriendReqPhotosAdapter;->this$0:Lcom/vkontakte/android/fragments/FriendRequestsFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->access$5(Lcom/vkontakte/android/fragments/FriendRequestsFragment;)Lcom/vkontakte/android/ui/RefreshableListView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vkontakte/android/ui/RefreshableListView;->getFirstVisiblePosition()I

    move-result v2

    sub-int v2, p1, v2

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/ui/RefreshableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 673
    .local v0, "view":Landroid/view/View;
    iget-object v1, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$FriendReqPhotosAdapter;->this$0:Lcom/vkontakte/android/fragments/FriendRequestsFragment;

    invoke-virtual {v1}, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/vkontakte/android/fragments/FriendRequestsFragment$FriendReqPhotosAdapter$1;

    invoke-direct {v2, p0, v0, p2, p3}, Lcom/vkontakte/android/fragments/FriendRequestsFragment$FriendReqPhotosAdapter$1;-><init>(Lcom/vkontakte/android/fragments/FriendRequestsFragment$FriendReqPhotosAdapter;Landroid/view/View;ILandroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public isSectionHeaderVisible(I)Z
    .locals 1
    .param p1, "section"    # I

    .prologue
    .line 695
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$FriendReqPhotosAdapter;->this$0:Lcom/vkontakte/android/fragments/FriendRequestsFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->access$6(Lcom/vkontakte/android/fragments/FriendRequestsFragment;)Lcom/vkontakte/android/fragments/FriendRequestsFragment$FriendRequestsAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 696
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$FriendReqPhotosAdapter;->this$0:Lcom/vkontakte/android/fragments/FriendRequestsFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->access$6(Lcom/vkontakte/android/fragments/FriendRequestsFragment;)Lcom/vkontakte/android/fragments/FriendRequestsFragment$FriendRequestsAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/vkontakte/android/fragments/FriendRequestsFragment$FriendRequestsAdapter;->isSectionHeaderVisible(I)Z

    move-result v0

    goto :goto_0
.end method
