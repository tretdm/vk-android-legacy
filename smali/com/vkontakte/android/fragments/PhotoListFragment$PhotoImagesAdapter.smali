.class Lcom/vkontakte/android/fragments/PhotoListFragment$PhotoImagesAdapter;
.super Lcom/vkontakte/android/ui/ListImageLoaderAdapter;
.source "PhotoListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/fragments/PhotoListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PhotoImagesAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/PhotoListFragment;


# direct methods
.method private constructor <init>(Lcom/vkontakte/android/fragments/PhotoListFragment;)V
    .locals 0

    .prologue
    .line 790
    iput-object p1, p0, Lcom/vkontakte/android/fragments/PhotoListFragment$PhotoImagesAdapter;->this$0:Lcom/vkontakte/android/fragments/PhotoListFragment;

    invoke-direct {p0}, Lcom/vkontakte/android/ui/ListImageLoaderAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkontakte/android/fragments/PhotoListFragment;Lcom/vkontakte/android/fragments/PhotoListFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/vkontakte/android/fragments/PhotoListFragment;
    .param p2, "x1"    # Lcom/vkontakte/android/fragments/PhotoListFragment$1;

    .prologue
    .line 790
    invoke-direct {p0, p1}, Lcom/vkontakte/android/fragments/PhotoListFragment$PhotoImagesAdapter;-><init>(Lcom/vkontakte/android/fragments/PhotoListFragment;)V

    return-void
.end method


# virtual methods
.method public getImageCountForItem(I)I
    .locals 1
    .param p1, "item"    # I

    .prologue
    .line 799
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoListFragment$PhotoImagesAdapter;->this$0:Lcom/vkontakte/android/fragments/PhotoListFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/PhotoListFragment;->access$2200(Lcom/vkontakte/android/fragments/PhotoListFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getImageURL(II)Ljava/lang/String;
    .locals 4
    .param p1, "item"    # I
    .param p2, "image"    # I

    .prologue
    const/16 v1, 0x6d

    .line 804
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoListFragment$PhotoImagesAdapter;->this$0:Lcom/vkontakte/android/fragments/PhotoListFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/PhotoListFragment;->access$2200(Lcom/vkontakte/android/fragments/PhotoListFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/fragments/PhotoListFragment$PhotoLayout;

    iget-object v2, v0, Lcom/vkontakte/android/fragments/PhotoListFragment$PhotoLayout;->photo:Lcom/vkontakte/android/Photo;

    sget v0, Lcom/vkontakte/android/Global;->displayDensity:F

    const/high16 v3, 0x3fc00000    # 1.5f

    cmpl-float v0, v0, v3

    if-lez v0, :cond_0

    const/16 v0, 0x70

    :goto_0
    invoke-virtual {v2, v0, v1}, Lcom/vkontakte/android/Photo;->getImage(CC)Lcom/vkontakte/android/Photo$Image;

    move-result-object v0

    iget-object v0, v0, Lcom/vkontakte/android/Photo$Image;->url:Ljava/lang/String;

    return-object v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 794
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoListFragment$PhotoImagesAdapter;->this$0:Lcom/vkontakte/android/fragments/PhotoListFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/PhotoListFragment;->access$2200(Lcom/vkontakte/android/fragments/PhotoListFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public imageLoaded(IILandroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "item"    # I
    .param p2, "image"    # I
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 809
    iget-object v1, p0, Lcom/vkontakte/android/fragments/PhotoListFragment$PhotoImagesAdapter;->this$0:Lcom/vkontakte/android/fragments/PhotoListFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/PhotoListFragment;->access$2400(Lcom/vkontakte/android/fragments/PhotoListFragment;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    add-int/2addr p1, v1

    .line 810
    iget-object v1, p0, Lcom/vkontakte/android/fragments/PhotoListFragment$PhotoImagesAdapter;->this$0:Lcom/vkontakte/android/fragments/PhotoListFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/PhotoListFragment;->access$2400(Lcom/vkontakte/android/fragments/PhotoListFragment;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    if-lt p1, v1, :cond_0

    iget-object v1, p0, Lcom/vkontakte/android/fragments/PhotoListFragment$PhotoImagesAdapter;->this$0:Lcom/vkontakte/android/fragments/PhotoListFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/PhotoListFragment;->access$2400(Lcom/vkontakte/android/fragments/PhotoListFragment;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v1

    if-le p1, v1, :cond_1

    .line 821
    :cond_0
    :goto_0
    return-void

    .line 813
    :cond_1
    iget-object v1, p0, Lcom/vkontakte/android/fragments/PhotoListFragment$PhotoImagesAdapter;->this$0:Lcom/vkontakte/android/fragments/PhotoListFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/PhotoListFragment;->access$2400(Lcom/vkontakte/android/fragments/PhotoListFragment;)Landroid/widget/ListView;

    move-result-object v1

    iget-object v2, p0, Lcom/vkontakte/android/fragments/PhotoListFragment$PhotoImagesAdapter;->this$0:Lcom/vkontakte/android/fragments/PhotoListFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/PhotoListFragment;->access$2400(Lcom/vkontakte/android/fragments/PhotoListFragment;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v2

    sub-int v2, p1, v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 814
    .local v0, "v":Landroid/view/View;
    iget-object v1, p0, Lcom/vkontakte/android/fragments/PhotoListFragment$PhotoImagesAdapter;->this$0:Lcom/vkontakte/android/fragments/PhotoListFragment;

    invoke-virtual {v1}, Lcom/vkontakte/android/fragments/PhotoListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/vkontakte/android/fragments/PhotoListFragment$PhotoImagesAdapter$1;

    invoke-direct {v2, p0, v0, p2, p3}, Lcom/vkontakte/android/fragments/PhotoListFragment$PhotoImagesAdapter$1;-><init>(Lcom/vkontakte/android/fragments/PhotoListFragment$PhotoImagesAdapter;Landroid/view/View;ILandroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
