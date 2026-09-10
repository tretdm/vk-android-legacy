.class Lcom/vkontakte/android/fragments/BoardTopicViewFragment$CommentPhotosAdapter;
.super Lcom/vkontakte/android/ui/ListImageLoaderAdapter;
.source "BoardTopicViewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/fragments/BoardTopicViewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CommentPhotosAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;


# direct methods
.method private constructor <init>(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;)V
    .locals 0

    .prologue
    .line 555
    iput-object p1, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$CommentPhotosAdapter;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    invoke-direct {p0}, Lcom/vkontakte/android/ui/ListImageLoaderAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;Lcom/vkontakte/android/fragments/BoardTopicViewFragment$CommentPhotosAdapter;)V
    .locals 0

    .prologue
    .line 555
    invoke-direct {p0, p1}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$CommentPhotosAdapter;-><init>(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;)V

    return-void
.end method

.method static synthetic access$1(Lcom/vkontakte/android/fragments/BoardTopicViewFragment$CommentPhotosAdapter;)Lcom/vkontakte/android/fragments/BoardTopicViewFragment;
    .locals 1

    .prologue
    .line 555
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$CommentPhotosAdapter;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    return-object v0
.end method


# virtual methods
.method public getImageCountForItem(I)I
    .locals 4
    .param p1, "item"    # I

    .prologue
    .line 563
    const/4 v1, 0x1

    .line 564
    .local v1, "count":I
    iget-object v2, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$CommentPhotosAdapter;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->access$0(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/api/BoardComment;

    iget-object v2, v2, Lcom/vkontakte/android/api/BoardComment;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 566
    return v1

    .line 564
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/Attachment;

    .line 565
    .local v0, "att":Lcom/vkontakte/android/Attachment;
    instance-of v3, v0, Lcom/vkontakte/android/ImageAttachment;

    if-eqz v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getImageURL(II)Ljava/lang/String;
    .locals 4
    .param p1, "item"    # I
    .param p2, "image"    # I

    .prologue
    .line 572
    packed-switch p2, :pswitch_data_0

    .line 576
    const/4 v1, 0x0

    .line 577
    .local v1, "imgindex":I
    :try_start_0
    iget-object v2, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$CommentPhotosAdapter;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->access$0(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/api/BoardComment;

    iget-object v2, v2, Lcom/vkontakte/android/api/BoardComment;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 586
    .end local v1    # "imgindex":I
    :goto_0
    const/4 v2, 0x0

    :goto_1
    return-object v2

    .line 574
    :pswitch_0
    iget-object v2, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$CommentPhotosAdapter;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->access$0(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/api/BoardComment;

    iget-object v2, v2, Lcom/vkontakte/android/api/BoardComment;->userPhoto:Ljava/lang/String;

    goto :goto_1

    .line 577
    .restart local v1    # "imgindex":I
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/Attachment;

    .line 578
    .local v0, "att":Lcom/vkontakte/android/Attachment;
    instance-of v3, v0, Lcom/vkontakte/android/ImageAttachment;

    if-eqz v3, :cond_0

    .line 579
    add-int/lit8 v1, v1, 0x1

    .line 580
    if-ne v1, p2, :cond_0

    .line 581
    check-cast v0, Lcom/vkontakte/android/ImageAttachment;

    .end local v0    # "att":Lcom/vkontakte/android/Attachment;
    invoke-interface {v0}, Lcom/vkontakte/android/ImageAttachment;->getImageURL()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_1

    .line 585
    .end local v1    # "imgindex":I
    :catch_0
    move-exception v2

    goto :goto_0

    .line 572
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 558
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$CommentPhotosAdapter;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->access$0(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public imageLoaded(IILandroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "item"    # I
    .param p2, "image"    # I
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 591
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$CommentPhotosAdapter;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->access$3(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;)Lcom/vkontakte/android/ui/RefreshableListView;

    move-result-object v0

    new-instance v1, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$CommentPhotosAdapter$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$CommentPhotosAdapter$1;-><init>(Lcom/vkontakte/android/fragments/BoardTopicViewFragment$CommentPhotosAdapter;IILandroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/RefreshableListView;->post(Ljava/lang/Runnable;)Z

    .line 615
    return-void
.end method
