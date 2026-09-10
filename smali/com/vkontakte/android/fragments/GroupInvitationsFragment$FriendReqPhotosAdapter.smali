.class Lcom/vkontakte/android/fragments/GroupInvitationsFragment$FriendReqPhotosAdapter;
.super Lcom/vkontakte/android/ui/ListImageLoaderAdapter;
.source "GroupInvitationsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/fragments/GroupInvitationsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FriendReqPhotosAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/GroupInvitationsFragment;


# direct methods
.method private constructor <init>(Lcom/vkontakte/android/fragments/GroupInvitationsFragment;)V
    .locals 0

    .prologue
    .line 392
    iput-object p1, p0, Lcom/vkontakte/android/fragments/GroupInvitationsFragment$FriendReqPhotosAdapter;->this$0:Lcom/vkontakte/android/fragments/GroupInvitationsFragment;

    invoke-direct {p0}, Lcom/vkontakte/android/ui/ListImageLoaderAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkontakte/android/fragments/GroupInvitationsFragment;Lcom/vkontakte/android/fragments/GroupInvitationsFragment$FriendReqPhotosAdapter;)V
    .locals 0

    .prologue
    .line 392
    invoke-direct {p0, p1}, Lcom/vkontakte/android/fragments/GroupInvitationsFragment$FriendReqPhotosAdapter;-><init>(Lcom/vkontakte/android/fragments/GroupInvitationsFragment;)V

    return-void
.end method

.method static synthetic access$1(Lcom/vkontakte/android/fragments/GroupInvitationsFragment$FriendReqPhotosAdapter;)Lcom/vkontakte/android/fragments/GroupInvitationsFragment;
    .locals 1

    .prologue
    .line 392
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GroupInvitationsFragment$FriendReqPhotosAdapter;->this$0:Lcom/vkontakte/android/fragments/GroupInvitationsFragment;

    return-object v0
.end method


# virtual methods
.method public getImageCountForItem(I)I
    .locals 1
    .param p1, "item"    # I

    .prologue
    .line 400
    const/4 v0, 0x1

    return v0
.end method

.method public getImageURL(II)Ljava/lang/String;
    .locals 1
    .param p1, "item"    # I
    .param p2, "image"    # I

    .prologue
    .line 405
    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/fragments/GroupInvitationsFragment$FriendReqPhotosAdapter;->this$0:Lcom/vkontakte/android/fragments/GroupInvitationsFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/GroupInvitationsFragment;->access$0(Lcom/vkontakte/android/fragments/GroupInvitationsFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/api/GroupInvitation;

    iget-object v0, v0, Lcom/vkontakte/android/api/GroupInvitation;->group:Lcom/vkontakte/android/api/Group;

    iget-object v0, v0, Lcom/vkontakte/android/api/Group;->photo:Ljava/lang/String;

    .line 406
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 395
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GroupInvitationsFragment$FriendReqPhotosAdapter;->this$0:Lcom/vkontakte/android/fragments/GroupInvitationsFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/GroupInvitationsFragment;->access$0(Lcom/vkontakte/android/fragments/GroupInvitationsFragment;)Ljava/util/ArrayList;

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
    .line 411
    iget-object v2, p0, Lcom/vkontakte/android/fragments/GroupInvitationsFragment$FriendReqPhotosAdapter;->this$0:Lcom/vkontakte/android/fragments/GroupInvitationsFragment;

    invoke-virtual {v2}, Lcom/vkontakte/android/fragments/GroupInvitationsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/vkontakte/android/fragments/GroupInvitationsFragment$FriendReqPhotosAdapter;->this$0:Lcom/vkontakte/android/fragments/GroupInvitationsFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/GroupInvitationsFragment;->access$2(Lcom/vkontakte/android/fragments/GroupInvitationsFragment;)Lcom/vkontakte/android/ui/RefreshableListView;

    move-result-object v2

    if-nez v2, :cond_1

    .line 425
    :cond_0
    :goto_0
    return-void

    .line 412
    :cond_1
    iget-object v2, p0, Lcom/vkontakte/android/fragments/GroupInvitationsFragment$FriendReqPhotosAdapter;->this$0:Lcom/vkontakte/android/fragments/GroupInvitationsFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/GroupInvitationsFragment;->access$2(Lcom/vkontakte/android/fragments/GroupInvitationsFragment;)Lcom/vkontakte/android/ui/RefreshableListView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vkontakte/android/ui/RefreshableListView;->getFirstVisiblePosition()I

    move-result v2

    iget-object v3, p0, Lcom/vkontakte/android/fragments/GroupInvitationsFragment$FriendReqPhotosAdapter;->this$0:Lcom/vkontakte/android/fragments/GroupInvitationsFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/GroupInvitationsFragment;->access$2(Lcom/vkontakte/android/fragments/GroupInvitationsFragment;)Lcom/vkontakte/android/ui/RefreshableListView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/vkontakte/android/ui/RefreshableListView;->getHeaderViewsCount()I

    move-result v3

    sub-int v1, v2, v3

    .line 413
    .local v1, "vstart":I
    iget-object v2, p0, Lcom/vkontakte/android/fragments/GroupInvitationsFragment$FriendReqPhotosAdapter;->this$0:Lcom/vkontakte/android/fragments/GroupInvitationsFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/GroupInvitationsFragment;->access$2(Lcom/vkontakte/android/fragments/GroupInvitationsFragment;)Lcom/vkontakte/android/ui/RefreshableListView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vkontakte/android/ui/RefreshableListView;->getLastVisiblePosition()I

    move-result v2

    iget-object v3, p0, Lcom/vkontakte/android/fragments/GroupInvitationsFragment$FriendReqPhotosAdapter;->this$0:Lcom/vkontakte/android/fragments/GroupInvitationsFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/GroupInvitationsFragment;->access$2(Lcom/vkontakte/android/fragments/GroupInvitationsFragment;)Lcom/vkontakte/android/ui/RefreshableListView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/vkontakte/android/ui/RefreshableListView;->getHeaderViewsCount()I

    move-result v3

    sub-int v0, v2, v3

    .line 414
    .local v0, "vend":I
    if-lt p1, v1, :cond_0

    if-gt p1, v0, :cond_0

    .line 415
    iget-object v2, p0, Lcom/vkontakte/android/fragments/GroupInvitationsFragment$FriendReqPhotosAdapter;->this$0:Lcom/vkontakte/android/fragments/GroupInvitationsFragment;

    invoke-virtual {v2}, Lcom/vkontakte/android/fragments/GroupInvitationsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    new-instance v3, Lcom/vkontakte/android/fragments/GroupInvitationsFragment$FriendReqPhotosAdapter$1;

    invoke-direct {v3, p0, p1, p2, p3}, Lcom/vkontakte/android/fragments/GroupInvitationsFragment$FriendReqPhotosAdapter$1;-><init>(Lcom/vkontakte/android/fragments/GroupInvitationsFragment$FriendReqPhotosAdapter;IILandroid/graphics/Bitmap;)V

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
