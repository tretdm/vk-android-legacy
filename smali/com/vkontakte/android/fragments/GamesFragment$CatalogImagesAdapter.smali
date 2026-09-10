.class Lcom/vkontakte/android/fragments/GamesFragment$CatalogImagesAdapter;
.super Lcom/vkontakte/android/MultiSectionImageLoaderAdapter;
.source "GamesFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/fragments/GamesFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CatalogImagesAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/GamesFragment;


# direct methods
.method private constructor <init>(Lcom/vkontakte/android/fragments/GamesFragment;)V
    .locals 0

    .prologue
    .line 343
    iput-object p1, p0, Lcom/vkontakte/android/fragments/GamesFragment$CatalogImagesAdapter;->this$0:Lcom/vkontakte/android/fragments/GamesFragment;

    invoke-direct {p0}, Lcom/vkontakte/android/MultiSectionImageLoaderAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkontakte/android/fragments/GamesFragment;Lcom/vkontakte/android/fragments/GamesFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/vkontakte/android/fragments/GamesFragment;
    .param p2, "x1"    # Lcom/vkontakte/android/fragments/GamesFragment$1;

    .prologue
    .line 343
    invoke-direct {p0, p1}, Lcom/vkontakte/android/fragments/GamesFragment$CatalogImagesAdapter;-><init>(Lcom/vkontakte/android/fragments/GamesFragment;)V

    return-void
.end method


# virtual methods
.method public getImageCountForItem(II)I
    .locals 1
    .param p1, "section"    # I
    .param p2, "item"    # I

    .prologue
    .line 362
    const/4 v0, 0x1

    return v0
.end method

.method public getImageURL(III)Ljava/lang/String;
    .locals 3
    .param p1, "section"    # I
    .param p2, "item"    # I
    .param p3, "image"    # I

    .prologue
    .line 367
    if-nez p3, :cond_1

    .line 368
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GamesFragment$CatalogImagesAdapter;->this$0:Lcom/vkontakte/android/fragments/GamesFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/GamesFragment;->access$700(Lcom/vkontakte/android/fragments/GamesFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/data/ApiApplication;

    iget-object v1, v0, Lcom/vkontakte/android/data/ApiApplication;->icons:[Ljava/lang/String;

    sget v0, Lcom/vkontakte/android/Global;->displayDensity:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x5

    :goto_0
    aget-object v0, v1, v0

    .line 369
    :goto_1
    return-object v0

    .line 368
    :cond_0
    const/4 v0, 0x4

    goto :goto_0

    .line 369
    :cond_1
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GamesFragment$CatalogImagesAdapter;->this$0:Lcom/vkontakte/android/fragments/GamesFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/GamesFragment;->access$700(Lcom/vkontakte/android/fragments/GamesFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/data/ApiApplication;

    iget-object v0, v0, Lcom/vkontakte/android/data/ApiApplication;->friendsPhotos:Ljava/util/ArrayList;

    add-int/lit8 v1, p3, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_1
.end method

.method public getItemCount(I)I
    .locals 1
    .param p1, "section"    # I

    .prologue
    .line 352
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GamesFragment$CatalogImagesAdapter;->this$0:Lcom/vkontakte/android/fragments/GamesFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/GamesFragment;->access$700(Lcom/vkontakte/android/fragments/GamesFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getSectionCount()I
    .locals 1

    .prologue
    .line 347
    const/4 v0, 0x1

    return v0
.end method

.method public imageLoaded(IILandroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "item"    # I
    .param p2, "image"    # I
    .param p3, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 374
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GamesFragment$CatalogImagesAdapter;->this$0:Lcom/vkontakte/android/fragments/GamesFragment;

    invoke-virtual {v0}, Lcom/vkontakte/android/fragments/GamesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/fragments/GamesFragment$CatalogImagesAdapter;->this$0:Lcom/vkontakte/android/fragments/GamesFragment;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/GamesFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    if-lt p1, v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/fragments/GamesFragment$CatalogImagesAdapter;->this$0:Lcom/vkontakte/android/fragments/GamesFragment;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/GamesFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v0

    if-le p1, v0, :cond_1

    .line 383
    :cond_0
    :goto_0
    return-void

    .line 375
    :cond_1
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GamesFragment$CatalogImagesAdapter;->this$0:Lcom/vkontakte/android/fragments/GamesFragment;

    invoke-virtual {v0}, Lcom/vkontakte/android/fragments/GamesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/vkontakte/android/fragments/GamesFragment$CatalogImagesAdapter$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/vkontakte/android/fragments/GamesFragment$CatalogImagesAdapter$1;-><init>(Lcom/vkontakte/android/fragments/GamesFragment$CatalogImagesAdapter;IILandroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public isSectionHeaderVisible(I)Z
    .locals 1
    .param p1, "section"    # I

    .prologue
    .line 357
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GamesFragment$CatalogImagesAdapter;->this$0:Lcom/vkontakte/android/fragments/GamesFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/GamesFragment;->access$700(Lcom/vkontakte/android/fragments/GamesFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
