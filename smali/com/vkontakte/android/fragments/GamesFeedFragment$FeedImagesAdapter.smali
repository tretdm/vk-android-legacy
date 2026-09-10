.class Lcom/vkontakte/android/fragments/GamesFeedFragment$FeedImagesAdapter;
.super Lcom/vkontakte/android/ui/ListImageLoaderAdapter;
.source "GamesFeedFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/fragments/GamesFeedFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FeedImagesAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/GamesFeedFragment;


# direct methods
.method private constructor <init>(Lcom/vkontakte/android/fragments/GamesFeedFragment;)V
    .locals 0

    .prologue
    .line 199
    iput-object p1, p0, Lcom/vkontakte/android/fragments/GamesFeedFragment$FeedImagesAdapter;->this$0:Lcom/vkontakte/android/fragments/GamesFeedFragment;

    invoke-direct {p0}, Lcom/vkontakte/android/ui/ListImageLoaderAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkontakte/android/fragments/GamesFeedFragment;Lcom/vkontakte/android/fragments/GamesFeedFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/vkontakte/android/fragments/GamesFeedFragment;
    .param p2, "x1"    # Lcom/vkontakte/android/fragments/GamesFeedFragment$1;

    .prologue
    .line 199
    invoke-direct {p0, p1}, Lcom/vkontakte/android/fragments/GamesFeedFragment$FeedImagesAdapter;-><init>(Lcom/vkontakte/android/fragments/GamesFeedFragment;)V

    return-void
.end method


# virtual methods
.method public getImageCountForItem(I)I
    .locals 1
    .param p1, "item"    # I

    .prologue
    .line 208
    const/4 v0, 0x2

    return v0
.end method

.method public getImageURL(II)Ljava/lang/String;
    .locals 2
    .param p1, "item"    # I
    .param p2, "image"    # I

    .prologue
    .line 213
    packed-switch p2, :pswitch_data_0

    .line 219
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 215
    :pswitch_0
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GamesFeedFragment$FeedImagesAdapter;->this$0:Lcom/vkontakte/android/fragments/GamesFeedFragment;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/GamesFeedFragment;->data:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/data/GameFeedEntry;

    iget-object v0, v0, Lcom/vkontakte/android/data/GameFeedEntry;->user:Lcom/vkontakte/android/UserProfile;

    iget-object v0, v0, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    goto :goto_0

    .line 217
    :pswitch_1
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GamesFeedFragment$FeedImagesAdapter;->this$0:Lcom/vkontakte/android/fragments/GamesFeedFragment;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/GamesFeedFragment;->data:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/data/GameFeedEntry;

    iget-object v0, v0, Lcom/vkontakte/android/data/GameFeedEntry;->app:Lcom/vkontakte/android/data/ApiApplication;

    iget-object v0, v0, Lcom/vkontakte/android/data/ApiApplication;->icons:[Ljava/lang/String;

    const/4 v1, 0x4

    aget-object v0, v0, v1

    goto :goto_0

    .line 213
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GamesFeedFragment$FeedImagesAdapter;->this$0:Lcom/vkontakte/android/fragments/GamesFeedFragment;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/GamesFeedFragment;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public imageLoaded(IILandroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "item"    # I
    .param p2, "image"    # I
    .param p3, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 224
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GamesFeedFragment$FeedImagesAdapter;->this$0:Lcom/vkontakte/android/fragments/GamesFeedFragment;

    invoke-virtual {v0}, Lcom/vkontakte/android/fragments/GamesFeedFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/fragments/GamesFeedFragment$FeedImagesAdapter;->this$0:Lcom/vkontakte/android/fragments/GamesFeedFragment;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/GamesFeedFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    if-lt p1, v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/fragments/GamesFeedFragment$FeedImagesAdapter;->this$0:Lcom/vkontakte/android/fragments/GamesFeedFragment;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/GamesFeedFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v0

    if-le p1, v0, :cond_1

    .line 239
    :cond_0
    :goto_0
    return-void

    .line 225
    :cond_1
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GamesFeedFragment$FeedImagesAdapter;->this$0:Lcom/vkontakte/android/fragments/GamesFeedFragment;

    invoke-virtual {v0}, Lcom/vkontakte/android/fragments/GamesFeedFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/vkontakte/android/fragments/GamesFeedFragment$FeedImagesAdapter$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/vkontakte/android/fragments/GamesFeedFragment$FeedImagesAdapter$1;-><init>(Lcom/vkontakte/android/fragments/GamesFeedFragment$FeedImagesAdapter;IILandroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
