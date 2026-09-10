.class Lcom/vkontakte/android/fragments/GamesFeedFragment$FeedImagesAdapter$1;
.super Ljava/lang/Object;
.source "GamesFeedFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/GamesFeedFragment$FeedImagesAdapter;->imageLoaded(IILandroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/fragments/GamesFeedFragment$FeedImagesAdapter;

.field final synthetic val$bmp:Landroid/graphics/Bitmap;

.field final synthetic val$image:I

.field final synthetic val$item:I


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/GamesFeedFragment$FeedImagesAdapter;IILandroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 225
    iput-object p1, p0, Lcom/vkontakte/android/fragments/GamesFeedFragment$FeedImagesAdapter$1;->this$1:Lcom/vkontakte/android/fragments/GamesFeedFragment$FeedImagesAdapter;

    iput p2, p0, Lcom/vkontakte/android/fragments/GamesFeedFragment$FeedImagesAdapter$1;->val$item:I

    iput p3, p0, Lcom/vkontakte/android/fragments/GamesFeedFragment$FeedImagesAdapter$1;->val$image:I

    iput-object p4, p0, Lcom/vkontakte/android/fragments/GamesFeedFragment$FeedImagesAdapter$1;->val$bmp:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 227
    iget-object v1, p0, Lcom/vkontakte/android/fragments/GamesFeedFragment$FeedImagesAdapter$1;->this$1:Lcom/vkontakte/android/fragments/GamesFeedFragment$FeedImagesAdapter;

    iget-object v1, v1, Lcom/vkontakte/android/fragments/GamesFeedFragment$FeedImagesAdapter;->this$0:Lcom/vkontakte/android/fragments/GamesFeedFragment;

    iget-object v1, v1, Lcom/vkontakte/android/fragments/GamesFeedFragment;->list:Landroid/widget/ListView;

    iget v2, p0, Lcom/vkontakte/android/fragments/GamesFeedFragment$FeedImagesAdapter$1;->val$item:I

    iget-object v3, p0, Lcom/vkontakte/android/fragments/GamesFeedFragment$FeedImagesAdapter$1;->this$1:Lcom/vkontakte/android/fragments/GamesFeedFragment$FeedImagesAdapter;

    iget-object v3, v3, Lcom/vkontakte/android/fragments/GamesFeedFragment$FeedImagesAdapter;->this$0:Lcom/vkontakte/android/fragments/GamesFeedFragment;

    iget-object v3, v3, Lcom/vkontakte/android/fragments/GamesFeedFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 228
    .local v0, "v":Landroid/view/View;
    if-nez v0, :cond_0

    .line 237
    :goto_0
    return-void

    .line 229
    :cond_0
    iget v1, p0, Lcom/vkontakte/android/fragments/GamesFeedFragment$FeedImagesAdapter$1;->val$image:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 231
    :pswitch_0
    const v1, 0x7f08002a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/vkontakte/android/fragments/GamesFeedFragment$FeedImagesAdapter$1;->val$bmp:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 234
    :pswitch_1
    const v1, 0x7f08002c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/vkontakte/android/fragments/GamesFeedFragment$FeedImagesAdapter$1;->val$bmp:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 229
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
