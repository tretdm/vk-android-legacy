.class Lcom/vkontakte/android/fragments/PhotoAlbumsFragment$AlbumCoversAdapter$1;
.super Ljava/lang/Object;
.source "PhotoAlbumsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/PhotoAlbumsFragment$AlbumCoversAdapter;->imageLoaded(IILandroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/fragments/PhotoAlbumsFragment$AlbumCoversAdapter;

.field final synthetic val$a:Lcom/vkontakte/android/api/PhotoAlbum;

.field final synthetic val$bitmap:Landroid/graphics/Bitmap;

.field final synthetic val$image:I

.field final synthetic val$item:I


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/PhotoAlbumsFragment$AlbumCoversAdapter;ILcom/vkontakte/android/api/PhotoAlbum;ILandroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 608
    iput-object p1, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment$AlbumCoversAdapter$1;->this$1:Lcom/vkontakte/android/fragments/PhotoAlbumsFragment$AlbumCoversAdapter;

    iput p2, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment$AlbumCoversAdapter$1;->val$item:I

    iput-object p3, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment$AlbumCoversAdapter$1;->val$a:Lcom/vkontakte/android/api/PhotoAlbum;

    iput p4, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment$AlbumCoversAdapter$1;->val$image:I

    iput-object p5, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment$AlbumCoversAdapter$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const v4, 0x7f080107

    .line 611
    iget-object v2, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment$AlbumCoversAdapter$1;->this$1:Lcom/vkontakte/android/fragments/PhotoAlbumsFragment$AlbumCoversAdapter;

    iget-object v2, v2, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment$AlbumCoversAdapter;->this$0:Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;

    iget-object v2, v2, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;->list:Landroid/widget/ListView;

    check-cast v2, Lcom/vkontakte/android/ui/MultiColumnListView;

    iget v3, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment$AlbumCoversAdapter$1;->val$item:I

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/ui/MultiColumnListView;->getItemView(I)Landroid/view/View;

    move-result-object v1

    .line 612
    .local v1, "it":Landroid/view/View;
    if-nez v1, :cond_1

    .line 623
    :cond_0
    :goto_0
    return-void

    .line 613
    :cond_1
    iget-object v2, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment$AlbumCoversAdapter$1;->val$a:Lcom/vkontakte/android/api/PhotoAlbum;

    instance-of v2, v2, Lcom/vkontakte/android/api/MultiThumbPhotoAlbum;

    if-eqz v2, :cond_2

    .line 614
    iget-object v2, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment$AlbumCoversAdapter$1;->this$1:Lcom/vkontakte/android/fragments/PhotoAlbumsFragment$AlbumCoversAdapter;

    iget-object v2, v2, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment$AlbumCoversAdapter;->this$0:Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;

    iget v3, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment$AlbumCoversAdapter$1;->val$image:I

    invoke-static {v2, v3}, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;->access$1400(Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;I)I

    move-result v0

    .line 615
    .local v0, "id":I
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 616
    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment$AlbumCoversAdapter$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 619
    .end local v0    # "id":I
    :cond_2
    if-eqz v1, :cond_0

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 620
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment$AlbumCoversAdapter$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method
