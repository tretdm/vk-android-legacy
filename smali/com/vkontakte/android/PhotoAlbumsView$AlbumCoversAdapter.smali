.class Lcom/vkontakte/android/PhotoAlbumsView$AlbumCoversAdapter;
.super Lcom/vkontakte/android/MultiSectionImageLoaderAdapter;
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
    .line 485
    iput-object p1, p0, Lcom/vkontakte/android/PhotoAlbumsView$AlbumCoversAdapter;->this$0:Lcom/vkontakte/android/PhotoAlbumsView;

    invoke-direct {p0}, Lcom/vkontakte/android/MultiSectionImageLoaderAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkontakte/android/PhotoAlbumsView;Lcom/vkontakte/android/PhotoAlbumsView$AlbumCoversAdapter;)V
    .locals 0

    .prologue
    .line 485
    invoke-direct {p0, p1}, Lcom/vkontakte/android/PhotoAlbumsView$AlbumCoversAdapter;-><init>(Lcom/vkontakte/android/PhotoAlbumsView;)V

    return-void
.end method

.method static synthetic access$1(Lcom/vkontakte/android/PhotoAlbumsView$AlbumCoversAdapter;)Lcom/vkontakte/android/PhotoAlbumsView;
    .locals 1

    .prologue
    .line 485
    iget-object v0, p0, Lcom/vkontakte/android/PhotoAlbumsView$AlbumCoversAdapter;->this$0:Lcom/vkontakte/android/PhotoAlbumsView;

    return-object v0
.end method


# virtual methods
.method public getImageCountForItem(II)I
    .locals 3
    .param p1, "section"    # I
    .param p2, "item"    # I

    .prologue
    .line 500
    if-nez p1, :cond_0

    .line 501
    iget-object v1, p0, Lcom/vkontakte/android/PhotoAlbumsView$AlbumCoversAdapter;->this$0:Lcom/vkontakte/android/PhotoAlbumsView;

    invoke-static {v1}, Lcom/vkontakte/android/PhotoAlbumsView;->access$5(Lcom/vkontakte/android/PhotoAlbumsView;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/api/PhotoAlbum;

    .line 505
    .local v0, "a":Lcom/vkontakte/android/api/PhotoAlbum;
    :goto_0
    instance-of v1, v0, Lcom/vkontakte/android/api/MultiThumbPhotoAlbum;

    if-eqz v1, :cond_1

    .line 506
    check-cast v0, Lcom/vkontakte/android/api/MultiThumbPhotoAlbum;

    .end local v0    # "a":Lcom/vkontakte/android/api/PhotoAlbum;
    iget-object v1, v0, Lcom/vkontakte/android/api/MultiThumbPhotoAlbum;->thumbs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 508
    :goto_1
    return v1

    .line 503
    :cond_0
    iget-object v1, p0, Lcom/vkontakte/android/PhotoAlbumsView$AlbumCoversAdapter;->this$0:Lcom/vkontakte/android/PhotoAlbumsView;

    invoke-static {v1}, Lcom/vkontakte/android/PhotoAlbumsView;->access$0(Lcom/vkontakte/android/PhotoAlbumsView;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/api/PhotoAlbum;

    .restart local v0    # "a":Lcom/vkontakte/android/api/PhotoAlbum;
    goto :goto_0

    .line 508
    :cond_1
    iget-object v1, v0, Lcom/vkontakte/android/api/PhotoAlbum;->thumbURL:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/vkontakte/android/api/PhotoAlbum;->thumbURL:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    iget-object v1, v0, Lcom/vkontakte/android/api/PhotoAlbum;->thumbURL:Ljava/lang/String;

    const-string v2, "gif"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getImageURL(III)Ljava/lang/String;
    .locals 2
    .param p1, "section"    # I
    .param p2, "item"    # I
    .param p3, "image"    # I

    .prologue
    .line 514
    if-nez p1, :cond_0

    .line 515
    iget-object v1, p0, Lcom/vkontakte/android/PhotoAlbumsView$AlbumCoversAdapter;->this$0:Lcom/vkontakte/android/PhotoAlbumsView;

    invoke-static {v1}, Lcom/vkontakte/android/PhotoAlbumsView;->access$5(Lcom/vkontakte/android/PhotoAlbumsView;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/api/PhotoAlbum;

    .line 519
    .local v0, "a":Lcom/vkontakte/android/api/PhotoAlbum;
    :goto_0
    instance-of v1, v0, Lcom/vkontakte/android/api/MultiThumbPhotoAlbum;

    if-eqz v1, :cond_1

    .line 520
    check-cast v0, Lcom/vkontakte/android/api/MultiThumbPhotoAlbum;

    .end local v0    # "a":Lcom/vkontakte/android/api/PhotoAlbum;
    iget-object v1, v0, Lcom/vkontakte/android/api/MultiThumbPhotoAlbum;->thumbs:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 522
    :goto_1
    return-object v1

    .line 517
    :cond_0
    iget-object v1, p0, Lcom/vkontakte/android/PhotoAlbumsView$AlbumCoversAdapter;->this$0:Lcom/vkontakte/android/PhotoAlbumsView;

    invoke-static {v1}, Lcom/vkontakte/android/PhotoAlbumsView;->access$0(Lcom/vkontakte/android/PhotoAlbumsView;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/api/PhotoAlbum;

    .restart local v0    # "a":Lcom/vkontakte/android/api/PhotoAlbum;
    goto :goto_0

    .line 522
    :cond_1
    iget-object v1, v0, Lcom/vkontakte/android/api/PhotoAlbum;->thumbURL:Ljava/lang/String;

    goto :goto_1
.end method

.method public getItemCount(I)I
    .locals 1
    .param p1, "section"    # I

    .prologue
    .line 488
    packed-switch p1, :pswitch_data_0

    .line 494
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 490
    :pswitch_0
    iget-object v0, p0, Lcom/vkontakte/android/PhotoAlbumsView$AlbumCoversAdapter;->this$0:Lcom/vkontakte/android/PhotoAlbumsView;

    invoke-static {v0}, Lcom/vkontakte/android/PhotoAlbumsView;->access$5(Lcom/vkontakte/android/PhotoAlbumsView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0

    .line 492
    :pswitch_1
    iget-object v0, p0, Lcom/vkontakte/android/PhotoAlbumsView$AlbumCoversAdapter;->this$0:Lcom/vkontakte/android/PhotoAlbumsView;

    invoke-static {v0}, Lcom/vkontakte/android/PhotoAlbumsView;->access$0(Lcom/vkontakte/android/PhotoAlbumsView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0

    .line 488
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getSectionCount()I
    .locals 1

    .prologue
    .line 562
    const/4 v0, 0x2

    return v0
.end method

.method public imageLoaded(IILandroid/graphics/Bitmap;)V
    .locals 8
    .param p1, "_item"    # I
    .param p2, "image"    # I
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 527
    move v2, p1

    .line 529
    .local v2, "item":I
    iget-object v0, p0, Lcom/vkontakte/android/PhotoAlbumsView$AlbumCoversAdapter;->this$0:Lcom/vkontakte/android/PhotoAlbumsView;

    invoke-static {v0}, Lcom/vkontakte/android/PhotoAlbumsView;->access$5(Lcom/vkontakte/android/PhotoAlbumsView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_0

    .line 530
    iget-object v0, p0, Lcom/vkontakte/android/PhotoAlbumsView$AlbumCoversAdapter;->this$0:Lcom/vkontakte/android/PhotoAlbumsView;

    invoke-static {v0}, Lcom/vkontakte/android/PhotoAlbumsView;->access$5(Lcom/vkontakte/android/PhotoAlbumsView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vkontakte/android/api/PhotoAlbum;

    .line 536
    .local v3, "a":Lcom/vkontakte/android/api/PhotoAlbum;
    :goto_0
    iget-object v7, p0, Lcom/vkontakte/android/PhotoAlbumsView$AlbumCoversAdapter;->this$0:Lcom/vkontakte/android/PhotoAlbumsView;

    new-instance v0, Lcom/vkontakte/android/PhotoAlbumsView$AlbumCoversAdapter$1;

    move-object v1, p0

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/vkontakte/android/PhotoAlbumsView$AlbumCoversAdapter$1;-><init>(Lcom/vkontakte/android/PhotoAlbumsView$AlbumCoversAdapter;ILcom/vkontakte/android/api/PhotoAlbum;ILandroid/graphics/Bitmap;)V

    invoke-virtual {v7, v0}, Lcom/vkontakte/android/PhotoAlbumsView;->post(Ljava/lang/Runnable;)Z

    .line 558
    return-void

    .line 532
    .end local v3    # "a":Lcom/vkontakte/android/api/PhotoAlbum;
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/PhotoAlbumsView$AlbumCoversAdapter;->this$0:Lcom/vkontakte/android/PhotoAlbumsView;

    invoke-static {v0}, Lcom/vkontakte/android/PhotoAlbumsView;->access$5(Lcom/vkontakte/android/PhotoAlbumsView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int v6, v2, v0

    .line 533
    .local v6, "pos":I
    iget-object v0, p0, Lcom/vkontakte/android/PhotoAlbumsView$AlbumCoversAdapter;->this$0:Lcom/vkontakte/android/PhotoAlbumsView;

    invoke-static {v0}, Lcom/vkontakte/android/PhotoAlbumsView;->access$0(Lcom/vkontakte/android/PhotoAlbumsView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vkontakte/android/api/PhotoAlbum;

    .restart local v3    # "a":Lcom/vkontakte/android/api/PhotoAlbum;
    goto :goto_0
.end method

.method public isSectionHeaderVisible(I)Z
    .locals 1
    .param p1, "section"    # I

    .prologue
    .line 567
    const/4 v0, 0x0

    return v0
.end method
