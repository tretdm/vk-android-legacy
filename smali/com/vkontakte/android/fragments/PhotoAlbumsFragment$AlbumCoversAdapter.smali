.class Lcom/vkontakte/android/fragments/PhotoAlbumsFragment$AlbumCoversAdapter;
.super Lcom/vkontakte/android/MultiSectionImageLoaderAdapter;
.source "PhotoAlbumsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AlbumCoversAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;


# direct methods
.method private constructor <init>(Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;)V
    .locals 0

    .prologue
    .line 557
    iput-object p1, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment$AlbumCoversAdapter;->this$0:Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;

    invoke-direct {p0}, Lcom/vkontakte/android/MultiSectionImageLoaderAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;Lcom/vkontakte/android/fragments/PhotoAlbumsFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;
    .param p2, "x1"    # Lcom/vkontakte/android/fragments/PhotoAlbumsFragment$1;

    .prologue
    .line 557
    invoke-direct {p0, p1}, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment$AlbumCoversAdapter;-><init>(Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;)V

    return-void
.end method


# virtual methods
.method public getImageCountForItem(II)I
    .locals 3
    .param p1, "section"    # I
    .param p2, "item"    # I

    .prologue
    .line 572
    if-nez p1, :cond_0

    .line 573
    iget-object v1, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment$AlbumCoversAdapter;->this$0:Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;->access$500(Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/api/PhotoAlbum;

    .line 577
    .local v0, "a":Lcom/vkontakte/android/api/PhotoAlbum;
    :goto_0
    instance-of v1, v0, Lcom/vkontakte/android/api/MultiThumbPhotoAlbum;

    if-eqz v1, :cond_1

    .line 578
    check-cast v0, Lcom/vkontakte/android/api/MultiThumbPhotoAlbum;

    .end local v0    # "a":Lcom/vkontakte/android/api/PhotoAlbum;
    iget-object v1, v0, Lcom/vkontakte/android/api/MultiThumbPhotoAlbum;->thumbs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 580
    :goto_1
    return v1

    .line 575
    :cond_0
    iget-object v1, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment$AlbumCoversAdapter;->this$0:Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;->access$000(Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/api/PhotoAlbum;

    .restart local v0    # "a":Lcom/vkontakte/android/api/PhotoAlbum;
    goto :goto_0

    .line 580
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
    .line 586
    if-nez p1, :cond_0

    .line 587
    iget-object v1, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment$AlbumCoversAdapter;->this$0:Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;->access$500(Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/api/PhotoAlbum;

    .line 591
    .local v0, "a":Lcom/vkontakte/android/api/PhotoAlbum;
    :goto_0
    instance-of v1, v0, Lcom/vkontakte/android/api/MultiThumbPhotoAlbum;

    if-eqz v1, :cond_1

    .line 592
    check-cast v0, Lcom/vkontakte/android/api/MultiThumbPhotoAlbum;

    .end local v0    # "a":Lcom/vkontakte/android/api/PhotoAlbum;
    iget-object v1, v0, Lcom/vkontakte/android/api/MultiThumbPhotoAlbum;->thumbs:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 594
    :goto_1
    return-object v1

    .line 589
    :cond_0
    iget-object v1, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment$AlbumCoversAdapter;->this$0:Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;->access$000(Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/api/PhotoAlbum;

    .restart local v0    # "a":Lcom/vkontakte/android/api/PhotoAlbum;
    goto :goto_0

    .line 594
    :cond_1
    iget-object v1, v0, Lcom/vkontakte/android/api/PhotoAlbum;->thumbURL:Ljava/lang/String;

    goto :goto_1
.end method

.method public getItemCount(I)I
    .locals 1
    .param p1, "section"    # I

    .prologue
    .line 560
    packed-switch p1, :pswitch_data_0

    .line 566
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 562
    :pswitch_0
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment$AlbumCoversAdapter;->this$0:Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;->access$500(Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0

    .line 564
    :pswitch_1
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment$AlbumCoversAdapter;->this$0:Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;->access$000(Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0

    .line 560
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
    .line 629
    const/4 v0, 0x2

    return v0
.end method

.method public imageLoaded(IILandroid/graphics/Bitmap;)V
    .locals 8
    .param p1, "_item"    # I
    .param p2, "image"    # I
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v1, 0x1

    .line 599
    move v2, p1

    .line 601
    .local v2, "item":I
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment$AlbumCoversAdapter;->this$0:Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;->access$1600(Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;)Lcom/vkontakte/android/fragments/PhotoAlbumsFragment$PhotoAlbumsAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment$PhotoAlbumsAdapter;->resolveIndex(I)[I

    move-result-object v6

    .line 602
    .local v6, "idx":[I
    const/4 v0, 0x0

    aget v0, v6, v0

    if-nez v0, :cond_1

    .line 603
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment$AlbumCoversAdapter;->this$0:Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;->access$500(Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;)Ljava/util/ArrayList;

    move-result-object v0

    aget v1, v6, v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vkontakte/android/api/PhotoAlbum;

    .line 607
    .local v3, "a":Lcom/vkontakte/android/api/PhotoAlbum;
    :goto_0
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment$AlbumCoversAdapter;->this$0:Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    if-lt v2, v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment$AlbumCoversAdapter;->this$0:Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v0

    if-gt v2, v0, :cond_0

    .line 608
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment$AlbumCoversAdapter;->this$0:Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;

    invoke-virtual {v0}, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    new-instance v0, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment$AlbumCoversAdapter$1;

    move-object v1, p0

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment$AlbumCoversAdapter$1;-><init>(Lcom/vkontakte/android/fragments/PhotoAlbumsFragment$AlbumCoversAdapter;ILcom/vkontakte/android/api/PhotoAlbum;ILandroid/graphics/Bitmap;)V

    invoke-virtual {v7, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 625
    :cond_0
    return-void

    .line 605
    .end local v3    # "a":Lcom/vkontakte/android/api/PhotoAlbum;
    :cond_1
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment$AlbumCoversAdapter;->this$0:Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;->access$000(Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;)Ljava/util/ArrayList;

    move-result-object v0

    aget v1, v6, v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vkontakte/android/api/PhotoAlbum;

    .restart local v3    # "a":Lcom/vkontakte/android/api/PhotoAlbum;
    goto :goto_0
.end method

.method public isSectionHeaderVisible(I)Z
    .locals 1
    .param p1, "section"    # I

    .prologue
    const/4 v0, 0x1

    .line 634
    if-ne p1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
