.class Lcom/vkontakte/android/fragments/PhotoAlbumsFragment$PhotoAlbumsAdapter;
.super Lcom/vkontakte/android/ui/MultiSectionAdapter;
.source "PhotoAlbumsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PhotoAlbumsAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;


# direct methods
.method private constructor <init>(Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;)V
    .locals 0

    .prologue
    .line 463
    iput-object p1, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment$PhotoAlbumsAdapter;->this$0:Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;

    invoke-direct {p0}, Lcom/vkontakte/android/ui/MultiSectionAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;Lcom/vkontakte/android/fragments/PhotoAlbumsFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;
    .param p2, "x1"    # Lcom/vkontakte/android/fragments/PhotoAlbumsFragment$1;

    .prologue
    .line 463
    invoke-direct {p0, p1}, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment$PhotoAlbumsAdapter;-><init>(Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;)V

    return-void
.end method


# virtual methods
.method public getHeaderLayoutResource()I
    .locals 1

    .prologue
    .line 553
    const v0, 0x7f03003c

    return v0
.end method

.method public getItemCount(I)I
    .locals 1
    .param p1, "section"    # I

    .prologue
    .line 466
    packed-switch p1, :pswitch_data_0

    .line 472
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 468
    :pswitch_0
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment$PhotoAlbumsAdapter;->this$0:Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;->access$500(Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0

    .line 470
    :pswitch_1
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment$PhotoAlbumsAdapter;->this$0:Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;->access$000(Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0

    .line 466
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getItemId(II)J
    .locals 2
    .param p1, "section"    # I
    .param p2, "pos"    # I

    .prologue
    .line 477
    int-to-long v0, p2

    return-wide v0
.end method

.method public getItemViewType(II)I
    .locals 1
    .param p1, "section"    # I
    .param p2, "pos"    # I

    .prologue
    .line 485
    if-nez p1, :cond_0

    .line 486
    const/4 v0, 0x2

    .line 487
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSectionCount()I
    .locals 1

    .prologue
    .line 534
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment$PhotoAlbumsAdapter;->this$0:Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;->access$000(Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment$PhotoAlbumsAdapter;->this$0:Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;->access$500(Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 535
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment$PhotoAlbumsAdapter;->this$0:Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;->access$000(Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 538
    :goto_0
    return v0

    .line 536
    :cond_1
    const/4 v0, 0x2

    goto :goto_0

    .line 538
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSectionTitle(I)Ljava/lang/String;
    .locals 3
    .param p1, "section"    # I

    .prologue
    .line 543
    const v0, 0x7f070003

    iget-object v1, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment$PhotoAlbumsAdapter;->this$0:Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;->access$000(Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v2, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment$PhotoAlbumsAdapter;->this$0:Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;

    invoke-virtual {v2}, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/vkontakte/android/Global;->langPlural(IILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getView(IILandroid/view/View;)Landroid/view/View;
    .locals 8
    .param p1, "section"    # I
    .param p2, "pos"    # I
    .param p3, "view"    # Landroid/view/View;

    .prologue
    .line 492
    const/4 v0, 0x0

    .line 493
    .local v0, "a":Lcom/vkontakte/android/api/PhotoAlbum;
    move v3, p2

    .line 494
    .local v3, "realPos":I
    if-nez p1, :cond_4

    .line 495
    iget-object v4, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment$PhotoAlbumsAdapter;->this$0:Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;

    invoke-static {v4}, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;->access$500(Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "a":Lcom/vkontakte/android/api/PhotoAlbum;
    check-cast v0, Lcom/vkontakte/android/api/PhotoAlbum;

    .line 499
    .restart local v0    # "a":Lcom/vkontakte/android/api/PhotoAlbum;
    :cond_0
    :goto_0
    if-nez p3, :cond_1

    .line 500
    iget-object v4, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment$PhotoAlbumsAdapter;->this$0:Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;

    invoke-virtual {v4}, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    instance-of v4, v0, Lcom/vkontakte/android/api/MultiThumbPhotoAlbum;

    if-eqz v4, :cond_5

    const v4, 0x7f03005f

    :goto_1
    const/4 v6, 0x0

    invoke-static {v5, v4, v6}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    .line 501
    const v4, 0x7f080112

    invoke-virtual {p3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment$PhotoAlbumsAdapter;->this$0:Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;

    invoke-static {v5}, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;->access$1100(Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;)Landroid/view/View$OnClickListener;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 503
    :cond_1
    instance-of v4, v0, Lcom/vkontakte/android/api/MultiThumbPhotoAlbum;

    if-nez v4, :cond_2

    .line 504
    new-instance v4, Landroid/widget/AbsListView$LayoutParams;

    const/4 v5, -0x1

    iget-object v6, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment$PhotoAlbumsAdapter;->this$0:Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;

    invoke-static {v6}, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;->access$1200(Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;)I

    move-result v6

    invoke-direct {v4, v5, v6}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {p3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 506
    :cond_2
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p3, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 507
    const v4, 0x7f080108

    invoke-virtual {p3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iget-object v5, v0, Lcom/vkontakte/android/api/PhotoAlbum;->title:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 508
    const v4, 0x7f080109

    invoke-virtual {p3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iget v5, v0, Lcom/vkontakte/android/api/PhotoAlbum;->numPhotos:I

    if-lez v5, :cond_6

    const v5, 0x7f070001

    iget v6, v0, Lcom/vkontakte/android/api/PhotoAlbum;->numPhotos:I

    iget-object v7, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment$PhotoAlbumsAdapter;->this$0:Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;

    invoke-virtual {v7}, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/vkontakte/android/Global;->langPlural(IILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v5

    :goto_2
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 510
    const v4, 0x7f080112

    invoke-virtual {p3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iget-object v4, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment$PhotoAlbumsAdapter;->this$0:Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;

    invoke-static {v4}, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;->access$800(Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;)I

    move-result v4

    sget v6, Lcom/vkontakte/android/Global;->uid:I

    if-eq v4, v6, :cond_3

    iget-object v4, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment$PhotoAlbumsAdapter;->this$0:Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;

    invoke-static {v4}, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;->access$800(Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;)I

    move-result v4

    if-nez v4, :cond_7

    :cond_3
    iget v4, v0, Lcom/vkontakte/android/api/PhotoAlbum;->id:I

    if-lez v4, :cond_7

    iget-object v4, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment$PhotoAlbumsAdapter;->this$0:Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;

    invoke-static {v4}, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;->access$1300(Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;)Z

    move-result v4

    if-nez v4, :cond_7

    const/4 v4, 0x0

    :goto_3
    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    .line 511
    const v4, 0x7f080112

    invoke-virtual {p3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 512
    instance-of v4, v0, Lcom/vkontakte/android/api/MultiThumbPhotoAlbum;

    if-eqz v4, :cond_b

    move-object v2, v0

    .line 513
    check-cast v2, Lcom/vkontakte/android/api/MultiThumbPhotoAlbum;

    .line 514
    .local v2, "mt":Lcom/vkontakte/android/api/MultiThumbPhotoAlbum;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    const/4 v4, 0x3

    if-ge v1, v4, :cond_9

    .line 515
    iget-object v4, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment$PhotoAlbumsAdapter;->this$0:Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;

    invoke-static {v4, v1}, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;->access$1400(Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;I)I

    move-result v4

    invoke-virtual {p3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iget-object v5, v2, Lcom/vkontakte/android/api/MultiThumbPhotoAlbum;->thumbs:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_8

    const/4 v5, 0x0

    :goto_5
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 514
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 496
    .end local v1    # "i":I
    .end local v2    # "mt":Lcom/vkontakte/android/api/MultiThumbPhotoAlbum;
    :cond_4
    const/4 v4, 0x1

    if-ne p1, v4, :cond_0

    .line 497
    iget-object v4, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment$PhotoAlbumsAdapter;->this$0:Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;

    invoke-static {v4}, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;->access$000(Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "a":Lcom/vkontakte/android/api/PhotoAlbum;
    check-cast v0, Lcom/vkontakte/android/api/PhotoAlbum;

    .restart local v0    # "a":Lcom/vkontakte/android/api/PhotoAlbum;
    goto/16 :goto_0

    .line 500
    :cond_5
    const v4, 0x7f03005e

    goto/16 :goto_1

    .line 508
    :cond_6
    iget-object v5, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment$PhotoAlbumsAdapter;->this$0:Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;

    invoke-virtual {v5}, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0d01aa

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_2

    .line 510
    :cond_7
    const/16 v4, 0x8

    goto :goto_3

    .line 515
    .restart local v1    # "i":I
    .restart local v2    # "mt":Lcom/vkontakte/android/api/MultiThumbPhotoAlbum;
    :cond_8
    const/16 v5, 0x8

    goto :goto_5

    .line 517
    :cond_9
    const/4 v1, 0x0

    :goto_6
    iget-object v4, v2, Lcom/vkontakte/android/api/MultiThumbPhotoAlbum;->thumbs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_c

    .line 518
    iget-object v4, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment$PhotoAlbumsAdapter;->this$0:Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;

    invoke-static {v4}, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;->access$1500(Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    move-result-object v5

    iget-object v4, v2, Lcom/vkontakte/android/api/MultiThumbPhotoAlbum;->thumbs:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->isAlreadyLoaded(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 519
    iget-object v4, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment$PhotoAlbumsAdapter;->this$0:Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;

    invoke-static {v4, v1}, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;->access$1400(Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;I)I

    move-result v4

    invoke-virtual {p3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment$PhotoAlbumsAdapter;->this$0:Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;

    invoke-static {v5}, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;->access$1500(Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    move-result-object v6

    iget-object v5, v2, Lcom/vkontakte/android/api/MultiThumbPhotoAlbum;->thumbs:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 517
    :goto_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 521
    :cond_a
    iget-object v4, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment$PhotoAlbumsAdapter;->this$0:Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;

    invoke-static {v4, v1}, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;->access$1400(Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;I)I

    move-result v4

    invoke-virtual {p3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    new-instance v5, Landroid/graphics/drawable/ColorDrawable;

    const v6, -0xd0d0e

    invoke-direct {v5, v6}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_7

    .line 524
    .end local v1    # "i":I
    .end local v2    # "mt":Lcom/vkontakte/android/api/MultiThumbPhotoAlbum;
    :cond_b
    iget-object v4, v0, Lcom/vkontakte/android/api/PhotoAlbum;->thumbURL:Ljava/lang/String;

    if-eqz v4, :cond_d

    iget-object v4, v0, Lcom/vkontakte/android/api/PhotoAlbum;->thumbURL:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_d

    iget-object v4, v0, Lcom/vkontakte/android/api/PhotoAlbum;->thumbURL:Ljava/lang/String;

    const-string v5, "gif"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_d

    iget-object v4, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment$PhotoAlbumsAdapter;->this$0:Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;

    invoke-static {v4}, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;->access$1500(Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    move-result-object v4

    iget-object v5, v0, Lcom/vkontakte/android/api/PhotoAlbum;->thumbURL:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->isAlreadyLoaded(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 525
    const v4, 0x7f080107

    invoke-virtual {p3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment$PhotoAlbumsAdapter;->this$0:Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;

    invoke-static {v5}, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;->access$1500(Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    move-result-object v5

    iget-object v6, v0, Lcom/vkontakte/android/api/PhotoAlbum;->thumbURL:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 529
    :cond_c
    :goto_8
    return-object p3

    .line 527
    :cond_d
    const v4, 0x7f080107

    invoke-virtual {p3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    new-instance v5, Landroid/graphics/drawable/ColorDrawable;

    const v6, -0xd0d0e

    invoke-direct {v5, v6}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_8
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 481
    const/4 v0, 0x3

    return v0
.end method

.method public isSectionHeaderVisible(I)Z
    .locals 1
    .param p1, "section"    # I

    .prologue
    const/4 v0, 0x1

    .line 548
    if-ne p1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
