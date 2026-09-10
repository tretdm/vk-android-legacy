.class Lcom/vkontakte/android/fragments/BoardTopicViewFragment$CommentPhotosAdapter$1;
.super Ljava/lang/Object;
.source "BoardTopicViewFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/BoardTopicViewFragment$CommentPhotosAdapter;->imageLoaded(IILandroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/fragments/BoardTopicViewFragment$CommentPhotosAdapter;

.field final synthetic val$bitmap:Landroid/graphics/Bitmap;

.field final synthetic val$image:I

.field final synthetic val$item:I


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/BoardTopicViewFragment$CommentPhotosAdapter;IILandroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 597
    iput-object p1, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$CommentPhotosAdapter$1;->this$1:Lcom/vkontakte/android/fragments/BoardTopicViewFragment$CommentPhotosAdapter;

    iput p2, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$CommentPhotosAdapter$1;->val$item:I

    iput p3, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$CommentPhotosAdapter$1;->val$image:I

    iput-object p4, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$CommentPhotosAdapter$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 598
    iget-object v5, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$CommentPhotosAdapter$1;->this$1:Lcom/vkontakte/android/fragments/BoardTopicViewFragment$CommentPhotosAdapter;

    iget-object v5, v5, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$CommentPhotosAdapter;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    invoke-static {v5}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->access$3100(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 599
    .local v4, "view":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget v6, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$CommentPhotosAdapter$1;->val$item:I

    if-ne v5, v6, :cond_0

    .line 601
    :try_start_0
    iget v5, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$CommentPhotosAdapter$1;->val$image:I

    if-nez v5, :cond_2

    .line 602
    const v5, 0x7f0801bf

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$CommentPhotosAdapter$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 620
    .end local v4    # "view":Landroid/view/View;
    :cond_1
    :goto_0
    return-void

    .line 605
    .restart local v4    # "view":Landroid/view/View;
    :cond_2
    const/4 v2, 0x0

    .local v2, "imgindex":I
    const/4 v3, 0x0

    .line 606
    .local v3, "index":I
    iget-object v5, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$CommentPhotosAdapter$1;->this$1:Lcom/vkontakte/android/fragments/BoardTopicViewFragment$CommentPhotosAdapter;

    iget-object v5, v5, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$CommentPhotosAdapter;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    invoke-static {v5}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->access$700(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;)Ljava/util/ArrayList;

    move-result-object v5

    iget v6, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$CommentPhotosAdapter$1;->val$item:I

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vkontakte/android/api/BoardComment;

    iget-object v5, v5, Lcom/vkontakte/android/api/BoardComment;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/Attachment;

    .line 607
    .local v0, "att":Lcom/vkontakte/android/Attachment;
    instance-of v5, v0, Lcom/vkontakte/android/ImageAttachment;

    if-eqz v5, :cond_3

    .line 608
    add-int/lit8 v2, v2, 0x1

    .line 609
    iget v5, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$CommentPhotosAdapter$1;->val$image:I

    if-ne v2, v5, :cond_3

    .line 610
    check-cast v0, Lcom/vkontakte/android/ImageAttachment;

    .end local v0    # "att":Lcom/vkontakte/android/Attachment;
    const v5, 0x7f080085

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    invoke-virtual {v5, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    iget-object v6, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$CommentPhotosAdapter$1;->val$bitmap:Landroid/graphics/Bitmap;

    const/4 v7, 0x0

    invoke-interface {v0, v5, v6, v7}, Lcom/vkontakte/android/ImageAttachment;->setImage(Landroid/view/View;Landroid/graphics/Bitmap;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 616
    .end local v2    # "imgindex":I
    .end local v3    # "index":I
    :catch_0
    move-exception v5

    goto :goto_0

    .line 614
    .restart local v0    # "att":Lcom/vkontakte/android/Attachment;
    .restart local v2    # "imgindex":I
    .restart local v3    # "index":I
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method
