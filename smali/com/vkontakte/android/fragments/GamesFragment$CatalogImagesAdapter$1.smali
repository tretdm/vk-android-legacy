.class Lcom/vkontakte/android/fragments/GamesFragment$CatalogImagesAdapter$1;
.super Ljava/lang/Object;
.source "GamesFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/GamesFragment$CatalogImagesAdapter;->imageLoaded(IILandroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/fragments/GamesFragment$CatalogImagesAdapter;

.field final synthetic val$bmp:Landroid/graphics/Bitmap;

.field final synthetic val$image:I

.field final synthetic val$item:I


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/GamesFragment$CatalogImagesAdapter;IILandroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 375
    iput-object p1, p0, Lcom/vkontakte/android/fragments/GamesFragment$CatalogImagesAdapter$1;->this$1:Lcom/vkontakte/android/fragments/GamesFragment$CatalogImagesAdapter;

    iput p2, p0, Lcom/vkontakte/android/fragments/GamesFragment$CatalogImagesAdapter$1;->val$item:I

    iput p3, p0, Lcom/vkontakte/android/fragments/GamesFragment$CatalogImagesAdapter$1;->val$image:I

    iput-object p4, p0, Lcom/vkontakte/android/fragments/GamesFragment$CatalogImagesAdapter$1;->val$bmp:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 377
    iget-object v1, p0, Lcom/vkontakte/android/fragments/GamesFragment$CatalogImagesAdapter$1;->this$1:Lcom/vkontakte/android/fragments/GamesFragment$CatalogImagesAdapter;

    iget-object v1, v1, Lcom/vkontakte/android/fragments/GamesFragment$CatalogImagesAdapter;->this$0:Lcom/vkontakte/android/fragments/GamesFragment;

    iget-object v1, v1, Lcom/vkontakte/android/fragments/GamesFragment;->list:Landroid/widget/ListView;

    iget v2, p0, Lcom/vkontakte/android/fragments/GamesFragment$CatalogImagesAdapter$1;->val$item:I

    iget-object v3, p0, Lcom/vkontakte/android/fragments/GamesFragment$CatalogImagesAdapter$1;->this$1:Lcom/vkontakte/android/fragments/GamesFragment$CatalogImagesAdapter;

    iget-object v3, v3, Lcom/vkontakte/android/fragments/GamesFragment$CatalogImagesAdapter;->this$0:Lcom/vkontakte/android/fragments/GamesFragment;

    iget-object v3, v3, Lcom/vkontakte/android/fragments/GamesFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 378
    .local v0, "v":Landroid/view/View;
    if-nez v0, :cond_1

    .line 381
    :cond_0
    :goto_0
    return-void

    .line 379
    :cond_1
    iget v1, p0, Lcom/vkontakte/android/fragments/GamesFragment$CatalogImagesAdapter$1;->val$image:I

    if-nez v1, :cond_0

    .line 380
    const v1, 0x7f080025

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/vkontakte/android/fragments/GamesFragment$CatalogImagesAdapter$1;->val$bmp:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method
