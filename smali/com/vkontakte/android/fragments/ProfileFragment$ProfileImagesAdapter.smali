.class Lcom/vkontakte/android/fragments/ProfileFragment$ProfileImagesAdapter;
.super Lcom/vkontakte/android/ui/ListImageLoaderAdapter;
.source "ProfileFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/fragments/ProfileFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProfileImagesAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/ProfileFragment;


# direct methods
.method private constructor <init>(Lcom/vkontakte/android/fragments/ProfileFragment;)V
    .locals 0

    .prologue
    .line 1891
    iput-object p1, p0, Lcom/vkontakte/android/fragments/ProfileFragment$ProfileImagesAdapter;->this$0:Lcom/vkontakte/android/fragments/ProfileFragment;

    invoke-direct {p0}, Lcom/vkontakte/android/ui/ListImageLoaderAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkontakte/android/fragments/ProfileFragment;Lcom/vkontakte/android/fragments/ProfileFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/vkontakte/android/fragments/ProfileFragment;
    .param p2, "x1"    # Lcom/vkontakte/android/fragments/ProfileFragment$1;

    .prologue
    .line 1891
    invoke-direct {p0, p1}, Lcom/vkontakte/android/fragments/ProfileFragment$ProfileImagesAdapter;-><init>(Lcom/vkontakte/android/fragments/ProfileFragment;)V

    return-void
.end method


# virtual methods
.method public getImageCountForItem(I)I
    .locals 3
    .param p1, "item"    # I

    .prologue
    const/4 v1, 0x1

    .line 1900
    if-nez p1, :cond_0

    move v0, v1

    .line 1904
    :goto_0
    return v0

    .line 1902
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ProfileFragment$ProfileImagesAdapter;->this$0:Lcom/vkontakte/android/fragments/ProfileFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/ProfileFragment;->access$3200(Lcom/vkontakte/android/fragments/ProfileFragment;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-lez p1, :cond_1

    add-int/lit8 v0, p1, -0x1

    iget-object v2, p0, Lcom/vkontakte/android/fragments/ProfileFragment$ProfileImagesAdapter;->this$0:Lcom/vkontakte/android/fragments/ProfileFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/ProfileFragment;->access$2000(Lcom/vkontakte/android/fragments/ProfileFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v0, p0, Lcom/vkontakte/android/fragments/ProfileFragment$ProfileImagesAdapter;->this$0:Lcom/vkontakte/android/fragments/ProfileFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/ProfileFragment;->access$2000(Lcom/vkontakte/android/fragments/ProfileFragment;)Ljava/util/ArrayList;

    move-result-object v0

    add-int/lit8 v2, p1, -0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/fragments/ProfileFragment$InfoItem;

    iget v0, v0, Lcom/vkontakte/android/fragments/ProfileFragment$InfoItem;->type:I

    if-ne v0, v1, :cond_1

    move v0, v1

    .line 1903
    goto :goto_0

    .line 1904
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getImageURL(II)Ljava/lang/String;
    .locals 2
    .param p1, "item"    # I
    .param p2, "image"    # I

    .prologue
    .line 1909
    if-nez p1, :cond_0

    .line 1910
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ProfileFragment$ProfileImagesAdapter;->this$0:Lcom/vkontakte/android/fragments/ProfileFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/ProfileFragment;->access$000(Lcom/vkontakte/android/fragments/ProfileFragment;)Lcom/vkontakte/android/api/ExtendedUserProfile;

    move-result-object v0

    iget-object v0, v0, Lcom/vkontakte/android/api/ExtendedUserProfile;->bigPhoto:Ljava/lang/String;

    .line 1913
    :goto_0
    return-object v0

    .line 1911
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ProfileFragment$ProfileImagesAdapter;->this$0:Lcom/vkontakte/android/fragments/ProfileFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/ProfileFragment;->access$3200(Lcom/vkontakte/android/fragments/ProfileFragment;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-lez p1, :cond_1

    add-int/lit8 v0, p1, -0x1

    iget-object v1, p0, Lcom/vkontakte/android/fragments/ProfileFragment$ProfileImagesAdapter;->this$0:Lcom/vkontakte/android/fragments/ProfileFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/ProfileFragment;->access$2000(Lcom/vkontakte/android/fragments/ProfileFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lcom/vkontakte/android/fragments/ProfileFragment$ProfileImagesAdapter;->this$0:Lcom/vkontakte/android/fragments/ProfileFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/ProfileFragment;->access$2000(Lcom/vkontakte/android/fragments/ProfileFragment;)Ljava/util/ArrayList;

    move-result-object v0

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/fragments/ProfileFragment$InfoItem;

    iget v0, v0, Lcom/vkontakte/android/fragments/ProfileFragment$InfoItem;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1912
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ProfileFragment$ProfileImagesAdapter;->this$0:Lcom/vkontakte/android/fragments/ProfileFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/ProfileFragment;->access$2000(Lcom/vkontakte/android/fragments/ProfileFragment;)Ljava/util/ArrayList;

    move-result-object v0

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/fragments/ProfileFragment$InfoItem;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ProfileFragment$InfoItem;->subData:Ljava/lang/String;

    goto :goto_0

    .line 1913
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemCount()I
    .locals 2

    .prologue
    .line 1895
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ProfileFragment$ProfileImagesAdapter;->this$0:Lcom/vkontakte/android/fragments/ProfileFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/ProfileFragment;->access$3200(Lcom/vkontakte/android/fragments/ProfileFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/fragments/ProfileFragment$ProfileImagesAdapter;->this$0:Lcom/vkontakte/android/fragments/ProfileFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/ProfileFragment;->access$2000(Lcom/vkontakte/android/fragments/ProfileFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/vkontakte/android/fragments/ProfileFragment$ProfileImagesAdapter;->this$0:Lcom/vkontakte/android/fragments/ProfileFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/ProfileFragment;->access$2900(Lcom/vkontakte/android/fragments/ProfileFragment;)Ljava/util/ArrayList;

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
    .line 1918
    if-nez p1, :cond_0

    .line 1919
    iget-object v3, p0, Lcom/vkontakte/android/fragments/ProfileFragment$ProfileImagesAdapter;->this$0:Lcom/vkontakte/android/fragments/ProfileFragment;

    invoke-virtual {v3}, Lcom/vkontakte/android/fragments/ProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    new-instance v4, Lcom/vkontakte/android/fragments/ProfileFragment$ProfileImagesAdapter$1;

    invoke-direct {v4, p0, p3}, Lcom/vkontakte/android/fragments/ProfileFragment$ProfileImagesAdapter$1;-><init>(Lcom/vkontakte/android/fragments/ProfileFragment$ProfileImagesAdapter;Landroid/graphics/Bitmap;)V

    invoke-virtual {v3, v4}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1925
    :cond_0
    iget-object v3, p0, Lcom/vkontakte/android/fragments/ProfileFragment$ProfileImagesAdapter;->this$0:Lcom/vkontakte/android/fragments/ProfileFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ProfileFragment;->access$3200(Lcom/vkontakte/android/fragments/ProfileFragment;)Z

    move-result v3

    if-eqz v3, :cond_3

    if-lez p1, :cond_3

    add-int/lit8 v3, p1, -0x1

    iget-object v4, p0, Lcom/vkontakte/android/fragments/ProfileFragment$ProfileImagesAdapter;->this$0:Lcom/vkontakte/android/fragments/ProfileFragment;

    invoke-static {v4}, Lcom/vkontakte/android/fragments/ProfileFragment;->access$2000(Lcom/vkontakte/android/fragments/ProfileFragment;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    iget-object v3, p0, Lcom/vkontakte/android/fragments/ProfileFragment$ProfileImagesAdapter;->this$0:Lcom/vkontakte/android/fragments/ProfileFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ProfileFragment;->access$2000(Lcom/vkontakte/android/fragments/ProfileFragment;)Ljava/util/ArrayList;

    move-result-object v3

    add-int/lit8 v4, p1, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vkontakte/android/fragments/ProfileFragment$InfoItem;

    iget v3, v3, Lcom/vkontakte/android/fragments/ProfileFragment$InfoItem;->type:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    .line 1926
    const/4 v1, 0x0

    .line 1927
    .local v1, "rv":Landroid/view/View;
    iget-object v3, p0, Lcom/vkontakte/android/fragments/ProfileFragment$ProfileImagesAdapter;->this$0:Lcom/vkontakte/android/fragments/ProfileFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ProfileFragment;->access$3400(Lcom/vkontakte/android/fragments/ProfileFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 1928
    .local v2, "v":Landroid/view/View;
    iget-object v3, p0, Lcom/vkontakte/android/fragments/ProfileFragment$ProfileImagesAdapter;->this$0:Lcom/vkontakte/android/fragments/ProfileFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ProfileFragment;->access$2000(Lcom/vkontakte/android/fragments/ProfileFragment;)Ljava/util/ArrayList;

    move-result-object v3

    add-int/lit8 v4, p1, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vkontakte/android/fragments/ProfileFragment$InfoItem;

    iget-object v3, v3, Lcom/vkontakte/android/fragments/ProfileFragment$InfoItem;->tag:Ljava/lang/String;

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1929
    move-object v1, v2

    .line 1933
    .end local v2    # "v":Landroid/view/View;
    :cond_2
    if-nez v1, :cond_4

    .line 1944
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "rv":Landroid/view/View;
    :cond_3
    :goto_0
    return-void

    .line 1934
    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v1    # "rv":Landroid/view/View;
    :cond_4
    move-object v2, v1

    .line 1935
    .restart local v2    # "v":Landroid/view/View;
    iget-object v3, p0, Lcom/vkontakte/android/fragments/ProfileFragment$ProfileImagesAdapter;->this$0:Lcom/vkontakte/android/fragments/ProfileFragment;

    invoke-virtual {v3}, Lcom/vkontakte/android/fragments/ProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    new-instance v4, Lcom/vkontakte/android/fragments/ProfileFragment$ProfileImagesAdapter$2;

    invoke-direct {v4, p0, v2, p3}, Lcom/vkontakte/android/fragments/ProfileFragment$ProfileImagesAdapter$2;-><init>(Lcom/vkontakte/android/fragments/ProfileFragment$ProfileImagesAdapter;Landroid/view/View;Landroid/graphics/Bitmap;)V

    invoke-virtual {v3, v4}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
