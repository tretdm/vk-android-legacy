.class Lcom/vkontakte/android/PhotoAlbumsView$AlbumCoversAdapter;
.super Lcom/vkontakte/android/ui/ListImageLoaderAdapter;
.source "PhotoAlbumsView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/PhotoAlbumsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AlbumCoversAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/PhotoAlbumsView;


# direct methods
.method private constructor <init>(Lcom/vkontakte/android/PhotoAlbumsView;)V
    .locals 0

    .prologue
    .line 260
    iput-object p1, p0, Lcom/vkontakte/android/PhotoAlbumsView$AlbumCoversAdapter;->this$0:Lcom/vkontakte/android/PhotoAlbumsView;

    invoke-direct {p0}, Lcom/vkontakte/android/ui/ListImageLoaderAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkontakte/android/PhotoAlbumsView;Lcom/vkontakte/android/PhotoAlbumsView$AlbumCoversAdapter;)V
    .locals 0

    .prologue
    .line 260
    invoke-direct {p0, p1}, Lcom/vkontakte/android/PhotoAlbumsView$AlbumCoversAdapter;-><init>(Lcom/vkontakte/android/PhotoAlbumsView;)V

    return-void
.end method

.method static synthetic access$1(Lcom/vkontakte/android/PhotoAlbumsView$AlbumCoversAdapter;)Lcom/vkontakte/android/PhotoAlbumsView;
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcom/vkontakte/android/PhotoAlbumsView$AlbumCoversAdapter;->this$0:Lcom/vkontakte/android/PhotoAlbumsView;

    return-object v0
.end method


# virtual methods
.method public getImageCountForItem(I)I
    .locals 1
    .param p1, "item"    # I

    .prologue
    .line 268
    const/4 v0, 0x1

    return v0
.end method

.method public getImageURL(II)Ljava/lang/String;
    .locals 1
    .param p1, "item"    # I
    .param p2, "image"    # I

    .prologue
    .line 273
    iget-object v0, p0, Lcom/vkontakte/android/PhotoAlbumsView$AlbumCoversAdapter;->this$0:Lcom/vkontakte/android/PhotoAlbumsView;

    invoke-static {v0}, Lcom/vkontakte/android/PhotoAlbumsView;->access$0(Lcom/vkontakte/android/PhotoAlbumsView;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/api/PhotoAlbum;

    iget-object v0, v0, Lcom/vkontakte/android/api/PhotoAlbum;->thumbURL:Ljava/lang/String;

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/vkontakte/android/PhotoAlbumsView$AlbumCoversAdapter;->this$0:Lcom/vkontakte/android/PhotoAlbumsView;

    invoke-static {v0}, Lcom/vkontakte/android/PhotoAlbumsView;->access$0(Lcom/vkontakte/android/PhotoAlbumsView;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public imageLoaded(IILandroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "_item"    # I
    .param p2, "image"    # I
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 278
    iget-object v1, p0, Lcom/vkontakte/android/PhotoAlbumsView$AlbumCoversAdapter;->this$0:Lcom/vkontakte/android/PhotoAlbumsView;

    invoke-static {v1}, Lcom/vkontakte/android/PhotoAlbumsView;->access$2(Lcom/vkontakte/android/PhotoAlbumsView;)Lcom/vkontakte/android/ui/RefreshableListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vkontakte/android/ui/RefreshableListView;->getHeaderViewsCount()I

    move-result v1

    add-int v0, p1, v1

    .line 279
    .local v0, "item":I
    iget-object v1, p0, Lcom/vkontakte/android/PhotoAlbumsView$AlbumCoversAdapter;->this$0:Lcom/vkontakte/android/PhotoAlbumsView;

    invoke-static {v1}, Lcom/vkontakte/android/PhotoAlbumsView;->access$2(Lcom/vkontakte/android/PhotoAlbumsView;)Lcom/vkontakte/android/ui/RefreshableListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vkontakte/android/ui/RefreshableListView;->getFirstVisiblePosition()I

    move-result v1

    if-lt v0, v1, :cond_0

    iget-object v1, p0, Lcom/vkontakte/android/PhotoAlbumsView$AlbumCoversAdapter;->this$0:Lcom/vkontakte/android/PhotoAlbumsView;

    invoke-static {v1}, Lcom/vkontakte/android/PhotoAlbumsView;->access$2(Lcom/vkontakte/android/PhotoAlbumsView;)Lcom/vkontakte/android/ui/RefreshableListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vkontakte/android/ui/RefreshableListView;->getLastVisiblePosition()I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 280
    iget-object v1, p0, Lcom/vkontakte/android/PhotoAlbumsView$AlbumCoversAdapter;->this$0:Lcom/vkontakte/android/PhotoAlbumsView;

    new-instance v2, Lcom/vkontakte/android/PhotoAlbumsView$AlbumCoversAdapter$1;

    invoke-direct {v2, p0, v0, p3}, Lcom/vkontakte/android/PhotoAlbumsView$AlbumCoversAdapter$1;-><init>(Lcom/vkontakte/android/PhotoAlbumsView$AlbumCoversAdapter;ILandroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/PhotoAlbumsView;->post(Ljava/lang/Runnable;)Z

    .line 285
    :cond_0
    return-void
.end method
