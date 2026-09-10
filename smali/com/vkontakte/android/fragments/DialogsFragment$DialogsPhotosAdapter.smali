.class Lcom/vkontakte/android/fragments/DialogsFragment$DialogsPhotosAdapter;
.super Lcom/vkontakte/android/ui/ListImageLoaderAdapter;
.source "DialogsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/fragments/DialogsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DialogsPhotosAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/DialogsFragment;


# direct methods
.method private constructor <init>(Lcom/vkontakte/android/fragments/DialogsFragment;)V
    .locals 0

    .prologue
    .line 554
    iput-object p1, p0, Lcom/vkontakte/android/fragments/DialogsFragment$DialogsPhotosAdapter;->this$0:Lcom/vkontakte/android/fragments/DialogsFragment;

    invoke-direct {p0}, Lcom/vkontakte/android/ui/ListImageLoaderAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkontakte/android/fragments/DialogsFragment;Lcom/vkontakte/android/fragments/DialogsFragment$DialogsPhotosAdapter;)V
    .locals 0

    .prologue
    .line 554
    invoke-direct {p0, p1}, Lcom/vkontakte/android/fragments/DialogsFragment$DialogsPhotosAdapter;-><init>(Lcom/vkontakte/android/fragments/DialogsFragment;)V

    return-void
.end method


# virtual methods
.method public getImageCountForItem(I)I
    .locals 2
    .param p1, "item"    # I

    .prologue
    .line 562
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DialogsFragment$DialogsPhotosAdapter;->this$0:Lcom/vkontakte/android/fragments/DialogsFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/DialogsFragment;->access$2(Lcom/vkontakte/android/fragments/DialogsFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/DialogEntry;

    iget-object v0, v0, Lcom/vkontakte/android/DialogEntry;->lastMessage:Lcom/vkontakte/android/Message;

    iget-boolean v0, v0, Lcom/vkontakte/android/Message;->out:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/fragments/DialogsFragment$DialogsPhotosAdapter;->this$0:Lcom/vkontakte/android/fragments/DialogsFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/DialogsFragment;->access$2(Lcom/vkontakte/android/fragments/DialogsFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/DialogEntry;

    iget-object v0, v0, Lcom/vkontakte/android/DialogEntry;->profile:Lcom/vkontakte/android/UserProfile;

    iget v0, v0, Lcom/vkontakte/android/UserProfile;->uid:I

    const v1, 0x77359400

    if-le v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x2

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getImageURL(II)Ljava/lang/String;
    .locals 4
    .param p1, "item"    # I
    .param p2, "image"    # I

    .prologue
    const/4 v1, 0x0

    .line 567
    iget-object v2, p0, Lcom/vkontakte/android/fragments/DialogsFragment$DialogsPhotosAdapter;->this$0:Lcom/vkontakte/android/fragments/DialogsFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/DialogsFragment;->access$2(Lcom/vkontakte/android/fragments/DialogsFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/DialogEntry;

    .line 568
    .local v0, "e":Lcom/vkontakte/android/DialogEntry;
    if-nez p2, :cond_1

    .line 569
    iget-object v1, v0, Lcom/vkontakte/android/DialogEntry;->profile:Lcom/vkontakte/android/UserProfile;

    iget-object v1, v1, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    .line 576
    :cond_0
    :goto_0
    return-object v1

    .line 570
    :cond_1
    const/4 v2, 0x1

    if-ne p2, v2, :cond_0

    .line 571
    iget-object v2, v0, Lcom/vkontakte/android/DialogEntry;->lastMessage:Lcom/vkontakte/android/Message;

    iget-boolean v2, v2, Lcom/vkontakte/android/Message;->out:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/vkontakte/android/fragments/DialogsFragment$DialogsPhotosAdapter;->this$0:Lcom/vkontakte/android/fragments/DialogsFragment;

    invoke-virtual {v2}, Lcom/vkontakte/android/fragments/DialogsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/support/v4/app/FragmentActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "userphoto"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 572
    :cond_2
    iget-object v2, v0, Lcom/vkontakte/android/DialogEntry;->profile:Lcom/vkontakte/android/UserProfile;

    iget v2, v2, Lcom/vkontakte/android/UserProfile;->uid:I

    const v3, 0x77359400

    if-le v2, v3, :cond_0

    .line 573
    iget-object v1, v0, Lcom/vkontakte/android/DialogEntry;->lastMessagePhoto:Ljava/lang/String;

    goto :goto_0
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 557
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DialogsFragment$DialogsPhotosAdapter;->this$0:Lcom/vkontakte/android/fragments/DialogsFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/DialogsFragment;->access$2(Lcom/vkontakte/android/fragments/DialogsFragment;)Ljava/util/ArrayList;

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
    .line 581
    iget-object v1, p0, Lcom/vkontakte/android/fragments/DialogsFragment$DialogsPhotosAdapter;->this$0:Lcom/vkontakte/android/fragments/DialogsFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/DialogsFragment;->access$4(Lcom/vkontakte/android/fragments/DialogsFragment;)Lcom/vkontakte/android/ui/RefreshableListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vkontakte/android/ui/RefreshableListView;->getHeaderViewsCount()I

    move-result v1

    add-int/2addr p1, v1

    .line 582
    iget-object v1, p0, Lcom/vkontakte/android/fragments/DialogsFragment$DialogsPhotosAdapter;->this$0:Lcom/vkontakte/android/fragments/DialogsFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/DialogsFragment;->access$4(Lcom/vkontakte/android/fragments/DialogsFragment;)Lcom/vkontakte/android/ui/RefreshableListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vkontakte/android/ui/RefreshableListView;->getFirstVisiblePosition()I

    move-result v1

    if-lt p1, v1, :cond_0

    iget-object v1, p0, Lcom/vkontakte/android/fragments/DialogsFragment$DialogsPhotosAdapter;->this$0:Lcom/vkontakte/android/fragments/DialogsFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/DialogsFragment;->access$4(Lcom/vkontakte/android/fragments/DialogsFragment;)Lcom/vkontakte/android/ui/RefreshableListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vkontakte/android/ui/RefreshableListView;->getLastVisiblePosition()I

    move-result v1

    if-le p1, v1, :cond_1

    .line 590
    :cond_0
    :goto_0
    return-void

    .line 583
    :cond_1
    iget-object v1, p0, Lcom/vkontakte/android/fragments/DialogsFragment$DialogsPhotosAdapter;->this$0:Lcom/vkontakte/android/fragments/DialogsFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/DialogsFragment;->access$4(Lcom/vkontakte/android/fragments/DialogsFragment;)Lcom/vkontakte/android/ui/RefreshableListView;

    move-result-object v1

    iget-object v2, p0, Lcom/vkontakte/android/fragments/DialogsFragment$DialogsPhotosAdapter;->this$0:Lcom/vkontakte/android/fragments/DialogsFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/DialogsFragment;->access$4(Lcom/vkontakte/android/fragments/DialogsFragment;)Lcom/vkontakte/android/ui/RefreshableListView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vkontakte/android/ui/RefreshableListView;->getFirstVisiblePosition()I

    move-result v2

    sub-int v2, p1, v2

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/ui/RefreshableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 584
    .local v0, "v":Landroid/view/View;
    iget-object v1, p0, Lcom/vkontakte/android/fragments/DialogsFragment$DialogsPhotosAdapter;->this$0:Lcom/vkontakte/android/fragments/DialogsFragment;

    invoke-virtual {v1}, Lcom/vkontakte/android/fragments/DialogsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 585
    iget-object v1, p0, Lcom/vkontakte/android/fragments/DialogsFragment$DialogsPhotosAdapter;->this$0:Lcom/vkontakte/android/fragments/DialogsFragment;

    invoke-virtual {v1}, Lcom/vkontakte/android/fragments/DialogsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/vkontakte/android/fragments/DialogsFragment$DialogsPhotosAdapter$1;

    invoke-direct {v2, p0, v0, p3, p2}, Lcom/vkontakte/android/fragments/DialogsFragment$DialogsPhotosAdapter$1;-><init>(Lcom/vkontakte/android/fragments/DialogsFragment$DialogsPhotosAdapter;Landroid/view/View;Landroid/graphics/Bitmap;I)V

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
