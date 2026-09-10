.class Lcom/vkontakte/android/StoreActivity$StickerThumbsAdapter;
.super Lcom/vkontakte/android/ui/ListImageLoaderAdapter;
.source "StoreActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/StoreActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StickerThumbsAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/StoreActivity;


# direct methods
.method private constructor <init>(Lcom/vkontakte/android/StoreActivity;)V
    .locals 0

    .prologue
    .line 538
    iput-object p1, p0, Lcom/vkontakte/android/StoreActivity$StickerThumbsAdapter;->this$0:Lcom/vkontakte/android/StoreActivity;

    invoke-direct {p0}, Lcom/vkontakte/android/ui/ListImageLoaderAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkontakte/android/StoreActivity;Lcom/vkontakte/android/StoreActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/vkontakte/android/StoreActivity;
    .param p2, "x1"    # Lcom/vkontakte/android/StoreActivity$1;

    .prologue
    .line 538
    invoke-direct {p0, p1}, Lcom/vkontakte/android/StoreActivity$StickerThumbsAdapter;-><init>(Lcom/vkontakte/android/StoreActivity;)V

    return-void
.end method


# virtual methods
.method public getImageCountForItem(I)I
    .locals 1
    .param p1, "item"    # I

    .prologue
    .line 546
    const/4 v0, 0x1

    return v0
.end method

.method public getImageURL(II)Ljava/lang/String;
    .locals 1
    .param p1, "item"    # I
    .param p2, "image"    # I

    .prologue
    .line 551
    iget-object v0, p0, Lcom/vkontakte/android/StoreActivity$StickerThumbsAdapter;->this$0:Lcom/vkontakte/android/StoreActivity;

    invoke-static {v0}, Lcom/vkontakte/android/StoreActivity;->access$000(Lcom/vkontakte/android/StoreActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/data/StickerPack;

    iget-object v0, v0, Lcom/vkontakte/android/data/StickerPack;->thumb:Ljava/lang/String;

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 541
    iget-object v0, p0, Lcom/vkontakte/android/StoreActivity$StickerThumbsAdapter;->this$0:Lcom/vkontakte/android/StoreActivity;

    invoke-static {v0}, Lcom/vkontakte/android/StoreActivity;->access$1200(Lcom/vkontakte/android/StoreActivity;)Lcom/vkontakte/android/StoreActivity$StoreAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/StoreActivity$StoreAdapter;->getCount()I

    move-result v0

    return v0
.end method

.method public imageLoaded(IILandroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "item"    # I
    .param p2, "image"    # I
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 556
    iget-object v1, p0, Lcom/vkontakte/android/StoreActivity$StickerThumbsAdapter;->this$0:Lcom/vkontakte/android/StoreActivity;

    invoke-static {v1}, Lcom/vkontakte/android/StoreActivity;->access$300(Lcom/vkontakte/android/StoreActivity;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    add-int/2addr p1, v1

    .line 557
    iget-object v1, p0, Lcom/vkontakte/android/StoreActivity$StickerThumbsAdapter;->this$0:Lcom/vkontakte/android/StoreActivity;

    invoke-static {v1}, Lcom/vkontakte/android/StoreActivity;->access$300(Lcom/vkontakte/android/StoreActivity;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    if-lt p1, v1, :cond_0

    iget-object v1, p0, Lcom/vkontakte/android/StoreActivity$StickerThumbsAdapter;->this$0:Lcom/vkontakte/android/StoreActivity;

    invoke-static {v1}, Lcom/vkontakte/android/StoreActivity;->access$300(Lcom/vkontakte/android/StoreActivity;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v1

    if-le p1, v1, :cond_1

    .line 566
    :cond_0
    :goto_0
    return-void

    .line 558
    :cond_1
    iget-object v1, p0, Lcom/vkontakte/android/StoreActivity$StickerThumbsAdapter;->this$0:Lcom/vkontakte/android/StoreActivity;

    invoke-static {v1}, Lcom/vkontakte/android/StoreActivity;->access$300(Lcom/vkontakte/android/StoreActivity;)Landroid/widget/ListView;

    move-result-object v1

    iget-object v2, p0, Lcom/vkontakte/android/StoreActivity$StickerThumbsAdapter;->this$0:Lcom/vkontakte/android/StoreActivity;

    invoke-static {v2}, Lcom/vkontakte/android/StoreActivity;->access$300(Lcom/vkontakte/android/StoreActivity;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v2

    sub-int v2, p1, v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 559
    .local v0, "v":Landroid/view/View;
    iget-object v1, p0, Lcom/vkontakte/android/StoreActivity$StickerThumbsAdapter;->this$0:Lcom/vkontakte/android/StoreActivity;

    new-instance v2, Lcom/vkontakte/android/StoreActivity$StickerThumbsAdapter$1;

    invoke-direct {v2, p0, v0, p3}, Lcom/vkontakte/android/StoreActivity$StickerThumbsAdapter$1;-><init>(Lcom/vkontakte/android/StoreActivity$StickerThumbsAdapter;Landroid/view/View;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/StoreActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
