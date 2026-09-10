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
    .line 638
    iput-object p1, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$FriendReqPhotosAdapter;->this$0:Lcom/vkontakte/android/fragments/FriendRequestsFragment;

    invoke-direct {p0}, Lcom/vkontakte/android/MultiSectionImageLoaderAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkontakte/android/fragments/FriendRequestsFragment;Lcom/vkontakte/android/fragments/FriendRequestsFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/vkontakte/android/fragments/FriendRequestsFragment;
    .param p2, "x1"    # Lcom/vkontakte/android/fragments/FriendRequestsFragment$1;

    .prologue
    .line 638
    invoke-direct {p0, p1}, Lcom/vkontakte/android/fragments/FriendRequestsFragment$FriendReqPhotosAdapter;-><init>(Lcom/vkontakte/android/fragments/FriendRequestsFragment;)V

    return-void
.end method


# virtual methods
.method public getImageCountForItem(II)I
    .locals 3
    .param p1, "section"    # I
    .param p2, "item"    # I

    .prologue
    const/4 v1, 0x0

    .line 674
    if-nez p1, :cond_1

    iget-object v2, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$FriendReqPhotosAdapter;->this$0:Lcom/vkontakte/android/fragments/FriendRequestsFragment;

    iget-object v2, v2, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->recommends:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne p2, v2, :cond_1

    .line 688
    :cond_0
    :goto_0
    return v1

    .line 675
    :cond_1
    const/4 v0, 0x0

    .line 676
    .local v0, "req":Lcom/vkontakte/android/api/FriendRequest;
    packed-switch p1, :pswitch_data_0

    .line 687
    :goto_1
    if-eqz v0, :cond_0

    .line 688
    iget-object v2, v0, Lcom/vkontakte/android/api/FriendRequest;->mutualFriends:[Lcom/vkontakte/android/UserProfile;

    if-nez v2, :cond_2

    :goto_2
    const/4 v2, 0x5

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 678
    :pswitch_0
    iget-object v2, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$FriendReqPhotosAdapter;->this$0:Lcom/vkontakte/android/fragments/FriendRequestsFragment;

    iget-object v2, v2, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->recommends:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "req":Lcom/vkontakte/android/api/FriendRequest;
    check-cast v0, Lcom/vkontakte/android/api/FriendRequest;

    .line 679
    .restart local v0    # "req":Lcom/vkontakte/android/api/FriendRequest;
    goto :goto_1

    .line 681
    :pswitch_1
    iget-object v2, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$FriendReqPhotosAdapter;->this$0:Lcom/vkontakte/android/fragments/FriendRequestsFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->access$400(Lcom/vkontakte/android/fragments/FriendRequestsFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "req":Lcom/vkontakte/android/api/FriendRequest;
    check-cast v0, Lcom/vkontakte/android/api/FriendRequest;

    .line 682
    .restart local v0    # "req":Lcom/vkontakte/android/api/FriendRequest;
    goto :goto_1

    .line 684
    :pswitch_2
    iget-object v2, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$FriendReqPhotosAdapter;->this$0:Lcom/vkontakte/android/fragments/FriendRequestsFragment;

    iget-object v2, v2, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->suggestions:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "req":Lcom/vkontakte/android/api/FriendRequest;
    check-cast v0, Lcom/vkontakte/android/api/FriendRequest;

    .restart local v0    # "req":Lcom/vkontakte/android/api/FriendRequest;
    goto :goto_1

    .line 688
    :cond_2
    iget-object v1, v0, Lcom/vkontakte/android/api/FriendRequest;->mutualFriends:[Lcom/vkontakte/android/UserProfile;

    array-length v1, v1

    goto :goto_2

    .line 676
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
    .line 693
    const/4 v0, 0x0

    .line 694
    .local v0, "req":Lcom/vkontakte/android/api/FriendRequest;
    packed-switch p1, :pswitch_data_0

    .line 705
    :goto_0
    if-nez p3, :cond_0

    iget-object v1, v0, Lcom/vkontakte/android/api/FriendRequest;->profile:Lcom/vkontakte/android/UserProfile;

    iget-object v1, v1, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    .line 706
    :goto_1
    return-object v1

    .line 696
    :pswitch_0
    iget-object v1, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$FriendReqPhotosAdapter;->this$0:Lcom/vkontakte/android/fragments/FriendRequestsFragment;

    iget-object v1, v1, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->recommends:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "req":Lcom/vkontakte/android/api/FriendRequest;
    check-cast v0, Lcom/vkontakte/android/api/FriendRequest;

    .line 697
    .restart local v0    # "req":Lcom/vkontakte/android/api/FriendRequest;
    goto :goto_0

    .line 699
    :pswitch_1
    iget-object v1, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$FriendReqPhotosAdapter;->this$0:Lcom/vkontakte/android/fragments/FriendRequestsFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->access$400(Lcom/vkontakte/android/fragments/FriendRequestsFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "req":Lcom/vkontakte/android/api/FriendRequest;
    check-cast v0, Lcom/vkontakte/android/api/FriendRequest;

    .line 700
    .restart local v0    # "req":Lcom/vkontakte/android/api/FriendRequest;
    goto :goto_0

    .line 702
    :pswitch_2
    iget-object v1, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$FriendReqPhotosAdapter;->this$0:Lcom/vkontakte/android/fragments/FriendRequestsFragment;

    iget-object v1, v1, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->suggestions:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "req":Lcom/vkontakte/android/api/FriendRequest;
    check-cast v0, Lcom/vkontakte/android/api/FriendRequest;

    .restart local v0    # "req":Lcom/vkontakte/android/api/FriendRequest;
    goto :goto_0

    .line 706
    :cond_0
    iget-object v1, v0, Lcom/vkontakte/android/api/FriendRequest;->mutualFriends:[Lcom/vkontakte/android/UserProfile;

    add-int/lit8 v2, p3, -0x1

    aget-object v1, v1, v2

    iget-object v1, v1, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    goto :goto_1

    .line 694
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
    .line 663
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$FriendReqPhotosAdapter;->this$0:Lcom/vkontakte/android/fragments/FriendRequestsFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->access$1600(Lcom/vkontakte/android/fragments/FriendRequestsFragment;)Lcom/vkontakte/android/fragments/FriendRequestsFragment$FriendRequestsAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/vkontakte/android/fragments/FriendRequestsFragment$FriendRequestsAdapter;->getItemCount(I)I

    move-result v0

    return v0
.end method

.method public getSectionCount()I
    .locals 1

    .prologue
    .line 658
    const/4 v0, 0x3

    return v0
.end method

.method public imageLoaded(IILandroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "item"    # I
    .param p2, "image"    # I
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 642
    iget-object v1, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$FriendReqPhotosAdapter;->this$0:Lcom/vkontakte/android/fragments/FriendRequestsFragment;

    invoke-virtual {v1}, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_1

    .line 654
    :cond_0
    :goto_0
    return-void

    .line 643
    :cond_1
    iget-object v1, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$FriendReqPhotosAdapter;->this$0:Lcom/vkontakte/android/fragments/FriendRequestsFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->access$1000(Lcom/vkontakte/android/fragments/FriendRequestsFragment;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    add-int/2addr p1, v1

    .line 644
    iget-object v1, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$FriendReqPhotosAdapter;->this$0:Lcom/vkontakte/android/fragments/FriendRequestsFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->access$1000(Lcom/vkontakte/android/fragments/FriendRequestsFragment;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    if-lt p1, v1, :cond_0

    iget-object v1, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$FriendReqPhotosAdapter;->this$0:Lcom/vkontakte/android/fragments/FriendRequestsFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->access$1000(Lcom/vkontakte/android/fragments/FriendRequestsFragment;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v1

    if-gt p1, v1, :cond_0

    .line 645
    iget-object v1, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$FriendReqPhotosAdapter;->this$0:Lcom/vkontakte/android/fragments/FriendRequestsFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->access$1000(Lcom/vkontakte/android/fragments/FriendRequestsFragment;)Landroid/widget/ListView;

    move-result-object v1

    iget-object v2, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$FriendReqPhotosAdapter;->this$0:Lcom/vkontakte/android/fragments/FriendRequestsFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->access$1000(Lcom/vkontakte/android/fragments/FriendRequestsFragment;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v2

    sub-int v2, p1, v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 646
    .local v0, "view":Landroid/view/View;
    iget-object v1, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$FriendReqPhotosAdapter;->this$0:Lcom/vkontakte/android/fragments/FriendRequestsFragment;

    invoke-virtual {v1}, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/vkontakte/android/fragments/FriendRequestsFragment$FriendReqPhotosAdapter$1;

    invoke-direct {v2, p0, v0, p2, p3}, Lcom/vkontakte/android/fragments/FriendRequestsFragment$FriendReqPhotosAdapter$1;-><init>(Lcom/vkontakte/android/fragments/FriendRequestsFragment$FriendReqPhotosAdapter;Landroid/view/View;ILandroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public isSectionHeaderVisible(I)Z
    .locals 1
    .param p1, "section"    # I

    .prologue
    .line 668
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$FriendReqPhotosAdapter;->this$0:Lcom/vkontakte/android/fragments/FriendRequestsFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->access$1600(Lcom/vkontakte/android/fragments/FriendRequestsFragment;)Lcom/vkontakte/android/fragments/FriendRequestsFragment$FriendRequestsAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 669
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$FriendReqPhotosAdapter;->this$0:Lcom/vkontakte/android/fragments/FriendRequestsFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->access$1600(Lcom/vkontakte/android/fragments/FriendRequestsFragment;)Lcom/vkontakte/android/fragments/FriendRequestsFragment$FriendRequestsAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/vkontakte/android/fragments/FriendRequestsFragment$FriendRequestsAdapter;->isSectionHeaderVisible(I)Z

    move-result v0

    goto :goto_0
.end method
