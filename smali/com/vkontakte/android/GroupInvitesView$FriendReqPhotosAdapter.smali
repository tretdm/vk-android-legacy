.class Lcom/vkontakte/android/GroupInvitesView$FriendReqPhotosAdapter;
.super Lcom/vkontakte/android/ui/ListImageLoaderAdapter;
.source "GroupInvitesView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/GroupInvitesView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FriendReqPhotosAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/GroupInvitesView;


# direct methods
.method private constructor <init>(Lcom/vkontakte/android/GroupInvitesView;)V
    .locals 0

    .prologue
    .line 373
    iput-object p1, p0, Lcom/vkontakte/android/GroupInvitesView$FriendReqPhotosAdapter;->this$0:Lcom/vkontakte/android/GroupInvitesView;

    invoke-direct {p0}, Lcom/vkontakte/android/ui/ListImageLoaderAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkontakte/android/GroupInvitesView;Lcom/vkontakte/android/GroupInvitesView$FriendReqPhotosAdapter;)V
    .locals 0

    .prologue
    .line 373
    invoke-direct {p0, p1}, Lcom/vkontakte/android/GroupInvitesView$FriendReqPhotosAdapter;-><init>(Lcom/vkontakte/android/GroupInvitesView;)V

    return-void
.end method

.method static synthetic access$1(Lcom/vkontakte/android/GroupInvitesView$FriendReqPhotosAdapter;)Lcom/vkontakte/android/GroupInvitesView;
    .locals 1

    .prologue
    .line 373
    iget-object v0, p0, Lcom/vkontakte/android/GroupInvitesView$FriendReqPhotosAdapter;->this$0:Lcom/vkontakte/android/GroupInvitesView;

    return-object v0
.end method


# virtual methods
.method public getImageCountForItem(I)I
    .locals 1
    .param p1, "item"    # I

    .prologue
    .line 381
    const/4 v0, 0x1

    return v0
.end method

.method public getImageURL(II)Ljava/lang/String;
    .locals 1
    .param p1, "item"    # I
    .param p2, "image"    # I

    .prologue
    .line 386
    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/GroupInvitesView$FriendReqPhotosAdapter;->this$0:Lcom/vkontakte/android/GroupInvitesView;

    invoke-static {v0}, Lcom/vkontakte/android/GroupInvitesView;->access$0(Lcom/vkontakte/android/GroupInvitesView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/api/GroupInvitation;

    iget-object v0, v0, Lcom/vkontakte/android/api/GroupInvitation;->group:Lcom/vkontakte/android/api/Group;

    iget-object v0, v0, Lcom/vkontakte/android/api/Group;->photo:Ljava/lang/String;

    .line 387
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 376
    iget-object v0, p0, Lcom/vkontakte/android/GroupInvitesView$FriendReqPhotosAdapter;->this$0:Lcom/vkontakte/android/GroupInvitesView;

    invoke-static {v0}, Lcom/vkontakte/android/GroupInvitesView;->access$0(Lcom/vkontakte/android/GroupInvitesView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public imageLoaded(IILandroid/graphics/Bitmap;)V
    .locals 4
    .param p1, "item"    # I
    .param p2, "image"    # I
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 392
    iget-object v2, p0, Lcom/vkontakte/android/GroupInvitesView$FriendReqPhotosAdapter;->this$0:Lcom/vkontakte/android/GroupInvitesView;

    iget-object v2, v2, Lcom/vkontakte/android/GroupInvitesView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v2}, Lcom/vkontakte/android/ui/RefreshableListView;->getFirstVisiblePosition()I

    move-result v2

    iget-object v3, p0, Lcom/vkontakte/android/GroupInvitesView$FriendReqPhotosAdapter;->this$0:Lcom/vkontakte/android/GroupInvitesView;

    iget-object v3, v3, Lcom/vkontakte/android/GroupInvitesView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v3}, Lcom/vkontakte/android/ui/RefreshableListView;->getHeaderViewsCount()I

    move-result v3

    sub-int v1, v2, v3

    .line 393
    .local v1, "vstart":I
    iget-object v2, p0, Lcom/vkontakte/android/GroupInvitesView$FriendReqPhotosAdapter;->this$0:Lcom/vkontakte/android/GroupInvitesView;

    iget-object v2, v2, Lcom/vkontakte/android/GroupInvitesView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v2}, Lcom/vkontakte/android/ui/RefreshableListView;->getLastVisiblePosition()I

    move-result v2

    iget-object v3, p0, Lcom/vkontakte/android/GroupInvitesView$FriendReqPhotosAdapter;->this$0:Lcom/vkontakte/android/GroupInvitesView;

    iget-object v3, v3, Lcom/vkontakte/android/GroupInvitesView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v3}, Lcom/vkontakte/android/ui/RefreshableListView;->getHeaderViewsCount()I

    move-result v3

    sub-int v0, v2, v3

    .line 394
    .local v0, "vend":I
    if-lt p1, v1, :cond_0

    if-gt p1, v0, :cond_0

    .line 395
    iget-object v2, p0, Lcom/vkontakte/android/GroupInvitesView$FriendReqPhotosAdapter;->this$0:Lcom/vkontakte/android/GroupInvitesView;

    new-instance v3, Lcom/vkontakte/android/GroupInvitesView$FriendReqPhotosAdapter$1;

    invoke-direct {v3, p0, p1, p2, p3}, Lcom/vkontakte/android/GroupInvitesView$FriendReqPhotosAdapter$1;-><init>(Lcom/vkontakte/android/GroupInvitesView$FriendReqPhotosAdapter;IILandroid/graphics/Bitmap;)V

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/GroupInvitesView;->post(Ljava/lang/Runnable;)Z

    .line 405
    :cond_0
    return-void
.end method
