.class Lcom/vkontakte/android/fragments/AbsUserListFragment$UserPhotosAdapter;
.super Lcom/vkontakte/android/ui/ListImageLoaderAdapter;
.source "AbsUserListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/fragments/AbsUserListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UserPhotosAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/AbsUserListFragment;


# direct methods
.method private constructor <init>(Lcom/vkontakte/android/fragments/AbsUserListFragment;)V
    .locals 0

    .prologue
    .line 124
    iput-object p1, p0, Lcom/vkontakte/android/fragments/AbsUserListFragment$UserPhotosAdapter;->this$0:Lcom/vkontakte/android/fragments/AbsUserListFragment;

    invoke-direct {p0}, Lcom/vkontakte/android/ui/ListImageLoaderAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkontakte/android/fragments/AbsUserListFragment;Lcom/vkontakte/android/fragments/AbsUserListFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/vkontakte/android/fragments/AbsUserListFragment;
    .param p2, "x1"    # Lcom/vkontakte/android/fragments/AbsUserListFragment$1;

    .prologue
    .line 124
    invoke-direct {p0, p1}, Lcom/vkontakte/android/fragments/AbsUserListFragment$UserPhotosAdapter;-><init>(Lcom/vkontakte/android/fragments/AbsUserListFragment;)V

    return-void
.end method


# virtual methods
.method public getImageCountForItem(I)I
    .locals 1
    .param p1, "item"    # I

    .prologue
    .line 132
    const/4 v0, 0x1

    return v0
.end method

.method public getImageURL(II)Ljava/lang/String;
    .locals 1
    .param p1, "item"    # I
    .param p2, "image"    # I

    .prologue
    .line 137
    iget-object v0, p0, Lcom/vkontakte/android/fragments/AbsUserListFragment$UserPhotosAdapter;->this$0:Lcom/vkontakte/android/fragments/AbsUserListFragment;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/AbsUserListFragment;->data:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/UserProfile;

    iget-object v0, v0, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/vkontakte/android/fragments/AbsUserListFragment$UserPhotosAdapter;->this$0:Lcom/vkontakte/android/fragments/AbsUserListFragment;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/AbsUserListFragment;->data:Ljava/util/ArrayList;

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
    .line 142
    iget-object v1, p0, Lcom/vkontakte/android/fragments/AbsUserListFragment$UserPhotosAdapter;->this$0:Lcom/vkontakte/android/fragments/AbsUserListFragment;

    iget-object v1, v1, Lcom/vkontakte/android/fragments/AbsUserListFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    add-int/2addr p1, v1

    .line 143
    iget-object v1, p0, Lcom/vkontakte/android/fragments/AbsUserListFragment$UserPhotosAdapter;->this$0:Lcom/vkontakte/android/fragments/AbsUserListFragment;

    iget-object v1, v1, Lcom/vkontakte/android/fragments/AbsUserListFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    if-lt p1, v1, :cond_0

    iget-object v1, p0, Lcom/vkontakte/android/fragments/AbsUserListFragment$UserPhotosAdapter;->this$0:Lcom/vkontakte/android/fragments/AbsUserListFragment;

    iget-object v1, v1, Lcom/vkontakte/android/fragments/AbsUserListFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v1

    if-le p1, v1, :cond_1

    .line 153
    :cond_0
    :goto_0
    return-void

    .line 144
    :cond_1
    iget-object v1, p0, Lcom/vkontakte/android/fragments/AbsUserListFragment$UserPhotosAdapter;->this$0:Lcom/vkontakte/android/fragments/AbsUserListFragment;

    iget-object v1, v1, Lcom/vkontakte/android/fragments/AbsUserListFragment;->list:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/vkontakte/android/fragments/AbsUserListFragment$UserPhotosAdapter;->this$0:Lcom/vkontakte/android/fragments/AbsUserListFragment;

    iget-object v2, v2, Lcom/vkontakte/android/fragments/AbsUserListFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v2

    sub-int v2, p1, v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 145
    .local v0, "v":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 146
    new-instance v1, Lcom/vkontakte/android/fragments/AbsUserListFragment$UserPhotosAdapter$1;

    invoke-direct {v1, p0, v0, p3}, Lcom/vkontakte/android/fragments/AbsUserListFragment$UserPhotosAdapter$1;-><init>(Lcom/vkontakte/android/fragments/AbsUserListFragment$UserPhotosAdapter;Landroid/view/View;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
