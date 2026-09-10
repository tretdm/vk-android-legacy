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

.field private final synthetic val$bitmap:Landroid/graphics/Bitmap;

.field private final synthetic val$image:I

.field private final synthetic val$item:I


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/BoardTopicViewFragment$CommentPhotosAdapter;IILandroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$CommentPhotosAdapter$1;->this$1:Lcom/vkontakte/android/fragments/BoardTopicViewFragment$CommentPhotosAdapter;

    iput p2, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$CommentPhotosAdapter$1;->val$item:I

    iput p3, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$CommentPhotosAdapter$1;->val$image:I

    iput-object p4, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$CommentPhotosAdapter$1;->val$bitmap:Landroid/graphics/Bitmap;

    .line 591
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 592
    iget-object v4, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$CommentPhotosAdapter$1;->this$1:Lcom/vkontakte/android/fragments/BoardTopicViewFragment$CommentPhotosAdapter;

    invoke-static {v4}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$CommentPhotosAdapter;->access$1(Lcom/vkontakte/android/fragments/BoardTopicViewFragment$CommentPhotosAdapter;)Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    move-result-object v4

    invoke-static {v4}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->access$1(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_2

    .line 614
    :cond_1
    :goto_0
    return-void

    .line 592
    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 593
    .local v3, "view":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget v6, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$CommentPhotosAdapter$1;->val$item:I

    if-ne v4, v6, :cond_0

    .line 595
    :try_start_0
    iget v4, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$CommentPhotosAdapter$1;->val$image:I

    if-nez v4, :cond_3

    .line 596
    const v4, 0x7f0901df

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$CommentPhotosAdapter$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 610
    :catch_0
    move-exception v4

    goto :goto_0

    .line 599
    :cond_3
    const/4 v1, 0x0

    .local v1, "imgindex":I
    const/4 v2, 0x0

    .line 600
    .local v2, "index":I
    iget-object v4, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$CommentPhotosAdapter$1;->this$1:Lcom/vkontakte/android/fragments/BoardTopicViewFragment$CommentPhotosAdapter;

    invoke-static {v4}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$CommentPhotosAdapter;->access$1(Lcom/vkontakte/android/fragments/BoardTopicViewFragment$CommentPhotosAdapter;)Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    move-result-object v4

    invoke-static {v4}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->access$0(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;)Ljava/util/ArrayList;

    move-result-object v4

    iget v5, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$CommentPhotosAdapter$1;->val$item:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vkontakte/android/api/BoardComment;

    iget-object v4, v4, Lcom/vkontakte/android/api/BoardComment;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/Attachment;

    .line 601
    .local v0, "att":Lcom/vkontakte/android/Attachment;
    instance-of v5, v0, Lcom/vkontakte/android/ImageAttachment;

    if-eqz v5, :cond_4

    .line 602
    add-int/lit8 v1, v1, 0x1

    .line 603
    iget v5, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$CommentPhotosAdapter$1;->val$image:I

    if-ne v1, v5, :cond_4

    .line 604
    check-cast v0, Lcom/vkontakte/android/ImageAttachment;

    .end local v0    # "att":Lcom/vkontakte/android/Attachment;
    const v4, 0x7f09009a

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$CommentPhotosAdapter$1;->val$bitmap:Landroid/graphics/Bitmap;

    const/4 v6, 0x0

    invoke-interface {v0, v4, v5, v6}, Lcom/vkontakte/android/ImageAttachment;->setImage(Landroid/view/View;Landroid/graphics/Bitmap;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 608
    .restart local v0    # "att":Lcom/vkontakte/android/Attachment;
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method
