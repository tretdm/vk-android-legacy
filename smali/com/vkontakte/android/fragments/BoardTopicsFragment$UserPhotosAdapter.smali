.class Lcom/vkontakte/android/fragments/BoardTopicsFragment$UserPhotosAdapter;
.super Lcom/vkontakte/android/ui/ListImageLoaderAdapter;
.source "BoardTopicsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/fragments/BoardTopicsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UserPhotosAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/BoardTopicsFragment;


# direct methods
.method private constructor <init>(Lcom/vkontakte/android/fragments/BoardTopicsFragment;)V
    .locals 0

    .prologue
    .line 396
    iput-object p1, p0, Lcom/vkontakte/android/fragments/BoardTopicsFragment$UserPhotosAdapter;->this$0:Lcom/vkontakte/android/fragments/BoardTopicsFragment;

    invoke-direct {p0}, Lcom/vkontakte/android/ui/ListImageLoaderAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkontakte/android/fragments/BoardTopicsFragment;Lcom/vkontakte/android/fragments/BoardTopicsFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/vkontakte/android/fragments/BoardTopicsFragment;
    .param p2, "x1"    # Lcom/vkontakte/android/fragments/BoardTopicsFragment$1;

    .prologue
    .line 396
    invoke-direct {p0, p1}, Lcom/vkontakte/android/fragments/BoardTopicsFragment$UserPhotosAdapter;-><init>(Lcom/vkontakte/android/fragments/BoardTopicsFragment;)V

    return-void
.end method


# virtual methods
.method public getImageCountForItem(I)I
    .locals 1
    .param p1, "item"    # I

    .prologue
    .line 404
    const/4 v0, 0x1

    return v0
.end method

.method public getImageURL(II)Ljava/lang/String;
    .locals 1
    .param p1, "item"    # I
    .param p2, "image"    # I

    .prologue
    .line 409
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BoardTopicsFragment$UserPhotosAdapter;->this$0:Lcom/vkontakte/android/fragments/BoardTopicsFragment;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->data:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/api/BoardTopic;

    iget-object v0, v0, Lcom/vkontakte/android/api/BoardTopic;->updatedBy:Lcom/vkontakte/android/UserProfile;

    iget-object v0, v0, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 399
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BoardTopicsFragment$UserPhotosAdapter;->this$0:Lcom/vkontakte/android/fragments/BoardTopicsFragment;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->data:Ljava/util/ArrayList;

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
    .line 414
    iget-object v1, p0, Lcom/vkontakte/android/fragments/BoardTopicsFragment$UserPhotosAdapter;->this$0:Lcom/vkontakte/android/fragments/BoardTopicsFragment;

    iget-object v1, v1, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    add-int/2addr p1, v1

    .line 415
    iget-object v1, p0, Lcom/vkontakte/android/fragments/BoardTopicsFragment$UserPhotosAdapter;->this$0:Lcom/vkontakte/android/fragments/BoardTopicsFragment;

    iget-object v1, v1, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    if-lt p1, v1, :cond_0

    iget-object v1, p0, Lcom/vkontakte/android/fragments/BoardTopicsFragment$UserPhotosAdapter;->this$0:Lcom/vkontakte/android/fragments/BoardTopicsFragment;

    iget-object v1, v1, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v1

    if-le p1, v1, :cond_1

    .line 424
    :cond_0
    :goto_0
    return-void

    .line 416
    :cond_1
    iget-object v1, p0, Lcom/vkontakte/android/fragments/BoardTopicsFragment$UserPhotosAdapter;->this$0:Lcom/vkontakte/android/fragments/BoardTopicsFragment;

    iget-object v1, v1, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->list:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/vkontakte/android/fragments/BoardTopicsFragment$UserPhotosAdapter;->this$0:Lcom/vkontakte/android/fragments/BoardTopicsFragment;

    iget-object v2, v2, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v2

    sub-int v2, p1, v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 417
    .local v0, "v":Landroid/view/View;
    iget-object v1, p0, Lcom/vkontakte/android/fragments/BoardTopicsFragment$UserPhotosAdapter;->this$0:Lcom/vkontakte/android/fragments/BoardTopicsFragment;

    invoke-virtual {v1}, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/vkontakte/android/fragments/BoardTopicsFragment$UserPhotosAdapter$1;

    invoke-direct {v2, p0, v0, p3}, Lcom/vkontakte/android/fragments/BoardTopicsFragment$UserPhotosAdapter$1;-><init>(Lcom/vkontakte/android/fragments/BoardTopicsFragment$UserPhotosAdapter;Landroid/view/View;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
