.class Lcom/vkontakte/android/VideoListView$VideoImagesAdapter;
.super Lcom/vkontakte/android/ui/ListImageLoaderAdapter;
.source "VideoListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/VideoListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VideoImagesAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/VideoListView;


# direct methods
.method private constructor <init>(Lcom/vkontakte/android/VideoListView;)V
    .locals 0

    .prologue
    .line 665
    iput-object p1, p0, Lcom/vkontakte/android/VideoListView$VideoImagesAdapter;->this$0:Lcom/vkontakte/android/VideoListView;

    invoke-direct {p0}, Lcom/vkontakte/android/ui/ListImageLoaderAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkontakte/android/VideoListView;Lcom/vkontakte/android/VideoListView$VideoImagesAdapter;)V
    .locals 0

    .prologue
    .line 665
    invoke-direct {p0, p1}, Lcom/vkontakte/android/VideoListView$VideoImagesAdapter;-><init>(Lcom/vkontakte/android/VideoListView;)V

    return-void
.end method

.method static synthetic access$1(Lcom/vkontakte/android/VideoListView$VideoImagesAdapter;)Lcom/vkontakte/android/VideoListView;
    .locals 1

    .prologue
    .line 665
    iget-object v0, p0, Lcom/vkontakte/android/VideoListView$VideoImagesAdapter;->this$0:Lcom/vkontakte/android/VideoListView;

    return-object v0
.end method


# virtual methods
.method public getImageCountForItem(I)I
    .locals 1
    .param p1, "item"    # I

    .prologue
    .line 674
    const/4 v0, 0x1

    return v0
.end method

.method public getImageURL(II)Ljava/lang/String;
    .locals 2
    .param p1, "item"    # I
    .param p2, "image"    # I

    .prologue
    const/4 v1, 0x0

    .line 680
    :try_start_0
    iget-object v0, p0, Lcom/vkontakte/android/VideoListView$VideoImagesAdapter;->this$0:Lcom/vkontakte/android/VideoListView;

    invoke-static {v0}, Lcom/vkontakte/android/VideoListView;->access$0(Lcom/vkontakte/android/VideoListView;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/VideoListView$VideoImagesAdapter;->this$0:Lcom/vkontakte/android/VideoListView;

    invoke-static {v0}, Lcom/vkontakte/android/VideoListView;->access$0(Lcom/vkontakte/android/VideoListView;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/api/VideoFile;

    iget-object v0, v0, Lcom/vkontakte/android/api/VideoFile;->urlThumb:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 682
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    .line 680
    goto :goto_0

    .line 681
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 682
    goto :goto_0
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 669
    iget-object v0, p0, Lcom/vkontakte/android/VideoListView$VideoImagesAdapter;->this$0:Lcom/vkontakte/android/VideoListView;

    invoke-static {v0}, Lcom/vkontakte/android/VideoListView;->access$0(Lcom/vkontakte/android/VideoListView;)Ljava/util/Vector;

    move-result-object v0

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
    .line 687
    iget-object v1, p0, Lcom/vkontakte/android/VideoListView$VideoImagesAdapter;->this$0:Lcom/vkontakte/android/VideoListView;

    invoke-static {v1}, Lcom/vkontakte/android/VideoListView;->access$2(Lcom/vkontakte/android/VideoListView;)Lcom/vkontakte/android/ui/RefreshableListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vkontakte/android/ui/RefreshableListView;->getHeaderViewsCount()I

    move-result v1

    add-int/2addr p1, v1

    .line 688
    iget-object v1, p0, Lcom/vkontakte/android/VideoListView$VideoImagesAdapter;->this$0:Lcom/vkontakte/android/VideoListView;

    invoke-static {v1}, Lcom/vkontakte/android/VideoListView;->access$2(Lcom/vkontakte/android/VideoListView;)Lcom/vkontakte/android/ui/RefreshableListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vkontakte/android/ui/RefreshableListView;->getFirstVisiblePosition()I

    move-result v1

    if-lt p1, v1, :cond_0

    iget-object v1, p0, Lcom/vkontakte/android/VideoListView$VideoImagesAdapter;->this$0:Lcom/vkontakte/android/VideoListView;

    invoke-static {v1}, Lcom/vkontakte/android/VideoListView;->access$2(Lcom/vkontakte/android/VideoListView;)Lcom/vkontakte/android/ui/RefreshableListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vkontakte/android/ui/RefreshableListView;->getLastVisiblePosition()I

    move-result v1

    if-gt p1, v1, :cond_0

    .line 689
    iget-object v1, p0, Lcom/vkontakte/android/VideoListView$VideoImagesAdapter;->this$0:Lcom/vkontakte/android/VideoListView;

    invoke-static {v1}, Lcom/vkontakte/android/VideoListView;->access$2(Lcom/vkontakte/android/VideoListView;)Lcom/vkontakte/android/ui/RefreshableListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vkontakte/android/ui/RefreshableListView;->getHeaderViewsCount()I

    move-result v1

    sub-int v0, p1, v1

    .line 690
    .local v0, "pos":I
    iget-object v1, p0, Lcom/vkontakte/android/VideoListView$VideoImagesAdapter;->this$0:Lcom/vkontakte/android/VideoListView;

    new-instance v2, Lcom/vkontakte/android/VideoListView$VideoImagesAdapter$1;

    invoke-direct {v2, p0, v0, p3}, Lcom/vkontakte/android/VideoListView$VideoImagesAdapter$1;-><init>(Lcom/vkontakte/android/VideoListView$VideoImagesAdapter;ILandroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/VideoListView;->post(Ljava/lang/Runnable;)Z

    .line 697
    .end local v0    # "pos":I
    :cond_0
    return-void
.end method
