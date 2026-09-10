.class Lcom/vkontakte/android/QuickSearchActivity$ResultsImagesAdapter;
.super Lcom/vkontakte/android/MultiSectionImageLoaderAdapter;
.source "QuickSearchActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/QuickSearchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ResultsImagesAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/QuickSearchActivity;


# direct methods
.method private constructor <init>(Lcom/vkontakte/android/QuickSearchActivity;)V
    .locals 0

    .prologue
    .line 474
    iput-object p1, p0, Lcom/vkontakte/android/QuickSearchActivity$ResultsImagesAdapter;->this$0:Lcom/vkontakte/android/QuickSearchActivity;

    invoke-direct {p0}, Lcom/vkontakte/android/MultiSectionImageLoaderAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkontakte/android/QuickSearchActivity;Lcom/vkontakte/android/QuickSearchActivity$ResultsImagesAdapter;)V
    .locals 0

    .prologue
    .line 474
    invoke-direct {p0, p1}, Lcom/vkontakte/android/QuickSearchActivity$ResultsImagesAdapter;-><init>(Lcom/vkontakte/android/QuickSearchActivity;)V

    return-void
.end method


# virtual methods
.method public getImageCountForItem(II)I
    .locals 1
    .param p1, "section"    # I
    .param p2, "item"    # I

    .prologue
    .line 492
    const/4 v0, 0x1

    return v0
.end method

.method public getImageURL(III)Ljava/lang/String;
    .locals 1
    .param p1, "section"    # I
    .param p2, "item"    # I
    .param p3, "image"    # I

    .prologue
    .line 497
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/QuickSearchActivity$ResultsImagesAdapter;->this$0:Lcom/vkontakte/android/QuickSearchActivity;

    invoke-static {v0}, Lcom/vkontakte/android/QuickSearchActivity;->access$0(Lcom/vkontakte/android/QuickSearchActivity;)Ljava/util/ArrayList;

    move-result-object v0

    :goto_0
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/UserProfile;

    iget-object v0, v0, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/QuickSearchActivity$ResultsImagesAdapter;->this$0:Lcom/vkontakte/android/QuickSearchActivity;

    invoke-static {v0}, Lcom/vkontakte/android/QuickSearchActivity;->access$1(Lcom/vkontakte/android/QuickSearchActivity;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemCount(I)I
    .locals 1
    .param p1, "section"    # I

    .prologue
    .line 482
    iget-object v0, p0, Lcom/vkontakte/android/QuickSearchActivity$ResultsImagesAdapter;->this$0:Lcom/vkontakte/android/QuickSearchActivity;

    invoke-static {v0}, Lcom/vkontakte/android/QuickSearchActivity;->access$3(Lcom/vkontakte/android/QuickSearchActivity;)Lcom/vkontakte/android/QuickSearchActivity$ResultsAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/vkontakte/android/QuickSearchActivity$ResultsAdapter;->getItemCount(I)I

    move-result v0

    return v0
.end method

.method public getSectionCount()I
    .locals 1

    .prologue
    .line 477
    iget-object v0, p0, Lcom/vkontakte/android/QuickSearchActivity$ResultsImagesAdapter;->this$0:Lcom/vkontakte/android/QuickSearchActivity;

    invoke-static {v0}, Lcom/vkontakte/android/QuickSearchActivity;->access$3(Lcom/vkontakte/android/QuickSearchActivity;)Lcom/vkontakte/android/QuickSearchActivity$ResultsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/QuickSearchActivity$ResultsAdapter;->getSectionCount()I

    move-result v0

    return v0
.end method

.method public imageLoaded(IILandroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "item"    # I
    .param p2, "image"    # I
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 502
    iget-object v1, p0, Lcom/vkontakte/android/QuickSearchActivity$ResultsImagesAdapter;->this$0:Lcom/vkontakte/android/QuickSearchActivity;

    invoke-static {v1}, Lcom/vkontakte/android/QuickSearchActivity;->access$4(Lcom/vkontakte/android/QuickSearchActivity;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    add-int/2addr p1, v1

    .line 503
    iget-object v1, p0, Lcom/vkontakte/android/QuickSearchActivity$ResultsImagesAdapter;->this$0:Lcom/vkontakte/android/QuickSearchActivity;

    invoke-static {v1}, Lcom/vkontakte/android/QuickSearchActivity;->access$4(Lcom/vkontakte/android/QuickSearchActivity;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    if-lt p1, v1, :cond_0

    iget-object v1, p0, Lcom/vkontakte/android/QuickSearchActivity$ResultsImagesAdapter;->this$0:Lcom/vkontakte/android/QuickSearchActivity;

    invoke-static {v1}, Lcom/vkontakte/android/QuickSearchActivity;->access$4(Lcom/vkontakte/android/QuickSearchActivity;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v1

    if-le p1, v1, :cond_1

    .line 514
    :cond_0
    :goto_0
    return-void

    .line 506
    :cond_1
    iget-object v1, p0, Lcom/vkontakte/android/QuickSearchActivity$ResultsImagesAdapter;->this$0:Lcom/vkontakte/android/QuickSearchActivity;

    invoke-static {v1}, Lcom/vkontakte/android/QuickSearchActivity;->access$4(Lcom/vkontakte/android/QuickSearchActivity;)Landroid/widget/ListView;

    move-result-object v1

    iget-object v2, p0, Lcom/vkontakte/android/QuickSearchActivity$ResultsImagesAdapter;->this$0:Lcom/vkontakte/android/QuickSearchActivity;

    invoke-static {v2}, Lcom/vkontakte/android/QuickSearchActivity;->access$4(Lcom/vkontakte/android/QuickSearchActivity;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v2

    sub-int v2, p1, v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 507
    .local v0, "v":Landroid/view/View;
    iget-object v1, p0, Lcom/vkontakte/android/QuickSearchActivity$ResultsImagesAdapter;->this$0:Lcom/vkontakte/android/QuickSearchActivity;

    new-instance v2, Lcom/vkontakte/android/QuickSearchActivity$ResultsImagesAdapter$1;

    invoke-direct {v2, p0, v0, p3}, Lcom/vkontakte/android/QuickSearchActivity$ResultsImagesAdapter$1;-><init>(Lcom/vkontakte/android/QuickSearchActivity$ResultsImagesAdapter;Landroid/view/View;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/QuickSearchActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public isSectionHeaderVisible(I)Z
    .locals 1
    .param p1, "section"    # I

    .prologue
    .line 487
    iget-object v0, p0, Lcom/vkontakte/android/QuickSearchActivity$ResultsImagesAdapter;->this$0:Lcom/vkontakte/android/QuickSearchActivity;

    invoke-static {v0}, Lcom/vkontakte/android/QuickSearchActivity;->access$3(Lcom/vkontakte/android/QuickSearchActivity;)Lcom/vkontakte/android/QuickSearchActivity$ResultsAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/vkontakte/android/QuickSearchActivity$ResultsAdapter;->isSectionHeaderVisible(I)Z

    move-result v0

    return v0
.end method
