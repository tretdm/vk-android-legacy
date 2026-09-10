.class Lcom/vkontakte/android/NewsfeedBanlistActivity$PhotosAdapter;
.super Lcom/vkontakte/android/MultiSectionImageLoaderAdapter;
.source "NewsfeedBanlistActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/NewsfeedBanlistActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PhotosAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/NewsfeedBanlistActivity;


# direct methods
.method private constructor <init>(Lcom/vkontakte/android/NewsfeedBanlistActivity;)V
    .locals 0

    .prologue
    .line 254
    iput-object p1, p0, Lcom/vkontakte/android/NewsfeedBanlistActivity$PhotosAdapter;->this$0:Lcom/vkontakte/android/NewsfeedBanlistActivity;

    invoke-direct {p0}, Lcom/vkontakte/android/MultiSectionImageLoaderAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkontakte/android/NewsfeedBanlistActivity;Lcom/vkontakte/android/NewsfeedBanlistActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/vkontakte/android/NewsfeedBanlistActivity;
    .param p2, "x1"    # Lcom/vkontakte/android/NewsfeedBanlistActivity$1;

    .prologue
    .line 254
    invoke-direct {p0, p1}, Lcom/vkontakte/android/NewsfeedBanlistActivity$PhotosAdapter;-><init>(Lcom/vkontakte/android/NewsfeedBanlistActivity;)V

    return-void
.end method


# virtual methods
.method public getImageCountForItem(II)I
    .locals 1
    .param p1, "section"    # I
    .param p2, "item"    # I

    .prologue
    .line 284
    const/4 v0, 0x1

    return v0
.end method

.method public getImageURL(III)Ljava/lang/String;
    .locals 1
    .param p1, "section"    # I
    .param p2, "item"    # I
    .param p3, "image"    # I

    .prologue
    .line 289
    packed-switch p1, :pswitch_data_0

    .line 295
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 291
    :pswitch_0
    iget-object v0, p0, Lcom/vkontakte/android/NewsfeedBanlistActivity$PhotosAdapter;->this$0:Lcom/vkontakte/android/NewsfeedBanlistActivity;

    invoke-static {v0}, Lcom/vkontakte/android/NewsfeedBanlistActivity;->access$100(Lcom/vkontakte/android/NewsfeedBanlistActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/UserProfile;

    iget-object v0, v0, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    goto :goto_0

    .line 293
    :pswitch_1
    iget-object v0, p0, Lcom/vkontakte/android/NewsfeedBanlistActivity$PhotosAdapter;->this$0:Lcom/vkontakte/android/NewsfeedBanlistActivity;

    invoke-static {v0}, Lcom/vkontakte/android/NewsfeedBanlistActivity;->access$200(Lcom/vkontakte/android/NewsfeedBanlistActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/UserProfile;

    iget-object v0, v0, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    goto :goto_0

    .line 289
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getItemCount(I)I
    .locals 1
    .param p1, "section"    # I

    .prologue
    .line 262
    packed-switch p1, :pswitch_data_0

    .line 268
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 264
    :pswitch_0
    iget-object v0, p0, Lcom/vkontakte/android/NewsfeedBanlistActivity$PhotosAdapter;->this$0:Lcom/vkontakte/android/NewsfeedBanlistActivity;

    invoke-static {v0}, Lcom/vkontakte/android/NewsfeedBanlistActivity;->access$100(Lcom/vkontakte/android/NewsfeedBanlistActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0

    .line 266
    :pswitch_1
    iget-object v0, p0, Lcom/vkontakte/android/NewsfeedBanlistActivity$PhotosAdapter;->this$0:Lcom/vkontakte/android/NewsfeedBanlistActivity;

    invoke-static {v0}, Lcom/vkontakte/android/NewsfeedBanlistActivity;->access$200(Lcom/vkontakte/android/NewsfeedBanlistActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0

    .line 262
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getSectionCount()I
    .locals 1

    .prologue
    .line 257
    const/4 v0, 0x2

    return v0
.end method

.method public imageLoaded(IILandroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "item"    # I
    .param p2, "image"    # I
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 299
    iget-object v0, p0, Lcom/vkontakte/android/NewsfeedBanlistActivity$PhotosAdapter;->this$0:Lcom/vkontakte/android/NewsfeedBanlistActivity;

    iget-object v0, v0, Lcom/vkontakte/android/NewsfeedBanlistActivity;->list:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    if-lt p1, v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/NewsfeedBanlistActivity$PhotosAdapter;->this$0:Lcom/vkontakte/android/NewsfeedBanlistActivity;

    iget-object v0, v0, Lcom/vkontakte/android/NewsfeedBanlistActivity;->list:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v0

    if-gt p1, v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/vkontakte/android/NewsfeedBanlistActivity$PhotosAdapter;->this$0:Lcom/vkontakte/android/NewsfeedBanlistActivity;

    new-instance v1, Lcom/vkontakte/android/NewsfeedBanlistActivity$PhotosAdapter$1;

    invoke-direct {v1, p0, p1, p3}, Lcom/vkontakte/android/NewsfeedBanlistActivity$PhotosAdapter$1;-><init>(Lcom/vkontakte/android/NewsfeedBanlistActivity$PhotosAdapter;ILandroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/NewsfeedBanlistActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 307
    :cond_0
    return-void
.end method

.method public isSectionHeaderVisible(I)Z
    .locals 3
    .param p1, "section"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 273
    packed-switch p1, :pswitch_data_0

    move v0, v1

    .line 279
    :cond_0
    :goto_0
    return v0

    .line 275
    :pswitch_0
    iget-object v2, p0, Lcom/vkontakte/android/NewsfeedBanlistActivity$PhotosAdapter;->this$0:Lcom/vkontakte/android/NewsfeedBanlistActivity;

    invoke-static {v2}, Lcom/vkontakte/android/NewsfeedBanlistActivity;->access$100(Lcom/vkontakte/android/NewsfeedBanlistActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 277
    :pswitch_1
    iget-object v2, p0, Lcom/vkontakte/android/NewsfeedBanlistActivity$PhotosAdapter;->this$0:Lcom/vkontakte/android/NewsfeedBanlistActivity;

    invoke-static {v2}, Lcom/vkontakte/android/NewsfeedBanlistActivity;->access$200(Lcom/vkontakte/android/NewsfeedBanlistActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 273
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
