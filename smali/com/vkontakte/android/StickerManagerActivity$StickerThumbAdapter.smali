.class Lcom/vkontakte/android/StickerManagerActivity$StickerThumbAdapter;
.super Lcom/vkontakte/android/MultiSectionImageLoaderAdapter;
.source "StickerManagerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/StickerManagerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StickerThumbAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/StickerManagerActivity;


# direct methods
.method private constructor <init>(Lcom/vkontakte/android/StickerManagerActivity;)V
    .locals 0

    .prologue
    .line 363
    iput-object p1, p0, Lcom/vkontakte/android/StickerManagerActivity$StickerThumbAdapter;->this$0:Lcom/vkontakte/android/StickerManagerActivity;

    invoke-direct {p0}, Lcom/vkontakte/android/MultiSectionImageLoaderAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkontakte/android/StickerManagerActivity;Lcom/vkontakte/android/StickerManagerActivity$StickerThumbAdapter;)V
    .locals 0

    .prologue
    .line 363
    invoke-direct {p0, p1}, Lcom/vkontakte/android/StickerManagerActivity$StickerThumbAdapter;-><init>(Lcom/vkontakte/android/StickerManagerActivity;)V

    return-void
.end method


# virtual methods
.method public getImageCountForItem(II)I
    .locals 1
    .param p1, "section"    # I
    .param p2, "item"    # I

    .prologue
    .line 381
    const/4 v0, 0x1

    return v0
.end method

.method public getImageURL(III)Ljava/lang/String;
    .locals 1
    .param p1, "section"    # I
    .param p2, "item"    # I
    .param p3, "image"    # I

    .prologue
    .line 386
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/StickerManagerActivity$StickerThumbAdapter;->this$0:Lcom/vkontakte/android/StickerManagerActivity;

    invoke-static {v0}, Lcom/vkontakte/android/StickerManagerActivity;->access$0(Lcom/vkontakte/android/StickerManagerActivity;)Ljava/util/ArrayList;

    move-result-object v0

    :goto_0
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/data/StickerPack;

    iget-object v0, v0, Lcom/vkontakte/android/data/StickerPack;->thumb:Ljava/lang/String;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/StickerManagerActivity$StickerThumbAdapter;->this$0:Lcom/vkontakte/android/StickerManagerActivity;

    invoke-static {v0}, Lcom/vkontakte/android/StickerManagerActivity;->access$3(Lcom/vkontakte/android/StickerManagerActivity;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemCount(I)I
    .locals 1
    .param p1, "section"    # I

    .prologue
    .line 371
    iget-object v0, p0, Lcom/vkontakte/android/StickerManagerActivity$StickerThumbAdapter;->this$0:Lcom/vkontakte/android/StickerManagerActivity;

    invoke-static {v0}, Lcom/vkontakte/android/StickerManagerActivity;->access$5(Lcom/vkontakte/android/StickerManagerActivity;)Lcom/vkontakte/android/StickerManagerActivity$StickerAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/vkontakte/android/StickerManagerActivity$StickerAdapter;->getItemCount(I)I

    move-result v0

    return v0
.end method

.method public getSectionCount()I
    .locals 1

    .prologue
    .line 366
    iget-object v0, p0, Lcom/vkontakte/android/StickerManagerActivity$StickerThumbAdapter;->this$0:Lcom/vkontakte/android/StickerManagerActivity;

    invoke-static {v0}, Lcom/vkontakte/android/StickerManagerActivity;->access$5(Lcom/vkontakte/android/StickerManagerActivity;)Lcom/vkontakte/android/StickerManagerActivity$StickerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/StickerManagerActivity$StickerAdapter;->getSectionCount()I

    move-result v0

    return v0
.end method

.method public imageLoaded(IILandroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "item"    # I
    .param p2, "image"    # I
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 391
    iget-object v1, p0, Lcom/vkontakte/android/StickerManagerActivity$StickerThumbAdapter;->this$0:Lcom/vkontakte/android/StickerManagerActivity;

    invoke-static {v1}, Lcom/vkontakte/android/StickerManagerActivity;->access$6(Lcom/vkontakte/android/StickerManagerActivity;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    add-int/2addr p1, v1

    .line 392
    iget-object v1, p0, Lcom/vkontakte/android/StickerManagerActivity$StickerThumbAdapter;->this$0:Lcom/vkontakte/android/StickerManagerActivity;

    invoke-static {v1}, Lcom/vkontakte/android/StickerManagerActivity;->access$6(Lcom/vkontakte/android/StickerManagerActivity;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    if-lt p1, v1, :cond_0

    iget-object v1, p0, Lcom/vkontakte/android/StickerManagerActivity$StickerThumbAdapter;->this$0:Lcom/vkontakte/android/StickerManagerActivity;

    invoke-static {v1}, Lcom/vkontakte/android/StickerManagerActivity;->access$6(Lcom/vkontakte/android/StickerManagerActivity;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v1

    if-le p1, v1, :cond_1

    .line 401
    :cond_0
    :goto_0
    return-void

    .line 393
    :cond_1
    iget-object v1, p0, Lcom/vkontakte/android/StickerManagerActivity$StickerThumbAdapter;->this$0:Lcom/vkontakte/android/StickerManagerActivity;

    invoke-static {v1}, Lcom/vkontakte/android/StickerManagerActivity;->access$6(Lcom/vkontakte/android/StickerManagerActivity;)Landroid/widget/ListView;

    move-result-object v1

    iget-object v2, p0, Lcom/vkontakte/android/StickerManagerActivity$StickerThumbAdapter;->this$0:Lcom/vkontakte/android/StickerManagerActivity;

    invoke-static {v2}, Lcom/vkontakte/android/StickerManagerActivity;->access$6(Lcom/vkontakte/android/StickerManagerActivity;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v2

    sub-int v2, p1, v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 394
    .local v0, "v":Landroid/view/View;
    iget-object v1, p0, Lcom/vkontakte/android/StickerManagerActivity$StickerThumbAdapter;->this$0:Lcom/vkontakte/android/StickerManagerActivity;

    new-instance v2, Lcom/vkontakte/android/StickerManagerActivity$StickerThumbAdapter$1;

    invoke-direct {v2, p0, v0, p3}, Lcom/vkontakte/android/StickerManagerActivity$StickerThumbAdapter$1;-><init>(Lcom/vkontakte/android/StickerManagerActivity$StickerThumbAdapter;Landroid/view/View;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/StickerManagerActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public isSectionHeaderVisible(I)Z
    .locals 1
    .param p1, "section"    # I

    .prologue
    .line 376
    iget-object v0, p0, Lcom/vkontakte/android/StickerManagerActivity$StickerThumbAdapter;->this$0:Lcom/vkontakte/android/StickerManagerActivity;

    invoke-static {v0}, Lcom/vkontakte/android/StickerManagerActivity;->access$5(Lcom/vkontakte/android/StickerManagerActivity;)Lcom/vkontakte/android/StickerManagerActivity$StickerAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/vkontakte/android/StickerManagerActivity$StickerAdapter;->isSectionHeaderVisible(I)Z

    move-result v0

    return v0
.end method
