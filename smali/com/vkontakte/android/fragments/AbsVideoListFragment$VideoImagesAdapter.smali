.class Lcom/vkontakte/android/fragments/AbsVideoListFragment$VideoImagesAdapter;
.super Lcom/vkontakte/android/ui/ListImageLoaderAdapter;
.source "AbsVideoListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/fragments/AbsVideoListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VideoImagesAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/AbsVideoListFragment;


# direct methods
.method private constructor <init>(Lcom/vkontakte/android/fragments/AbsVideoListFragment;)V
    .locals 0

    .prologue
    .line 327
    iput-object p1, p0, Lcom/vkontakte/android/fragments/AbsVideoListFragment$VideoImagesAdapter;->this$0:Lcom/vkontakte/android/fragments/AbsVideoListFragment;

    invoke-direct {p0}, Lcom/vkontakte/android/ui/ListImageLoaderAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkontakte/android/fragments/AbsVideoListFragment;Lcom/vkontakte/android/fragments/AbsVideoListFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/vkontakte/android/fragments/AbsVideoListFragment;
    .param p2, "x1"    # Lcom/vkontakte/android/fragments/AbsVideoListFragment$1;

    .prologue
    .line 327
    invoke-direct {p0, p1}, Lcom/vkontakte/android/fragments/AbsVideoListFragment$VideoImagesAdapter;-><init>(Lcom/vkontakte/android/fragments/AbsVideoListFragment;)V

    return-void
.end method


# virtual methods
.method public getImageCountForItem(I)I
    .locals 1
    .param p1, "item"    # I

    .prologue
    .line 336
    const/4 v0, 0x1

    return v0
.end method

.method public getImageURL(II)Ljava/lang/String;
    .locals 1
    .param p1, "item"    # I
    .param p2, "image"    # I

    .prologue
    .line 341
    iget-object v0, p0, Lcom/vkontakte/android/fragments/AbsVideoListFragment$VideoImagesAdapter;->this$0:Lcom/vkontakte/android/fragments/AbsVideoListFragment;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/AbsVideoListFragment;->data:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/api/VideoFile;

    iget-object v0, v0, Lcom/vkontakte/android/api/VideoFile;->urlBigThumb:Ljava/lang/String;

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Lcom/vkontakte/android/fragments/AbsVideoListFragment$VideoImagesAdapter;->this$0:Lcom/vkontakte/android/fragments/AbsVideoListFragment;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/AbsVideoListFragment;->data:Ljava/util/ArrayList;

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
    .line 347
    iget-object v1, p0, Lcom/vkontakte/android/fragments/AbsVideoListFragment$VideoImagesAdapter;->this$0:Lcom/vkontakte/android/fragments/AbsVideoListFragment;

    invoke-virtual {v1}, Lcom/vkontakte/android/fragments/AbsVideoListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/vkontakte/android/fragments/AbsVideoListFragment$VideoImagesAdapter;->this$0:Lcom/vkontakte/android/fragments/AbsVideoListFragment;

    iget-object v1, v1, Lcom/vkontakte/android/fragments/AbsVideoListFragment;->list:Landroid/widget/ListView;

    if-nez v1, :cond_1

    .line 359
    :cond_0
    :goto_0
    return-void

    .line 348
    :cond_1
    iget-object v1, p0, Lcom/vkontakte/android/fragments/AbsVideoListFragment$VideoImagesAdapter;->this$0:Lcom/vkontakte/android/fragments/AbsVideoListFragment;

    iget-object v1, v1, Lcom/vkontakte/android/fragments/AbsVideoListFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    if-lt p1, v1, :cond_0

    iget-object v1, p0, Lcom/vkontakte/android/fragments/AbsVideoListFragment$VideoImagesAdapter;->this$0:Lcom/vkontakte/android/fragments/AbsVideoListFragment;

    iget-object v1, v1, Lcom/vkontakte/android/fragments/AbsVideoListFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v1

    if-gt p1, v1, :cond_0

    .line 349
    move v0, p1

    .line 350
    .local v0, "pos":I
    iget-object v1, p0, Lcom/vkontakte/android/fragments/AbsVideoListFragment$VideoImagesAdapter;->this$0:Lcom/vkontakte/android/fragments/AbsVideoListFragment;

    invoke-virtual {v1}, Lcom/vkontakte/android/fragments/AbsVideoListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/vkontakte/android/fragments/AbsVideoListFragment$VideoImagesAdapter$1;

    invoke-direct {v2, p0, v0, p3}, Lcom/vkontakte/android/fragments/AbsVideoListFragment$VideoImagesAdapter$1;-><init>(Lcom/vkontakte/android/fragments/AbsVideoListFragment$VideoImagesAdapter;ILandroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
