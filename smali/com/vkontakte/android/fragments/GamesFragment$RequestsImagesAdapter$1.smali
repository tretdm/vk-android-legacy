.class Lcom/vkontakte/android/fragments/GamesFragment$RequestsImagesAdapter$1;
.super Ljava/lang/Object;
.source "GamesFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/GamesFragment$RequestsImagesAdapter;->imageLoaded(IILandroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/fragments/GamesFragment$RequestsImagesAdapter;

.field final synthetic val$bmp:Landroid/graphics/Bitmap;

.field final synthetic val$image:I

.field final synthetic val$item:I


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/GamesFragment$RequestsImagesAdapter;IILandroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 731
    iput-object p1, p0, Lcom/vkontakte/android/fragments/GamesFragment$RequestsImagesAdapter$1;->this$1:Lcom/vkontakte/android/fragments/GamesFragment$RequestsImagesAdapter;

    iput p2, p0, Lcom/vkontakte/android/fragments/GamesFragment$RequestsImagesAdapter$1;->val$item:I

    iput p3, p0, Lcom/vkontakte/android/fragments/GamesFragment$RequestsImagesAdapter$1;->val$image:I

    iput-object p4, p0, Lcom/vkontakte/android/fragments/GamesFragment$RequestsImagesAdapter$1;->val$bmp:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 733
    iget-object v1, p0, Lcom/vkontakte/android/fragments/GamesFragment$RequestsImagesAdapter$1;->this$1:Lcom/vkontakte/android/fragments/GamesFragment$RequestsImagesAdapter;

    iget-object v1, v1, Lcom/vkontakte/android/fragments/GamesFragment$RequestsImagesAdapter;->this$0:Lcom/vkontakte/android/fragments/GamesFragment;

    iget-object v1, v1, Lcom/vkontakte/android/fragments/GamesFragment;->list:Landroid/widget/ListView;

    iget v2, p0, Lcom/vkontakte/android/fragments/GamesFragment$RequestsImagesAdapter$1;->val$item:I

    iget-object v3, p0, Lcom/vkontakte/android/fragments/GamesFragment$RequestsImagesAdapter$1;->this$1:Lcom/vkontakte/android/fragments/GamesFragment$RequestsImagesAdapter;

    iget-object v3, v3, Lcom/vkontakte/android/fragments/GamesFragment$RequestsImagesAdapter;->this$0:Lcom/vkontakte/android/fragments/GamesFragment;

    iget-object v3, v3, Lcom/vkontakte/android/fragments/GamesFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 734
    .local v0, "v":Landroid/view/View;
    if-nez v0, :cond_0

    .line 745
    :goto_0
    return-void

    .line 736
    :cond_0
    :try_start_0
    iget v1, p0, Lcom/vkontakte/android/fragments/GamesFragment$RequestsImagesAdapter$1;->val$image:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 738
    :pswitch_0
    const v1, 0x7f08002e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/vkontakte/android/fragments/GamesFragment$RequestsImagesAdapter$1;->val$bmp:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 744
    :catch_0
    move-exception v1

    goto :goto_0

    .line 741
    :pswitch_1
    const v1, 0x7f080030

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/vkontakte/android/fragments/GamesFragment$RequestsImagesAdapter$1;->val$bmp:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 736
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
