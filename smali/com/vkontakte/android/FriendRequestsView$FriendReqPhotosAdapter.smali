.class Lcom/vkontakte/android/FriendRequestsView$FriendReqPhotosAdapter;
.super Lcom/vkontakte/android/ui/ListImageLoaderAdapter;
.source "FriendRequestsView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/FriendRequestsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FriendReqPhotosAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/FriendRequestsView;


# direct methods
.method private constructor <init>(Lcom/vkontakte/android/FriendRequestsView;)V
    .locals 0

    .prologue
    .line 673
    iput-object p1, p0, Lcom/vkontakte/android/FriendRequestsView$FriendReqPhotosAdapter;->this$0:Lcom/vkontakte/android/FriendRequestsView;

    invoke-direct {p0}, Lcom/vkontakte/android/ui/ListImageLoaderAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkontakte/android/FriendRequestsView;Lcom/vkontakte/android/FriendRequestsView$FriendReqPhotosAdapter;)V
    .locals 0

    .prologue
    .line 673
    invoke-direct {p0, p1}, Lcom/vkontakte/android/FriendRequestsView$FriendReqPhotosAdapter;-><init>(Lcom/vkontakte/android/FriendRequestsView;)V

    return-void
.end method

.method static synthetic access$1(Lcom/vkontakte/android/FriendRequestsView$FriendReqPhotosAdapter;)Lcom/vkontakte/android/FriendRequestsView;
    .locals 1

    .prologue
    .line 673
    iget-object v0, p0, Lcom/vkontakte/android/FriendRequestsView$FriendReqPhotosAdapter;->this$0:Lcom/vkontakte/android/FriendRequestsView;

    return-object v0
.end method


# virtual methods
.method public getImageCountForItem(I)I
    .locals 2
    .param p1, "item"    # I

    .prologue
    const/4 v0, 0x1

    .line 681
    iget-object v1, p0, Lcom/vkontakte/android/FriendRequestsView$FriendReqPhotosAdapter;->this$0:Lcom/vkontakte/android/FriendRequestsView;

    iget-object v1, v1, Lcom/vkontakte/android/FriendRequestsView;->reqs:[Lcom/vkontakte/android/api/FriendRequest;

    array-length v1, v1

    if-ge p1, v1, :cond_2

    .line 682
    iget-object v1, p0, Lcom/vkontakte/android/FriendRequestsView$FriendReqPhotosAdapter;->this$0:Lcom/vkontakte/android/FriendRequestsView;

    iget-object v1, v1, Lcom/vkontakte/android/FriendRequestsView;->reqs:[Lcom/vkontakte/android/api/FriendRequest;

    aget-object v1, v1, p1

    iget-object v1, v1, Lcom/vkontakte/android/api/FriendRequest;->mutualFriends:[Lcom/vkontakte/android/UserProfile;

    if-nez v1, :cond_1

    .line 686
    :cond_0
    :goto_0
    return v0

    .line 683
    :cond_1
    iget-object v0, p0, Lcom/vkontakte/android/FriendRequestsView$FriendReqPhotosAdapter;->this$0:Lcom/vkontakte/android/FriendRequestsView;

    iget-object v0, v0, Lcom/vkontakte/android/FriendRequestsView;->reqs:[Lcom/vkontakte/android/api/FriendRequest;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/vkontakte/android/api/FriendRequest;->mutualFriends:[Lcom/vkontakte/android/UserProfile;

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 685
    :cond_2
    iget-object v1, p0, Lcom/vkontakte/android/FriendRequestsView$FriendReqPhotosAdapter;->this$0:Lcom/vkontakte/android/FriendRequestsView;

    iget-object v1, v1, Lcom/vkontakte/android/FriendRequestsView;->reqs:[Lcom/vkontakte/android/api/FriendRequest;

    array-length v1, v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/vkontakte/android/FriendRequestsView$FriendReqPhotosAdapter;->this$0:Lcom/vkontakte/android/FriendRequestsView;

    iget-object v1, v1, Lcom/vkontakte/android/FriendRequestsView;->reqs:[Lcom/vkontakte/android/api/FriendRequest;

    array-length v1, v1

    if-ne p1, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getImageURL(II)Ljava/lang/String;
    .locals 3
    .param p1, "item"    # I
    .param p2, "image"    # I

    .prologue
    .line 691
    iget-object v0, p0, Lcom/vkontakte/android/FriendRequestsView$FriendReqPhotosAdapter;->this$0:Lcom/vkontakte/android/FriendRequestsView;

    iget-object v0, v0, Lcom/vkontakte/android/FriendRequestsView;->reqs:[Lcom/vkontakte/android/api/FriendRequest;

    array-length v0, v0

    if-ge p1, v0, :cond_1

    .line 692
    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/FriendRequestsView$FriendReqPhotosAdapter;->this$0:Lcom/vkontakte/android/FriendRequestsView;

    iget-object v0, v0, Lcom/vkontakte/android/FriendRequestsView;->reqs:[Lcom/vkontakte/android/api/FriendRequest;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/vkontakte/android/api/FriendRequest;->profile:Lcom/vkontakte/android/UserProfile;

    iget-object v0, v0, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    .line 697
    :goto_0
    return-object v0

    .line 693
    :cond_0
    add-int/lit8 p2, p2, -0x1

    .line 694
    iget-object v0, p0, Lcom/vkontakte/android/FriendRequestsView$FriendReqPhotosAdapter;->this$0:Lcom/vkontakte/android/FriendRequestsView;

    iget-object v0, v0, Lcom/vkontakte/android/FriendRequestsView;->reqs:[Lcom/vkontakte/android/api/FriendRequest;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/vkontakte/android/api/FriendRequest;->mutualFriends:[Lcom/vkontakte/android/UserProfile;

    aget-object v0, v0, p2

    iget-object v0, v0, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    goto :goto_0

    .line 697
    :cond_1
    iget-object v0, p0, Lcom/vkontakte/android/FriendRequestsView$FriendReqPhotosAdapter;->this$0:Lcom/vkontakte/android/FriendRequestsView;

    iget-object v1, v0, Lcom/vkontakte/android/FriendRequestsView;->suggestions:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/vkontakte/android/FriendRequestsView$FriendReqPhotosAdapter;->this$0:Lcom/vkontakte/android/FriendRequestsView;

    iget-object v0, v0, Lcom/vkontakte/android/FriendRequestsView;->reqs:[Lcom/vkontakte/android/api/FriendRequest;

    array-length v0, v0

    sub-int v2, p1, v0

    iget-object v0, p0, Lcom/vkontakte/android/FriendRequestsView$FriendReqPhotosAdapter;->this$0:Lcom/vkontakte/android/FriendRequestsView;

    iget-object v0, v0, Lcom/vkontakte/android/FriendRequestsView;->reqs:[Lcom/vkontakte/android/api/FriendRequest;

    array-length v0, v0

    if-lez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    sub-int v0, v2, v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/api/FriendRequest;

    iget-object v0, v0, Lcom/vkontakte/android/api/FriendRequest;->profile:Lcom/vkontakte/android/UserProfile;

    iget-object v0, v0, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getItemCount()I
    .locals 2

    .prologue
    .line 676
    iget-object v0, p0, Lcom/vkontakte/android/FriendRequestsView$FriendReqPhotosAdapter;->this$0:Lcom/vkontakte/android/FriendRequestsView;

    iget-object v0, v0, Lcom/vkontakte/android/FriendRequestsView;->reqs:[Lcom/vkontakte/android/api/FriendRequest;

    array-length v0, v0

    iget-object v1, p0, Lcom/vkontakte/android/FriendRequestsView$FriendReqPhotosAdapter;->this$0:Lcom/vkontakte/android/FriendRequestsView;

    iget-object v1, v1, Lcom/vkontakte/android/FriendRequestsView;->suggestions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v1, v0

    iget-object v0, p0, Lcom/vkontakte/android/FriendRequestsView$FriendReqPhotosAdapter;->this$0:Lcom/vkontakte/android/FriendRequestsView;

    iget-object v0, v0, Lcom/vkontakte/android/FriendRequestsView;->reqs:[Lcom/vkontakte/android/api/FriendRequest;

    array-length v0, v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/FriendRequestsView$FriendReqPhotosAdapter;->this$0:Lcom/vkontakte/android/FriendRequestsView;

    iget-object v0, v0, Lcom/vkontakte/android/FriendRequestsView;->suggestions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    add-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public imageLoaded(IILandroid/graphics/Bitmap;)V
    .locals 4
    .param p1, "item"    # I
    .param p2, "image"    # I
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 720
    iget-object v2, p0, Lcom/vkontakte/android/FriendRequestsView$FriendReqPhotosAdapter;->this$0:Lcom/vkontakte/android/FriendRequestsView;

    iget-object v2, v2, Lcom/vkontakte/android/FriendRequestsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v2}, Lcom/vkontakte/android/ui/RefreshableListView;->getFirstVisiblePosition()I

    move-result v2

    iget-object v3, p0, Lcom/vkontakte/android/FriendRequestsView$FriendReqPhotosAdapter;->this$0:Lcom/vkontakte/android/FriendRequestsView;

    iget-object v3, v3, Lcom/vkontakte/android/FriendRequestsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v3}, Lcom/vkontakte/android/ui/RefreshableListView;->getHeaderViewsCount()I

    move-result v3

    sub-int v1, v2, v3

    .line 721
    .local v1, "vstart":I
    iget-object v2, p0, Lcom/vkontakte/android/FriendRequestsView$FriendReqPhotosAdapter;->this$0:Lcom/vkontakte/android/FriendRequestsView;

    iget-object v2, v2, Lcom/vkontakte/android/FriendRequestsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v2}, Lcom/vkontakte/android/ui/RefreshableListView;->getLastVisiblePosition()I

    move-result v2

    iget-object v3, p0, Lcom/vkontakte/android/FriendRequestsView$FriendReqPhotosAdapter;->this$0:Lcom/vkontakte/android/FriendRequestsView;

    iget-object v3, v3, Lcom/vkontakte/android/FriendRequestsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v3}, Lcom/vkontakte/android/ui/RefreshableListView;->getHeaderViewsCount()I

    move-result v3

    sub-int v0, v2, v3

    .line 722
    .local v0, "vend":I
    if-lt p1, v1, :cond_0

    if-gt p1, v0, :cond_0

    .line 723
    iget-object v2, p0, Lcom/vkontakte/android/FriendRequestsView$FriendReqPhotosAdapter;->this$0:Lcom/vkontakte/android/FriendRequestsView;

    new-instance v3, Lcom/vkontakte/android/FriendRequestsView$FriendReqPhotosAdapter$1;

    invoke-direct {v3, p0, p1, p2, p3}, Lcom/vkontakte/android/FriendRequestsView$FriendReqPhotosAdapter$1;-><init>(Lcom/vkontakte/android/FriendRequestsView$FriendReqPhotosAdapter;IILandroid/graphics/Bitmap;)V

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/FriendRequestsView;->post(Ljava/lang/Runnable;)Z

    .line 733
    :cond_0
    return-void
.end method
