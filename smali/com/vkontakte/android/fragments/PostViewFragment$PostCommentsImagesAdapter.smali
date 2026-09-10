.class Lcom/vkontakte/android/fragments/PostViewFragment$PostCommentsImagesAdapter;
.super Lcom/vkontakte/android/ui/ListImageLoaderAdapter;
.source "PostViewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/fragments/PostViewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PostCommentsImagesAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/PostViewFragment;


# direct methods
.method private constructor <init>(Lcom/vkontakte/android/fragments/PostViewFragment;)V
    .locals 0

    .prologue
    .line 1883
    iput-object p1, p0, Lcom/vkontakte/android/fragments/PostViewFragment$PostCommentsImagesAdapter;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-direct {p0}, Lcom/vkontakte/android/ui/ListImageLoaderAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkontakte/android/fragments/PostViewFragment;Lcom/vkontakte/android/fragments/PostViewFragment$PostCommentsImagesAdapter;)V
    .locals 0

    .prologue
    .line 1883
    invoke-direct {p0, p1}, Lcom/vkontakte/android/fragments/PostViewFragment$PostCommentsImagesAdapter;-><init>(Lcom/vkontakte/android/fragments/PostViewFragment;)V

    return-void
.end method

.method static synthetic access$1(Lcom/vkontakte/android/fragments/PostViewFragment$PostCommentsImagesAdapter;)Lcom/vkontakte/android/fragments/PostViewFragment;
    .locals 1

    .prologue
    .line 1883
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment$PostCommentsImagesAdapter;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    return-object v0
.end method


# virtual methods
.method public getImageCountForItem(I)I
    .locals 5
    .param p1, "item"    # I

    .prologue
    .line 1891
    const/4 v1, 0x1

    .line 1892
    .local v1, "count":I
    if-nez p1, :cond_1

    .line 1893
    iget-object v3, p0, Lcom/vkontakte/android/fragments/PostViewFragment$PostCommentsImagesAdapter;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$0(Lcom/vkontakte/android/fragments/PostViewFragment;)Lcom/vkontakte/android/NewsEntry;

    move-result-object v3

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1894
    add-int/lit8 v1, v1, 0x1

    .line 1895
    :cond_0
    iget-object v3, p0, Lcom/vkontakte/android/fragments/PostViewFragment$PostCommentsImagesAdapter;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$0(Lcom/vkontakte/android/fragments/PostViewFragment;)Lcom/vkontakte/android/NewsEntry;

    move-result-object v3

    invoke-virtual {v3}, Lcom/vkontakte/android/NewsEntry;->getImageCount()I

    move-result v3

    add-int/2addr v1, v3

    .line 1896
    iget-object v3, p0, Lcom/vkontakte/android/fragments/PostViewFragment$PostCommentsImagesAdapter;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$6(Lcom/vkontakte/android/fragments/PostViewFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/16 v4, 0xa

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    add-int/2addr v1, v3

    move v2, v1

    .line 1903
    .end local v1    # "count":I
    .local v2, "count":I
    :goto_0
    return v2

    .line 1898
    .end local v2    # "count":I
    .restart local v1    # "count":I
    :cond_1
    add-int/lit8 p1, p1, -0x1

    .line 1899
    iget-object v3, p0, Lcom/vkontakte/android/fragments/PostViewFragment$PostCommentsImagesAdapter;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$3(Lcom/vkontakte/android/fragments/PostViewFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vkontakte/android/NewsComment;

    iget-object v3, v3, Lcom/vkontakte/android/NewsComment;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_3

    move v2, v1

    .line 1901
    .end local v1    # "count":I
    .restart local v2    # "count":I
    goto :goto_0

    .line 1899
    .end local v2    # "count":I
    .restart local v1    # "count":I
    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/Attachment;

    .line 1900
    .local v0, "att":Lcom/vkontakte/android/Attachment;
    instance-of v3, v0, Lcom/vkontakte/android/PhotoAttachment;

    if-nez v3, :cond_4

    instance-of v3, v0, Lcom/vkontakte/android/VideoAttachment;

    if-nez v3, :cond_4

    instance-of v3, v0, Lcom/vkontakte/android/DocumentAttachment;

    if-eqz v3, :cond_2

    move-object v3, v0

    check-cast v3, Lcom/vkontakte/android/DocumentAttachment;

    iget-object v3, v3, Lcom/vkontakte/android/DocumentAttachment;->thumb:Ljava/lang/String;

    if-eqz v3, :cond_2

    check-cast v0, Lcom/vkontakte/android/DocumentAttachment;

    .end local v0    # "att":Lcom/vkontakte/android/Attachment;
    iget-object v3, v0, Lcom/vkontakte/android/DocumentAttachment;->thumb:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public getImageURL(II)Ljava/lang/String;
    .locals 4
    .param p1, "item"    # I
    .param p2, "image"    # I

    .prologue
    const/16 v3, 0x20

    .line 1908
    if-nez p1, :cond_3

    .line 1909
    packed-switch p2, :pswitch_data_0

    .line 1915
    :cond_0
    iget-object v2, p0, Lcom/vkontakte/android/fragments/PostViewFragment$PostCommentsImagesAdapter;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$0(Lcom/vkontakte/android/fragments/PostViewFragment;)Lcom/vkontakte/android/NewsEntry;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v2

    if-eqz v2, :cond_1

    add-int/lit8 p2, p2, -0x1

    .line 1916
    :cond_1
    add-int/lit8 v2, p2, -0x1

    iget-object v3, p0, Lcom/vkontakte/android/fragments/PostViewFragment$PostCommentsImagesAdapter;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$0(Lcom/vkontakte/android/fragments/PostViewFragment;)Lcom/vkontakte/android/NewsEntry;

    move-result-object v3

    invoke-virtual {v3}, Lcom/vkontakte/android/NewsEntry;->getImageCount()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 1917
    iget-object v2, p0, Lcom/vkontakte/android/fragments/PostViewFragment$PostCommentsImagesAdapter;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$0(Lcom/vkontakte/android/fragments/PostViewFragment;)Lcom/vkontakte/android/NewsEntry;

    move-result-object v2

    add-int/lit8 v3, p2, -0x1

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/NewsEntry;->getImageAttachment(I)Lcom/vkontakte/android/ImageAttachment;

    move-result-object v2

    invoke-interface {v2}, Lcom/vkontakte/android/ImageAttachment;->getImageURL()Ljava/lang/String;

    move-result-object v2

    .line 1945
    :goto_0
    return-object v2

    .line 1911
    :pswitch_0
    iget-object v2, p0, Lcom/vkontakte/android/fragments/PostViewFragment$PostCommentsImagesAdapter;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$0(Lcom/vkontakte/android/fragments/PostViewFragment;)Lcom/vkontakte/android/NewsEntry;

    move-result-object v2

    iget-object v2, v2, Lcom/vkontakte/android/NewsEntry;->userPhotoURL:Ljava/lang/String;

    goto :goto_0

    .line 1913
    :pswitch_1
    iget-object v2, p0, Lcom/vkontakte/android/fragments/PostViewFragment$PostCommentsImagesAdapter;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$0(Lcom/vkontakte/android/fragments/PostViewFragment;)Lcom/vkontakte/android/NewsEntry;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/vkontakte/android/fragments/PostViewFragment$PostCommentsImagesAdapter;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$0(Lcom/vkontakte/android/fragments/PostViewFragment;)Lcom/vkontakte/android/NewsEntry;

    move-result-object v2

    iget-object v2, v2, Lcom/vkontakte/android/NewsEntry;->retweetUserPhoto:Ljava/lang/String;

    goto :goto_0

    .line 1918
    :cond_2
    iget-object v2, p0, Lcom/vkontakte/android/fragments/PostViewFragment$PostCommentsImagesAdapter;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$6(Lcom/vkontakte/android/fragments/PostViewFragment;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/vkontakte/android/fragments/PostViewFragment$PostCommentsImagesAdapter;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$0(Lcom/vkontakte/android/fragments/PostViewFragment;)Lcom/vkontakte/android/NewsEntry;

    move-result-object v3

    invoke-virtual {v3}, Lcom/vkontakte/android/NewsEntry;->getImageCount()I

    move-result v3

    sub-int v3, p2, v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_0

    .line 1920
    :cond_3
    add-int/lit8 p1, p1, -0x1

    .line 1921
    if-nez p2, :cond_4

    .line 1922
    iget-object v2, p0, Lcom/vkontakte/android/fragments/PostViewFragment$PostCommentsImagesAdapter;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$3(Lcom/vkontakte/android/fragments/PostViewFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/NewsComment;

    iget-object v2, v2, Lcom/vkontakte/android/NewsComment;->userPhoto:Ljava/lang/String;

    goto :goto_0

    .line 1923
    :cond_4
    const/4 v1, 0x0

    .line 1924
    .local v1, "imgindex":I
    iget-object v2, p0, Lcom/vkontakte/android/fragments/PostViewFragment$PostCommentsImagesAdapter;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$3(Lcom/vkontakte/android/fragments/PostViewFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/NewsComment;

    iget-object v2, v2, Lcom/vkontakte/android/NewsComment;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_6

    .line 1945
    const-string v2, ""

    goto :goto_0

    .line 1924
    :cond_6
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/Attachment;

    .line 1925
    .local v0, "att":Lcom/vkontakte/android/Attachment;
    instance-of v2, v0, Lcom/vkontakte/android/PhotoAttachment;

    if-eqz v2, :cond_7

    .line 1926
    add-int/lit8 v1, v1, 0x1

    .line 1927
    if-ne v1, p2, :cond_7

    .line 1928
    check-cast v0, Lcom/vkontakte/android/PhotoAttachment;

    .end local v0    # "att":Lcom/vkontakte/android/Attachment;
    invoke-virtual {v0}, Lcom/vkontakte/android/PhotoAttachment;->getThumbURL()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 1931
    .restart local v0    # "att":Lcom/vkontakte/android/Attachment;
    :cond_7
    instance-of v2, v0, Lcom/vkontakte/android/VideoAttachment;

    if-eqz v2, :cond_8

    .line 1932
    add-int/lit8 v1, v1, 0x1

    .line 1933
    if-ne v1, p2, :cond_8

    .line 1934
    check-cast v0, Lcom/vkontakte/android/VideoAttachment;

    .end local v0    # "att":Lcom/vkontakte/android/Attachment;
    iget-object v2, v0, Lcom/vkontakte/android/VideoAttachment;->image:Ljava/lang/String;

    goto/16 :goto_0

    .line 1937
    .restart local v0    # "att":Lcom/vkontakte/android/Attachment;
    :cond_8
    instance-of v2, v0, Lcom/vkontakte/android/DocumentAttachment;

    if-eqz v2, :cond_5

    move-object v2, v0

    check-cast v2, Lcom/vkontakte/android/DocumentAttachment;

    iget-object v2, v2, Lcom/vkontakte/android/DocumentAttachment;->thumb:Ljava/lang/String;

    if-eqz v2, :cond_5

    move-object v2, v0

    check-cast v2, Lcom/vkontakte/android/DocumentAttachment;

    iget-object v2, v2, Lcom/vkontakte/android/DocumentAttachment;->thumb:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_5

    .line 1938
    add-int/lit8 v1, v1, 0x1

    .line 1939
    if-ne v1, p2, :cond_5

    .line 1940
    check-cast v0, Lcom/vkontakte/android/DocumentAttachment;

    .end local v0    # "att":Lcom/vkontakte/android/Attachment;
    iget-object v2, v0, Lcom/vkontakte/android/DocumentAttachment;->thumb:Ljava/lang/String;

    goto/16 :goto_0

    .line 1909
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 1886
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment$PostCommentsImagesAdapter;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$3(Lcom/vkontakte/android/fragments/PostViewFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public imageLoaded(IILandroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "item"    # I
    .param p2, "_image"    # I
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 1950
    if-nez p1, :cond_1

    .line 1951
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment$PostCommentsImagesAdapter;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$7(Lcom/vkontakte/android/fragments/PostViewFragment;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/vkontakte/android/fragments/PostViewFragment$PostCommentsImagesAdapter$1;

    invoke-direct {v1, p0, p2, p3}, Lcom/vkontakte/android/fragments/PostViewFragment$PostCommentsImagesAdapter$1;-><init>(Lcom/vkontakte/android/fragments/PostViewFragment$PostCommentsImagesAdapter;ILandroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 2019
    :cond_0
    :goto_0
    return-void

    .line 1977
    :cond_1
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment$PostCommentsImagesAdapter;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$9(Lcom/vkontakte/android/fragments/PostViewFragment;)Lcom/vkontakte/android/ui/RefreshableListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/RefreshableListView;->getFirstVisiblePosition()I

    move-result v0

    if-lt p1, v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment$PostCommentsImagesAdapter;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$9(Lcom/vkontakte/android/fragments/PostViewFragment;)Lcom/vkontakte/android/ui/RefreshableListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/RefreshableListView;->getLastVisiblePosition()I

    move-result v0

    if-gt p1, v0, :cond_0

    .line 1978
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment$PostCommentsImagesAdapter;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$7(Lcom/vkontakte/android/fragments/PostViewFragment;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/vkontakte/android/fragments/PostViewFragment$PostCommentsImagesAdapter$2;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/vkontakte/android/fragments/PostViewFragment$PostCommentsImagesAdapter$2;-><init>(Lcom/vkontakte/android/fragments/PostViewFragment$PostCommentsImagesAdapter;IILandroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
