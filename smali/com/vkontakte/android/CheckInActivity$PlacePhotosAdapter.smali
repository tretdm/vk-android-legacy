.class Lcom/vkontakte/android/CheckInActivity$PlacePhotosAdapter;
.super Lcom/vkontakte/android/ui/ListImageLoaderAdapter;
.source "CheckInActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/CheckInActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PlacePhotosAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/CheckInActivity;


# direct methods
.method private constructor <init>(Lcom/vkontakte/android/CheckInActivity;)V
    .locals 0

    .prologue
    .line 481
    iput-object p1, p0, Lcom/vkontakte/android/CheckInActivity$PlacePhotosAdapter;->this$0:Lcom/vkontakte/android/CheckInActivity;

    invoke-direct {p0}, Lcom/vkontakte/android/ui/ListImageLoaderAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkontakte/android/CheckInActivity;Lcom/vkontakte/android/CheckInActivity$PlacePhotosAdapter;)V
    .locals 0

    .prologue
    .line 481
    invoke-direct {p0, p1}, Lcom/vkontakte/android/CheckInActivity$PlacePhotosAdapter;-><init>(Lcom/vkontakte/android/CheckInActivity;)V

    return-void
.end method


# virtual methods
.method public getImageCountForItem(I)I
    .locals 1
    .param p1, "item"    # I

    .prologue
    .line 489
    iget-object v0, p0, Lcom/vkontakte/android/CheckInActivity$PlacePhotosAdapter;->this$0:Lcom/vkontakte/android/CheckInActivity;

    invoke-static {v0}, Lcom/vkontakte/android/CheckInActivity;->access$0(Lcom/vkontakte/android/CheckInActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/GeoPlace;

    iget-object v0, v0, Lcom/vkontakte/android/GeoPlace;->photo:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getImageURL(II)Ljava/lang/String;
    .locals 1
    .param p1, "item"    # I
    .param p2, "image"    # I

    .prologue
    .line 494
    iget-object v0, p0, Lcom/vkontakte/android/CheckInActivity$PlacePhotosAdapter;->this$0:Lcom/vkontakte/android/CheckInActivity;

    invoke-static {v0}, Lcom/vkontakte/android/CheckInActivity;->access$0(Lcom/vkontakte/android/CheckInActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/GeoPlace;

    iget-object v0, v0, Lcom/vkontakte/android/GeoPlace;->photo:Ljava/lang/String;

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 484
    iget-object v0, p0, Lcom/vkontakte/android/CheckInActivity$PlacePhotosAdapter;->this$0:Lcom/vkontakte/android/CheckInActivity;

    invoke-static {v0}, Lcom/vkontakte/android/CheckInActivity;->access$0(Lcom/vkontakte/android/CheckInActivity;)Ljava/util/ArrayList;

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
    .line 499
    iget-object v1, p0, Lcom/vkontakte/android/CheckInActivity$PlacePhotosAdapter;->this$0:Lcom/vkontakte/android/CheckInActivity;

    invoke-static {v1}, Lcom/vkontakte/android/CheckInActivity;->access$2(Lcom/vkontakte/android/CheckInActivity;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    add-int/2addr p1, v1

    .line 500
    iget-object v1, p0, Lcom/vkontakte/android/CheckInActivity$PlacePhotosAdapter;->this$0:Lcom/vkontakte/android/CheckInActivity;

    invoke-static {v1}, Lcom/vkontakte/android/CheckInActivity;->access$2(Lcom/vkontakte/android/CheckInActivity;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    if-lt p1, v1, :cond_0

    iget-object v1, p0, Lcom/vkontakte/android/CheckInActivity$PlacePhotosAdapter;->this$0:Lcom/vkontakte/android/CheckInActivity;

    invoke-static {v1}, Lcom/vkontakte/android/CheckInActivity;->access$2(Lcom/vkontakte/android/CheckInActivity;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v1

    if-le p1, v1, :cond_1

    .line 511
    :cond_0
    :goto_0
    return-void

    .line 503
    :cond_1
    iget-object v1, p0, Lcom/vkontakte/android/CheckInActivity$PlacePhotosAdapter;->this$0:Lcom/vkontakte/android/CheckInActivity;

    invoke-static {v1}, Lcom/vkontakte/android/CheckInActivity;->access$2(Lcom/vkontakte/android/CheckInActivity;)Landroid/widget/ListView;

    move-result-object v1

    iget-object v2, p0, Lcom/vkontakte/android/CheckInActivity$PlacePhotosAdapter;->this$0:Lcom/vkontakte/android/CheckInActivity;

    invoke-static {v2}, Lcom/vkontakte/android/CheckInActivity;->access$2(Lcom/vkontakte/android/CheckInActivity;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v2

    sub-int v2, p1, v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 504
    .local v0, "v":Landroid/view/View;
    iget-object v1, p0, Lcom/vkontakte/android/CheckInActivity$PlacePhotosAdapter;->this$0:Lcom/vkontakte/android/CheckInActivity;

    new-instance v2, Lcom/vkontakte/android/CheckInActivity$PlacePhotosAdapter$1;

    invoke-direct {v2, p0, v0, p3}, Lcom/vkontakte/android/CheckInActivity$PlacePhotosAdapter$1;-><init>(Lcom/vkontakte/android/CheckInActivity$PlacePhotosAdapter;Landroid/view/View;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/CheckInActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
