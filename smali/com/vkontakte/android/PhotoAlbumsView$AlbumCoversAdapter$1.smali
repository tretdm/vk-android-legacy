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

.field private final synthetic val$a:Lcom/vkontakte/android/api/PhotoAlbum;

.field private final synthetic val$bitmap:Landroid/graphics/Bitmap;

.field private final synthetic val$image:I

.field private final synthetic val$item:I


# direct methods
.method constructor <init>(Lcom/vkontakte/android/PhotoAlbumsView$AlbumCoversAdapter;ILcom/vkontakte/android/api/PhotoAlbum;ILandroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/PhotoAlbumsView$AlbumCoversAdapter$1;->this$1:Lcom/vkontakte/android/PhotoAlbumsView$AlbumCoversAdapter;

    iput p2, p0, Lcom/vkontakte/android/PhotoAlbumsView$AlbumCoversAdapter$1;->val$item:I

    iput-object p3, p0, Lcom/vkontakte/android/PhotoAlbumsView$AlbumCoversAdapter$1;->val$a:Lcom/vkontakte/android/api/PhotoAlbum;

    iput p4, p0, Lcom/vkontakte/android/PhotoAlbumsView$AlbumCoversAdapter$1;->val$image:I

    iput-object p5, p0, Lcom/vkontakte/android/PhotoAlbumsView$AlbumCoversAdapter$1;->val$bitmap:Landroid/graphics/Bitmap;

    .line 536
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const v6, 0x7f090125

    .line 537
    const/4 v3, -0x1

    .line 538
    .local v3, "pos":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v4, p0, Lcom/vkontakte/android/PhotoAlbumsView$AlbumCoversAdapter$1;->this$1:Lcom/vkontakte/android/PhotoAlbumsView$AlbumCoversAdapter;

    invoke-static {v4}, Lcom/vkontakte/android/PhotoAlbumsView$AlbumCoversAdapter;->access$1(Lcom/vkontakte/android/PhotoAlbumsView$AlbumCoversAdapter;)Lcom/vkontakte/android/PhotoAlbumsView;

    move-result-object v4

    invoke-static {v4}, Lcom/vkontakte/android/PhotoAlbumsView;->access$12(Lcom/vkontakte/android/PhotoAlbumsView;)Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getChildCount()I

    move-result v4

    if-lt v0, v4, :cond_1

    .line 543
    const/4 v4, -0x1

    if-ne v3, v4, :cond_3

    .line 556
    :cond_0
    :goto_1
    return-void

    .line 539
    :cond_1
    iget-object v4, p0, Lcom/vkontakte/android/PhotoAlbumsView$AlbumCoversAdapter$1;->this$1:Lcom/vkontakte/android/PhotoAlbumsView$AlbumCoversAdapter;

    invoke-static {v4}, Lcom/vkontakte/android/PhotoAlbumsView$AlbumCoversAdapter;->access$1(Lcom/vkontakte/android/PhotoAlbumsView$AlbumCoversAdapter;)Lcom/vkontakte/android/PhotoAlbumsView;

    move-result-object v4

    invoke-static {v4}, Lcom/vkontakte/android/PhotoAlbumsView;->access$12(Lcom/vkontakte/android/PhotoAlbumsView;)Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Ljava/lang/Integer;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/vkontakte/android/PhotoAlbumsView$AlbumCoversAdapter$1;->this$1:Lcom/vkontakte/android/PhotoAlbumsView$AlbumCoversAdapter;

    invoke-static {v4}, Lcom/vkontakte/android/PhotoAlbumsView$AlbumCoversAdapter;->access$1(Lcom/vkontakte/android/PhotoAlbumsView$AlbumCoversAdapter;)Lcom/vkontakte/android/PhotoAlbumsView;

    move-result-object v4

    invoke-static {v4}, Lcom/vkontakte/android/PhotoAlbumsView;->access$12(Lcom/vkontakte/android/PhotoAlbumsView;)Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget v5, p0, Lcom/vkontakte/android/PhotoAlbumsView$AlbumCoversAdapter$1;->val$item:I

    if-ne v4, v5, :cond_2

    .line 540
    move v3, v0

    .line 538
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 545
    :cond_3
    iget-object v4, p0, Lcom/vkontakte/android/PhotoAlbumsView$AlbumCoversAdapter$1;->this$1:Lcom/vkontakte/android/PhotoAlbumsView$AlbumCoversAdapter;

    invoke-static {v4}, Lcom/vkontakte/android/PhotoAlbumsView$AlbumCoversAdapter;->access$1(Lcom/vkontakte/android/PhotoAlbumsView$AlbumCoversAdapter;)Lcom/vkontakte/android/PhotoAlbumsView;

    move-result-object v4

    invoke-static {v4}, Lcom/vkontakte/android/PhotoAlbumsView;->access$12(Lcom/vkontakte/android/PhotoAlbumsView;)Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 546
    .local v2, "it":Landroid/view/View;
    iget-object v4, p0, Lcom/vkontakte/android/PhotoAlbumsView$AlbumCoversAdapter$1;->val$a:Lcom/vkontakte/android/api/PhotoAlbum;

    instance-of v4, v4, Lcom/vkontakte/android/api/MultiThumbPhotoAlbum;

    if-eqz v4, :cond_4

    .line 547
    iget-object v4, p0, Lcom/vkontakte/android/PhotoAlbumsView$AlbumCoversAdapter$1;->this$1:Lcom/vkontakte/android/PhotoAlbumsView$AlbumCoversAdapter;

    invoke-static {v4}, Lcom/vkontakte/android/PhotoAlbumsView$AlbumCoversAdapter;->access$1(Lcom/vkontakte/android/PhotoAlbumsView$AlbumCoversAdapter;)Lcom/vkontakte/android/PhotoAlbumsView;

    move-result-object v4

    iget v5, p0, Lcom/vkontakte/android/PhotoAlbumsView$AlbumCoversAdapter$1;->val$image:I

    invoke-static {v4, v5}, Lcom/vkontakte/android/PhotoAlbumsView;->access$11(Lcom/vkontakte/android/PhotoAlbumsView;I)I

    move-result v1

    .line 548
    .local v1, "id":I
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 549
    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/vkontakte/android/PhotoAlbumsView$AlbumCoversAdapter$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 552
    .end local v1    # "id":I
    :cond_4
    if-eqz v2, :cond_0

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 553
    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/vkontakte/android/PhotoAlbumsView$AlbumCoversAdapter$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1
.end method
