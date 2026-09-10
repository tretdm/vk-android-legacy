.class Lcom/vkontakte/android/fragments/GamesFragment$RequestsImagesAdapter;
.super Lcom/vkontakte/android/MultiSectionImageLoaderAdapter;
.source "GamesFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/fragments/GamesFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RequestsImagesAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/GamesFragment;


# direct methods
.method private constructor <init>(Lcom/vkontakte/android/fragments/GamesFragment;)V
    .locals 0

    .prologue
    .line 691
    iput-object p1, p0, Lcom/vkontakte/android/fragments/GamesFragment$RequestsImagesAdapter;->this$0:Lcom/vkontakte/android/fragments/GamesFragment;

    invoke-direct {p0}, Lcom/vkontakte/android/MultiSectionImageLoaderAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkontakte/android/fragments/GamesFragment;Lcom/vkontakte/android/fragments/GamesFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/vkontakte/android/fragments/GamesFragment;
    .param p2, "x1"    # Lcom/vkontakte/android/fragments/GamesFragment$1;

    .prologue
    .line 691
    invoke-direct {p0, p1}, Lcom/vkontakte/android/fragments/GamesFragment$RequestsImagesAdapter;-><init>(Lcom/vkontakte/android/fragments/GamesFragment;)V

    return-void
.end method


# virtual methods
.method public getImageCountForItem(II)I
    .locals 2
    .param p1, "section"    # I
    .param p2, "item"    # I

    .prologue
    const/4 v0, 0x2

    .line 712
    iget-object v1, p0, Lcom/vkontakte/android/fragments/GamesFragment$RequestsImagesAdapter;->this$0:Lcom/vkontakte/android/fragments/GamesFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/GamesFragment;->access$1600(Lcom/vkontakte/android/fragments/GamesFragment;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-ne p2, v0, :cond_0

    .line 713
    const/4 v0, 0x0

    .line 714
    :cond_0
    return v0
.end method

.method public getImageURL(III)Ljava/lang/String;
    .locals 2
    .param p1, "section"    # I
    .param p2, "item"    # I
    .param p3, "image"    # I

    .prologue
    .line 719
    packed-switch p3, :pswitch_data_0

    .line 725
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 721
    :pswitch_0
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GamesFragment$RequestsImagesAdapter;->this$0:Lcom/vkontakte/android/fragments/GamesFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/GamesFragment;->access$000(Lcom/vkontakte/android/fragments/GamesFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/data/GameRequest;

    iget-object v0, v0, Lcom/vkontakte/android/data/GameRequest;->user:Lcom/vkontakte/android/UserProfile;

    iget-object v0, v0, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    goto :goto_0

    .line 723
    :pswitch_1
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GamesFragment$RequestsImagesAdapter;->this$0:Lcom/vkontakte/android/fragments/GamesFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/GamesFragment;->access$000(Lcom/vkontakte/android/fragments/GamesFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/data/GameRequest;

    iget-object v0, v0, Lcom/vkontakte/android/data/GameRequest;->app:Lcom/vkontakte/android/data/ApiApplication;

    iget-object v0, v0, Lcom/vkontakte/android/data/ApiApplication;->icons:[Ljava/lang/String;

    const/4 v1, 0x4

    aget-object v0, v0, v1

    goto :goto_0

    .line 719
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getItemCount(I)I
    .locals 2
    .param p1, "section"    # I

    .prologue
    .line 700
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GamesFragment$RequestsImagesAdapter;->this$0:Lcom/vkontakte/android/fragments/GamesFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/GamesFragment;->access$1600(Lcom/vkontakte/android/fragments/GamesFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/fragments/GamesFragment$RequestsImagesAdapter;->this$0:Lcom/vkontakte/android/fragments/GamesFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/GamesFragment;->access$000(Lcom/vkontakte/android/fragments/GamesFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    .line 701
    const/4 v0, 0x3

    .line 702
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GamesFragment$RequestsImagesAdapter;->this$0:Lcom/vkontakte/android/fragments/GamesFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/GamesFragment;->access$000(Lcom/vkontakte/android/fragments/GamesFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getSectionCount()I
    .locals 1

    .prologue
    .line 695
    const/4 v0, 0x1

    return v0
.end method

.method public imageLoaded(IILandroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "item"    # I
    .param p2, "image"    # I
    .param p3, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 730
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GamesFragment$RequestsImagesAdapter;->this$0:Lcom/vkontakte/android/fragments/GamesFragment;

    invoke-virtual {v0}, Lcom/vkontakte/android/fragments/GamesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/fragments/GamesFragment$RequestsImagesAdapter;->this$0:Lcom/vkontakte/android/fragments/GamesFragment;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/GamesFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    if-lt p1, v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/fragments/GamesFragment$RequestsImagesAdapter;->this$0:Lcom/vkontakte/android/fragments/GamesFragment;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/GamesFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v0

    if-le p1, v0, :cond_1

    .line 747
    :cond_0
    :goto_0
    return-void

    .line 731
    :cond_1
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GamesFragment$RequestsImagesAdapter;->this$0:Lcom/vkontakte/android/fragments/GamesFragment;

    invoke-virtual {v0}, Lcom/vkontakte/android/fragments/GamesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/vkontakte/android/fragments/GamesFragment$RequestsImagesAdapter$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/vkontakte/android/fragments/GamesFragment$RequestsImagesAdapter$1;-><init>(Lcom/vkontakte/android/fragments/GamesFragment$RequestsImagesAdapter;IILandroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public isSectionHeaderVisible(I)Z
    .locals 1
    .param p1, "section"    # I

    .prologue
    .line 707
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GamesFragment$RequestsImagesAdapter;->this$0:Lcom/vkontakte/android/fragments/GamesFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/GamesFragment;->access$000(Lcom/vkontakte/android/fragments/GamesFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
