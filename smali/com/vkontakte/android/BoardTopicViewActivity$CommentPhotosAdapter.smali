.class Lcom/vkontakte/android/BoardTopicViewActivity$CommentPhotosAdapter;
.super Lcom/vkontakte/android/ui/ListImageLoaderAdapter;
.source "BoardTopicViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/BoardTopicViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CommentPhotosAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/BoardTopicViewActivity;


# direct methods
.method private constructor <init>(Lcom/vkontakte/android/BoardTopicViewActivity;)V
    .locals 0

    .prologue
    .line 458
    iput-object p1, p0, Lcom/vkontakte/android/BoardTopicViewActivity$CommentPhotosAdapter;->this$0:Lcom/vkontakte/android/BoardTopicViewActivity;

    invoke-direct {p0}, Lcom/vkontakte/android/ui/ListImageLoaderAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkontakte/android/BoardTopicViewActivity;Lcom/vkontakte/android/BoardTopicViewActivity$CommentPhotosAdapter;)V
    .locals 0

    .prologue
    .line 458
    invoke-direct {p0, p1}, Lcom/vkontakte/android/BoardTopicViewActivity$CommentPhotosAdapter;-><init>(Lcom/vkontakte/android/BoardTopicViewActivity;)V

    return-void
.end method

.method static synthetic access$1(Lcom/vkontakte/android/BoardTopicViewActivity$CommentPhotosAdapter;)Lcom/vkontakte/android/BoardTopicViewActivity;
    .locals 1

    .prologue
    .line 458
    iget-object v0, p0, Lcom/vkontakte/android/BoardTopicViewActivity$CommentPhotosAdapter;->this$0:Lcom/vkontakte/android/BoardTopicViewActivity;

    return-object v0
.end method


# virtual methods
.method public getImageCountForItem(I)I
    .locals 4
    .param p1, "item"    # I

    .prologue
    .line 466
    const/4 v1, 0x1

    .line 467
    .local v1, "count":I
    iget-object v2, p0, Lcom/vkontakte/android/BoardTopicViewActivity$CommentPhotosAdapter;->this$0:Lcom/vkontakte/android/BoardTopicViewActivity;

    invoke-static {v2}, Lcom/vkontakte/android/BoardTopicViewActivity;->access$0(Lcom/vkontakte/android/BoardTopicViewActivity;)Ljava/util/ArrayList;

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

    .line 469
    return v1

    .line 467
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/Attachment;

    .line 468
    .local v0, "att":Lcom/vkontakte/android/Attachment;
    instance-of v3, v0, Lcom/vkontakte/android/PhotoAttachment;

    if-nez v3, :cond_2

    instance-of v3, v0, Lcom/vkontakte/android/VideoAttachment;

    if-eqz v3, :cond_0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getImageURL(II)Ljava/lang/String;
    .locals 4
    .param p1, "item"    # I
    .param p2, "image"    # I

    .prologue
    .line 475
    packed-switch p2, :pswitch_data_0

    .line 479
    const/4 v1, 0x0

    .line 480
    .local v1, "imgindex":I
    :try_start_0
    iget-object v2, p0, Lcom/vkontakte/android/BoardTopicViewActivity$CommentPhotosAdapter;->this$0:Lcom/vkontakte/android/BoardTopicViewActivity;

    invoke-static {v2}, Lcom/vkontakte/android/BoardTopicViewActivity;->access$0(Lcom/vkontakte/android/BoardTopicViewActivity;)Ljava/util/ArrayList;

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

    .line 495
    .end local v1    # "imgindex":I
    :goto_0
    const/4 v2, 0x0

    :goto_1
    return-object v2

    .line 477
    :pswitch_0
    iget-object v2, p0, Lcom/vkontakte/android/BoardTopicViewActivity$CommentPhotosAdapter;->this$0:Lcom/vkontakte/android/BoardTopicViewActivity;

    invoke-static {v2}, Lcom/vkontakte/android/BoardTopicViewActivity;->access$0(Lcom/vkontakte/android/BoardTopicViewActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/api/BoardComment;

    iget-object v2, v2, Lcom/vkontakte/android/api/BoardComment;->userPhoto:Ljava/lang/String;

    goto :goto_1

    .line 480
    .restart local v1    # "imgindex":I
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/Attachment;

    .line 481
    .local v0, "att":Lcom/vkontakte/android/Attachment;
    instance-of v3, v0, Lcom/vkontakte/android/PhotoAttachment;

    if-eqz v3, :cond_2

    .line 482
    add-int/lit8 v1, v1, 0x1

    .line 483
    if-ne v1, p2, :cond_2

    .line 484
    check-cast v0, Lcom/vkontakte/android/PhotoAttachment;

    .end local v0    # "att":Lcom/vkontakte/android/Attachment;
    invoke-virtual {v0}, Lcom/vkontakte/android/PhotoAttachment;->getThumbURL()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 487
    .restart local v0    # "att":Lcom/vkontakte/android/Attachment;
    :cond_2
    instance-of v3, v0, Lcom/vkontakte/android/VideoAttachment;

    if-eqz v3, :cond_0

    .line 488
    add-int/lit8 v1, v1, 0x1

    .line 489
    if-ne v1, p2, :cond_0

    .line 490
    check-cast v0, Lcom/vkontakte/android/VideoAttachment;

    .end local v0    # "att":Lcom/vkontakte/android/Attachment;
    iget-object v2, v0, Lcom/vkontakte/android/VideoAttachment;->image:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 494
    .end local v1    # "imgindex":I
    :catch_0
    move-exception v2

    goto :goto_0

    .line 475
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 461
    iget-object v0, p0, Lcom/vkontakte/android/BoardTopicViewActivity$CommentPhotosAdapter;->this$0:Lcom/vkontakte/android/BoardTopicViewActivity;

    invoke-static {v0}, Lcom/vkontakte/android/BoardTopicViewActivity;->access$0(Lcom/vkontakte/android/BoardTopicViewActivity;)Ljava/util/ArrayList;

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
    .line 500
    iget-object v0, p0, Lcom/vkontakte/android/BoardTopicViewActivity$CommentPhotosAdapter;->this$0:Lcom/vkontakte/android/BoardTopicViewActivity;

    invoke-static {v0}, Lcom/vkontakte/android/BoardTopicViewActivity;->access$3(Lcom/vkontakte/android/BoardTopicViewActivity;)Lcom/vkontakte/android/ui/RefreshableListView;

    move-result-object v0

    new-instance v1, Lcom/vkontakte/android/BoardTopicViewActivity$CommentPhotosAdapter$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/vkontakte/android/BoardTopicViewActivity$CommentPhotosAdapter$1;-><init>(Lcom/vkontakte/android/BoardTopicViewActivity$CommentPhotosAdapter;IILandroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/RefreshableListView;->post(Ljava/lang/Runnable;)Z

    .line 533
    return-void
.end method
