.class Lcom/vkontakte/android/UserListActivity$UserPhotosAdapter;
.super Lcom/vkontakte/android/ui/ListImageLoaderAdapter;
.source "UserListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/UserListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UserPhotosAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/UserListActivity;


# direct methods
.method private constructor <init>(Lcom/vkontakte/android/UserListActivity;)V
    .locals 0

    .prologue
    .line 292
    iput-object p1, p0, Lcom/vkontakte/android/UserListActivity$UserPhotosAdapter;->this$0:Lcom/vkontakte/android/UserListActivity;

    invoke-direct {p0}, Lcom/vkontakte/android/ui/ListImageLoaderAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkontakte/android/UserListActivity;Lcom/vkontakte/android/UserListActivity$UserPhotosAdapter;)V
    .locals 0

    .prologue
    .line 292
    invoke-direct {p0, p1}, Lcom/vkontakte/android/UserListActivity$UserPhotosAdapter;-><init>(Lcom/vkontakte/android/UserListActivity;)V

    return-void
.end method


# virtual methods
.method public getImageCountForItem(I)I
    .locals 1
    .param p1, "item"    # I

    .prologue
    .line 300
    const/4 v0, 0x1

    return v0
.end method

.method public getImageURL(II)Ljava/lang/String;
    .locals 1
    .param p1, "item"    # I
    .param p2, "image"    # I

    .prologue
    .line 305
    iget-object v0, p0, Lcom/vkontakte/android/UserListActivity$UserPhotosAdapter;->this$0:Lcom/vkontakte/android/UserListActivity;

    iget-object v0, v0, Lcom/vkontakte/android/UserListActivity;->users:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/UserProfile;

    iget-object v0, v0, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lcom/vkontakte/android/UserListActivity$UserPhotosAdapter;->this$0:Lcom/vkontakte/android/UserListActivity;

    iget-object v0, v0, Lcom/vkontakte/android/UserListActivity;->users:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public imageLoaded(IILandroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "item"    # I
    .param p2, "image"    # I
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 310
    iget-object v1, p0, Lcom/vkontakte/android/UserListActivity$UserPhotosAdapter;->this$0:Lcom/vkontakte/android/UserListActivity;

    iget-object v1, v1, Lcom/vkontakte/android/UserListActivity;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v1}, Lcom/vkontakte/android/ui/RefreshableListView;->getHeaderViewsCount()I

    move-result v1

    add-int/2addr p1, v1

    .line 311
    iget-object v1, p0, Lcom/vkontakte/android/UserListActivity$UserPhotosAdapter;->this$0:Lcom/vkontakte/android/UserListActivity;

    iget-object v1, v1, Lcom/vkontakte/android/UserListActivity;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v1}, Lcom/vkontakte/android/ui/RefreshableListView;->getFirstVisiblePosition()I

    move-result v1

    if-lt p1, v1, :cond_0

    iget-object v1, p0, Lcom/vkontakte/android/UserListActivity$UserPhotosAdapter;->this$0:Lcom/vkontakte/android/UserListActivity;

    iget-object v1, v1, Lcom/vkontakte/android/UserListActivity;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v1}, Lcom/vkontakte/android/ui/RefreshableListView;->getLastVisiblePosition()I

    move-result v1

    if-le p1, v1, :cond_1

    .line 320
    :cond_0
    :goto_0
    return-void

    .line 312
    :cond_1
    iget-object v1, p0, Lcom/vkontakte/android/UserListActivity$UserPhotosAdapter;->this$0:Lcom/vkontakte/android/UserListActivity;

    iget-object v1, v1, Lcom/vkontakte/android/UserListActivity;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    iget-object v2, p0, Lcom/vkontakte/android/UserListActivity$UserPhotosAdapter;->this$0:Lcom/vkontakte/android/UserListActivity;

    iget-object v2, v2, Lcom/vkontakte/android/UserListActivity;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v2}, Lcom/vkontakte/android/ui/RefreshableListView;->getFirstVisiblePosition()I

    move-result v2

    sub-int v2, p1, v2

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/ui/RefreshableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 313
    .local v0, "v":Landroid/view/View;
    iget-object v1, p0, Lcom/vkontakte/android/UserListActivity$UserPhotosAdapter;->this$0:Lcom/vkontakte/android/UserListActivity;

    new-instance v2, Lcom/vkontakte/android/UserListActivity$UserPhotosAdapter$1;

    invoke-direct {v2, p0, v0, p3}, Lcom/vkontakte/android/UserListActivity$UserPhotosAdapter$1;-><init>(Lcom/vkontakte/android/UserListActivity$UserPhotosAdapter;Landroid/view/View;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/UserListActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
