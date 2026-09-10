.class Lcom/vkontakte/android/PhotoAlbumsView$AlbumCoversAdapter$1;
.super Ljava/lang/Object;
.source "PhotoAlbumsView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/PhotoAlbumsView$AlbumCoversAdapter;->imageLoaded(IILandroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/PhotoAlbumsView$AlbumCoversAdapter;

.field private final synthetic val$bitmap:Landroid/graphics/Bitmap;

.field private final synthetic val$item:I


# direct methods
.method constructor <init>(Lcom/vkontakte/android/PhotoAlbumsView$AlbumCoversAdapter;ILandroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/PhotoAlbumsView$AlbumCoversAdapter$1;->this$1:Lcom/vkontakte/android/PhotoAlbumsView$AlbumCoversAdapter;

    iput p2, p0, Lcom/vkontakte/android/PhotoAlbumsView$AlbumCoversAdapter$1;->val$item:I

    iput-object p3, p0, Lcom/vkontakte/android/PhotoAlbumsView$AlbumCoversAdapter$1;->val$bitmap:Landroid/graphics/Bitmap;

    .line 285
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 286
    iget-object v1, p0, Lcom/vkontakte/android/PhotoAlbumsView$AlbumCoversAdapter$1;->this$1:Lcom/vkontakte/android/PhotoAlbumsView$AlbumCoversAdapter;

    invoke-static {v1}, Lcom/vkontakte/android/PhotoAlbumsView$AlbumCoversAdapter;->access$1(Lcom/vkontakte/android/PhotoAlbumsView$AlbumCoversAdapter;)Lcom/vkontakte/android/PhotoAlbumsView;

    move-result-object v1

    invoke-static {v1}, Lcom/vkontakte/android/PhotoAlbumsView;->access$2(Lcom/vkontakte/android/PhotoAlbumsView;)Lcom/vkontakte/android/ui/RefreshableListView;

    move-result-object v1

    iget v2, p0, Lcom/vkontakte/android/PhotoAlbumsView$AlbumCoversAdapter$1;->val$item:I

    iget-object v3, p0, Lcom/vkontakte/android/PhotoAlbumsView$AlbumCoversAdapter$1;->this$1:Lcom/vkontakte/android/PhotoAlbumsView$AlbumCoversAdapter;

    invoke-static {v3}, Lcom/vkontakte/android/PhotoAlbumsView$AlbumCoversAdapter;->access$1(Lcom/vkontakte/android/PhotoAlbumsView$AlbumCoversAdapter;)Lcom/vkontakte/android/PhotoAlbumsView;

    move-result-object v3

    invoke-static {v3}, Lcom/vkontakte/android/PhotoAlbumsView;->access$2(Lcom/vkontakte/android/PhotoAlbumsView;)Lcom/vkontakte/android/ui/RefreshableListView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/vkontakte/android/ui/RefreshableListView;->getFirstVisiblePosition()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/ui/RefreshableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 287
    .local v0, "it":Landroid/view/View;
    if-eqz v0, :cond_0

    const v1, 0x7f0600ea

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/vkontakte/android/PhotoAlbumsView$AlbumCoversAdapter$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 288
    :cond_0
    return-void
.end method
