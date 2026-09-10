.class Lcom/vkontakte/android/PhotoViewerFragment$CommentPhotosAdapter;
.super Lcom/vkontakte/android/ui/ListImageLoaderAdapter;
.source "PhotoViewerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/PhotoViewerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CommentPhotosAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/PhotoViewerFragment;


# direct methods
.method private constructor <init>(Lcom/vkontakte/android/PhotoViewerFragment;)V
    .locals 0

    .prologue
    .line 1057
    iput-object p1, p0, Lcom/vkontakte/android/PhotoViewerFragment$CommentPhotosAdapter;->this$0:Lcom/vkontakte/android/PhotoViewerFragment;

    invoke-direct {p0}, Lcom/vkontakte/android/ui/ListImageLoaderAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkontakte/android/PhotoViewerFragment;Lcom/vkontakte/android/PhotoViewerFragment$CommentPhotosAdapter;)V
    .locals 0

    .prologue
    .line 1057
    invoke-direct {p0, p1}, Lcom/vkontakte/android/PhotoViewerFragment$CommentPhotosAdapter;-><init>(Lcom/vkontakte/android/PhotoViewerFragment;)V

    return-void
.end method


# virtual methods
.method public getImageCountForItem(I)I
    .locals 1
    .param p1, "item"    # I

    .prologue
    .line 1065
    const/4 v0, 0x1

    return v0
.end method

.method public getImageURL(II)Ljava/lang/String;
    .locals 1
    .param p1, "item"    # I
    .param p2, "image"    # I

    .prologue
    .line 1070
    iget-object v0, p0, Lcom/vkontakte/android/PhotoViewerFragment$CommentPhotosAdapter;->this$0:Lcom/vkontakte/android/PhotoViewerFragment;

    invoke-static {v0}, Lcom/vkontakte/android/PhotoViewerFragment;->access$2(Lcom/vkontakte/android/PhotoViewerFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/NewsComment;

    iget-object v0, v0, Lcom/vkontakte/android/NewsComment;->userPhoto:Ljava/lang/String;

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 1060
    iget-object v0, p0, Lcom/vkontakte/android/PhotoViewerFragment$CommentPhotosAdapter;->this$0:Lcom/vkontakte/android/PhotoViewerFragment;

    invoke-static {v0}, Lcom/vkontakte/android/PhotoViewerFragment;->access$2(Lcom/vkontakte/android/PhotoViewerFragment;)Ljava/util/ArrayList;

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
    .line 1075
    iget-object v1, p0, Lcom/vkontakte/android/PhotoViewerFragment$CommentPhotosAdapter;->this$0:Lcom/vkontakte/android/PhotoViewerFragment;

    invoke-static {v1}, Lcom/vkontakte/android/PhotoViewerFragment;->access$1(Lcom/vkontakte/android/PhotoViewerFragment;)Lcom/vkontakte/android/ui/PhotoCommentsListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vkontakte/android/ui/PhotoCommentsListView;->getHeaderViewsCount()I

    move-result v1

    add-int/2addr p1, v1

    .line 1076
    iget-object v1, p0, Lcom/vkontakte/android/PhotoViewerFragment$CommentPhotosAdapter;->this$0:Lcom/vkontakte/android/PhotoViewerFragment;

    invoke-static {v1}, Lcom/vkontakte/android/PhotoViewerFragment;->access$1(Lcom/vkontakte/android/PhotoViewerFragment;)Lcom/vkontakte/android/ui/PhotoCommentsListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vkontakte/android/ui/PhotoCommentsListView;->getFirstVisiblePosition()I

    move-result v1

    if-lt p1, v1, :cond_0

    iget-object v1, p0, Lcom/vkontakte/android/PhotoViewerFragment$CommentPhotosAdapter;->this$0:Lcom/vkontakte/android/PhotoViewerFragment;

    invoke-static {v1}, Lcom/vkontakte/android/PhotoViewerFragment;->access$1(Lcom/vkontakte/android/PhotoViewerFragment;)Lcom/vkontakte/android/ui/PhotoCommentsListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vkontakte/android/ui/PhotoCommentsListView;->getLastVisiblePosition()I

    move-result v1

    if-le p1, v1, :cond_1

    .line 1085
    :cond_0
    :goto_0
    return-void

    .line 1077
    :cond_1
    iget-object v1, p0, Lcom/vkontakte/android/PhotoViewerFragment$CommentPhotosAdapter;->this$0:Lcom/vkontakte/android/PhotoViewerFragment;

    invoke-static {v1}, Lcom/vkontakte/android/PhotoViewerFragment;->access$1(Lcom/vkontakte/android/PhotoViewerFragment;)Lcom/vkontakte/android/ui/PhotoCommentsListView;

    move-result-object v1

    iget-object v2, p0, Lcom/vkontakte/android/PhotoViewerFragment$CommentPhotosAdapter;->this$0:Lcom/vkontakte/android/PhotoViewerFragment;

    invoke-static {v2}, Lcom/vkontakte/android/PhotoViewerFragment;->access$1(Lcom/vkontakte/android/PhotoViewerFragment;)Lcom/vkontakte/android/ui/PhotoCommentsListView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vkontakte/android/ui/PhotoCommentsListView;->getFirstVisiblePosition()I

    move-result v2

    sub-int v2, p1, v2

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/ui/PhotoCommentsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1078
    .local v0, "v":Landroid/view/View;
    iget-object v1, p0, Lcom/vkontakte/android/PhotoViewerFragment$CommentPhotosAdapter;->this$0:Lcom/vkontakte/android/PhotoViewerFragment;

    invoke-virtual {v1}, Lcom/vkontakte/android/PhotoViewerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/vkontakte/android/PhotoViewerFragment$CommentPhotosAdapter$1;

    invoke-direct {v2, p0, v0, p3}, Lcom/vkontakte/android/PhotoViewerFragment$CommentPhotosAdapter$1;-><init>(Lcom/vkontakte/android/PhotoViewerFragment$CommentPhotosAdapter;Landroid/view/View;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
