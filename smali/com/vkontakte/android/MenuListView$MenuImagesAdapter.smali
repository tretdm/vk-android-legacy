.class Lcom/vkontakte/android/MenuListView$MenuImagesAdapter;
.super Lcom/vkontakte/android/MultiSectionImageLoaderAdapter;
.source "MenuListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/MenuListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MenuImagesAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/MenuListView;


# direct methods
.method private constructor <init>(Lcom/vkontakte/android/MenuListView;)V
    .locals 0

    .prologue
    .line 422
    iput-object p1, p0, Lcom/vkontakte/android/MenuListView$MenuImagesAdapter;->this$0:Lcom/vkontakte/android/MenuListView;

    invoke-direct {p0}, Lcom/vkontakte/android/MultiSectionImageLoaderAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkontakte/android/MenuListView;Lcom/vkontakte/android/MenuListView$MenuImagesAdapter;)V
    .locals 0

    .prologue
    .line 422
    invoke-direct {p0, p1}, Lcom/vkontakte/android/MenuListView$MenuImagesAdapter;-><init>(Lcom/vkontakte/android/MenuListView;)V

    return-void
.end method

.method static synthetic access$1(Lcom/vkontakte/android/MenuListView$MenuImagesAdapter;)Lcom/vkontakte/android/MenuListView;
    .locals 1

    .prologue
    .line 422
    iget-object v0, p0, Lcom/vkontakte/android/MenuListView$MenuImagesAdapter;->this$0:Lcom/vkontakte/android/MenuListView;

    return-object v0
.end method


# virtual methods
.method public getImageCountForItem(II)I
    .locals 2
    .param p1, "section"    # I
    .param p2, "item"    # I

    .prologue
    const/4 v0, 0x1

    .line 440
    if-eq p1, v0, :cond_0

    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 442
    :cond_0
    :goto_0
    return v0

    .line 441
    :cond_1
    if-nez p1, :cond_2

    if-eqz p2, :cond_0

    .line 442
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getImageURL(III)Ljava/lang/String;
    .locals 1
    .param p1, "section"    # I
    .param p2, "item"    # I
    .param p3, "image"    # I

    .prologue
    .line 447
    packed-switch p1, :pswitch_data_0

    .line 455
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 449
    :pswitch_0
    iget-object v0, p0, Lcom/vkontakte/android/MenuListView$MenuImagesAdapter;->this$0:Lcom/vkontakte/android/MenuListView;

    invoke-static {v0}, Lcom/vkontakte/android/MenuListView;->access$5(Lcom/vkontakte/android/MenuListView;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 451
    :pswitch_1
    iget-object v0, p0, Lcom/vkontakte/android/MenuListView$MenuImagesAdapter;->this$0:Lcom/vkontakte/android/MenuListView;

    invoke-static {v0}, Lcom/vkontakte/android/MenuListView;->access$1(Lcom/vkontakte/android/MenuListView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/UserProfile;

    iget-object v0, v0, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    goto :goto_0

    .line 453
    :pswitch_2
    iget-object v0, p0, Lcom/vkontakte/android/MenuListView$MenuImagesAdapter;->this$0:Lcom/vkontakte/android/MenuListView;

    invoke-static {v0}, Lcom/vkontakte/android/MenuListView;->access$2(Lcom/vkontakte/android/MenuListView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/api/Group;

    iget-object v0, v0, Lcom/vkontakte/android/api/Group;->photo:Ljava/lang/String;

    goto :goto_0

    .line 447
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getItemCount(I)I
    .locals 1
    .param p1, "section"    # I

    .prologue
    .line 430
    iget-object v0, p0, Lcom/vkontakte/android/MenuListView$MenuImagesAdapter;->this$0:Lcom/vkontakte/android/MenuListView;

    invoke-static {v0}, Lcom/vkontakte/android/MenuListView;->access$8(Lcom/vkontakte/android/MenuListView;)Lcom/vkontakte/android/MenuListView$MenuAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/vkontakte/android/MenuListView$MenuAdapter;->getItemCount(I)I

    move-result v0

    return v0
.end method

.method public getSectionCount()I
    .locals 1

    .prologue
    .line 425
    iget-object v0, p0, Lcom/vkontakte/android/MenuListView$MenuImagesAdapter;->this$0:Lcom/vkontakte/android/MenuListView;

    invoke-static {v0}, Lcom/vkontakte/android/MenuListView;->access$8(Lcom/vkontakte/android/MenuListView;)Lcom/vkontakte/android/MenuListView$MenuAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/MenuListView$MenuAdapter;->getSectionCount()I

    move-result v0

    return v0
.end method

.method public imageLoaded(IILandroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "_item"    # I
    .param p2, "image"    # I
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 462
    if-gez p1, :cond_0

    .line 476
    :goto_0
    return-void

    .line 463
    :cond_0
    iget-object v1, p0, Lcom/vkontakte/android/MenuListView$MenuImagesAdapter;->this$0:Lcom/vkontakte/android/MenuListView;

    invoke-virtual {v1}, Lcom/vkontakte/android/MenuListView;->getHeaderViewsCount()I

    move-result v1

    add-int/2addr p1, v1

    .line 465
    move v0, p1

    .line 466
    .local v0, "item":I
    iget-object v1, p0, Lcom/vkontakte/android/MenuListView$MenuImagesAdapter;->this$0:Lcom/vkontakte/android/MenuListView;

    new-instance v2, Lcom/vkontakte/android/MenuListView$MenuImagesAdapter$1;

    invoke-direct {v2, p0, v0, p3}, Lcom/vkontakte/android/MenuListView$MenuImagesAdapter$1;-><init>(Lcom/vkontakte/android/MenuListView$MenuImagesAdapter;ILandroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/MenuListView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public isSectionHeaderVisible(I)Z
    .locals 1
    .param p1, "section"    # I

    .prologue
    .line 435
    iget-object v0, p0, Lcom/vkontakte/android/MenuListView$MenuImagesAdapter;->this$0:Lcom/vkontakte/android/MenuListView;

    invoke-static {v0}, Lcom/vkontakte/android/MenuListView;->access$8(Lcom/vkontakte/android/MenuListView;)Lcom/vkontakte/android/MenuListView$MenuAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/vkontakte/android/MenuListView$MenuAdapter;->isSectionHeaderVisible(I)Z

    move-result v0

    return v0
.end method
