.class Lcom/vkontakte/android/ProfileView$ProfileImagesAdapter;
.super Lcom/vkontakte/android/ui/ListImageLoaderAdapter;
.source "ProfileView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/ProfileView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProfileImagesAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/ProfileView;


# direct methods
.method private constructor <init>(Lcom/vkontakte/android/ProfileView;)V
    .locals 0

    .prologue
    .line 1565
    iput-object p1, p0, Lcom/vkontakte/android/ProfileView$ProfileImagesAdapter;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-direct {p0}, Lcom/vkontakte/android/ui/ListImageLoaderAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkontakte/android/ProfileView;Lcom/vkontakte/android/ProfileView$ProfileImagesAdapter;)V
    .locals 0

    .prologue
    .line 1565
    invoke-direct {p0, p1}, Lcom/vkontakte/android/ProfileView$ProfileImagesAdapter;-><init>(Lcom/vkontakte/android/ProfileView;)V

    return-void
.end method

.method static synthetic access$1(Lcom/vkontakte/android/ProfileView$ProfileImagesAdapter;)Lcom/vkontakte/android/ProfileView;
    .locals 1

    .prologue
    .line 1565
    iget-object v0, p0, Lcom/vkontakte/android/ProfileView$ProfileImagesAdapter;->this$0:Lcom/vkontakte/android/ProfileView;

    return-object v0
.end method


# virtual methods
.method public getImageCountForItem(I)I
    .locals 3
    .param p1, "item"    # I

    .prologue
    const/4 v1, 0x1

    .line 1574
    if-nez p1, :cond_0

    move v0, v1

    .line 1578
    :goto_0
    return v0

    .line 1576
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/ProfileView$ProfileImagesAdapter;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v0}, Lcom/vkontakte/android/ProfileView;->access$10(Lcom/vkontakte/android/ProfileView;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-lez p1, :cond_1

    add-int/lit8 v0, p1, -0x1

    iget-object v2, p0, Lcom/vkontakte/android/ProfileView$ProfileImagesAdapter;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v2}, Lcom/vkontakte/android/ProfileView;->access$11(Lcom/vkontakte/android/ProfileView;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v0, p0, Lcom/vkontakte/android/ProfileView$ProfileImagesAdapter;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v0}, Lcom/vkontakte/android/ProfileView;->access$11(Lcom/vkontakte/android/ProfileView;)Ljava/util/ArrayList;

    move-result-object v0

    add-int/lit8 v2, p1, -0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/ProfileView$InfoItem;

    iget v0, v0, Lcom/vkontakte/android/ProfileView$InfoItem;->type:I

    if-ne v0, v1, :cond_1

    move v0, v1

    .line 1577
    goto :goto_0

    .line 1578
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getImageURL(II)Ljava/lang/String;
    .locals 2
    .param p1, "item"    # I
    .param p2, "image"    # I

    .prologue
    .line 1583
    if-nez p1, :cond_0

    .line 1584
    iget-object v0, p0, Lcom/vkontakte/android/ProfileView$ProfileImagesAdapter;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v0}, Lcom/vkontakte/android/ProfileView;->access$0(Lcom/vkontakte/android/ProfileView;)Lcom/vkontakte/android/api/ExtendedUserProfile;

    move-result-object v0

    iget-object v0, v0, Lcom/vkontakte/android/api/ExtendedUserProfile;->bigPhoto:Ljava/lang/String;

    .line 1587
    :goto_0
    return-object v0

    .line 1585
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/ProfileView$ProfileImagesAdapter;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v0}, Lcom/vkontakte/android/ProfileView;->access$10(Lcom/vkontakte/android/ProfileView;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-lez p1, :cond_1

    add-int/lit8 v0, p1, -0x1

    iget-object v1, p0, Lcom/vkontakte/android/ProfileView$ProfileImagesAdapter;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v1}, Lcom/vkontakte/android/ProfileView;->access$11(Lcom/vkontakte/android/ProfileView;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lcom/vkontakte/android/ProfileView$ProfileImagesAdapter;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v0}, Lcom/vkontakte/android/ProfileView;->access$11(Lcom/vkontakte/android/ProfileView;)Ljava/util/ArrayList;

    move-result-object v0

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/ProfileView$InfoItem;

    iget v0, v0, Lcom/vkontakte/android/ProfileView$InfoItem;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1586
    iget-object v0, p0, Lcom/vkontakte/android/ProfileView$ProfileImagesAdapter;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v0}, Lcom/vkontakte/android/ProfileView;->access$11(Lcom/vkontakte/android/ProfileView;)Ljava/util/ArrayList;

    move-result-object v0

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/ProfileView$InfoItem;

    iget-object v0, v0, Lcom/vkontakte/android/ProfileView$InfoItem;->subData:Ljava/lang/String;

    goto :goto_0

    .line 1587
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemCount()I
    .locals 2

    .prologue
    .line 1569
    iget-object v0, p0, Lcom/vkontakte/android/ProfileView$ProfileImagesAdapter;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v0}, Lcom/vkontakte/android/ProfileView;->access$10(Lcom/vkontakte/android/ProfileView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/ProfileView$ProfileImagesAdapter;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v0}, Lcom/vkontakte/android/ProfileView;->access$11(Lcom/vkontakte/android/ProfileView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/vkontakte/android/ProfileView$ProfileImagesAdapter;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v1}, Lcom/vkontakte/android/ProfileView;->access$12(Lcom/vkontakte/android/ProfileView;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public imageLoaded(IILandroid/graphics/Bitmap;)V
    .locals 5
    .param p1, "item"    # I
    .param p2, "image"    # I
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 1592
    if-nez p1, :cond_0

    .line 1593
    iget-object v2, p0, Lcom/vkontakte/android/ProfileView$ProfileImagesAdapter;->this$0:Lcom/vkontakte/android/ProfileView;

    new-instance v3, Lcom/vkontakte/android/ProfileView$ProfileImagesAdapter$1;

    invoke-direct {v3, p0, p3}, Lcom/vkontakte/android/ProfileView$ProfileImagesAdapter$1;-><init>(Lcom/vkontakte/android/ProfileView$ProfileImagesAdapter;Landroid/graphics/Bitmap;)V

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/ProfileView;->post(Ljava/lang/Runnable;)Z

    .line 1599
    :cond_0
    iget-object v2, p0, Lcom/vkontakte/android/ProfileView$ProfileImagesAdapter;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v2}, Lcom/vkontakte/android/ProfileView;->access$10(Lcom/vkontakte/android/ProfileView;)Z

    move-result v2

    if-eqz v2, :cond_2

    if-lez p1, :cond_2

    add-int/lit8 v2, p1, -0x1

    iget-object v3, p0, Lcom/vkontakte/android/ProfileView$ProfileImagesAdapter;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v3}, Lcom/vkontakte/android/ProfileView;->access$11(Lcom/vkontakte/android/ProfileView;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    iget-object v2, p0, Lcom/vkontakte/android/ProfileView$ProfileImagesAdapter;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v2}, Lcom/vkontakte/android/ProfileView;->access$11(Lcom/vkontakte/android/ProfileView;)Ljava/util/ArrayList;

    move-result-object v2

    add-int/lit8 v3, p1, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/ProfileView$InfoItem;

    iget v2, v2, Lcom/vkontakte/android/ProfileView$InfoItem;->type:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 1600
    const-string v2, "vk"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "loaded: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1601
    const/4 v0, 0x0

    .line 1602
    .local v0, "rv":Landroid/view/View;
    iget-object v2, p0, Lcom/vkontakte/android/ProfileView$ProfileImagesAdapter;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v2}, Lcom/vkontakte/android/ProfileView;->access$15(Lcom/vkontakte/android/ProfileView;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1609
    :goto_0
    if-nez v0, :cond_4

    .line 1621
    .end local v0    # "rv":Landroid/view/View;
    :cond_2
    :goto_1
    return-void

    .line 1602
    .restart local v0    # "rv":Landroid/view/View;
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 1603
    .local v1, "v":Landroid/view/View;
    iget-object v2, p0, Lcom/vkontakte/android/ProfileView$ProfileImagesAdapter;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v2}, Lcom/vkontakte/android/ProfileView;->access$11(Lcom/vkontakte/android/ProfileView;)Ljava/util/ArrayList;

    move-result-object v2

    add-int/lit8 v4, p1, -0x1

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/ProfileView$InfoItem;

    iget-object v2, v2, Lcom/vkontakte/android/ProfileView$InfoItem;->tag:Ljava/lang/String;

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1604
    move-object v0, v1

    .line 1605
    const-string v2, "vk"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "found view: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1610
    .end local v1    # "v":Landroid/view/View;
    :cond_4
    move-object v1, v0

    .line 1611
    .restart local v1    # "v":Landroid/view/View;
    iget-object v2, p0, Lcom/vkontakte/android/ProfileView$ProfileImagesAdapter;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-virtual {v2}, Lcom/vkontakte/android/ProfileView;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    new-instance v3, Lcom/vkontakte/android/ProfileView$ProfileImagesAdapter$2;

    invoke-direct {v3, p0, v1, p3}, Lcom/vkontakte/android/ProfileView$ProfileImagesAdapter$2;-><init>(Lcom/vkontakte/android/ProfileView$ProfileImagesAdapter;Landroid/view/View;Landroid/graphics/Bitmap;)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1
.end method
