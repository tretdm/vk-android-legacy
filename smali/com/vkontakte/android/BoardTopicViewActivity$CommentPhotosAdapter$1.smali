.class Lcom/vkontakte/android/BoardTopicViewActivity$CommentPhotosAdapter$1;
.super Ljava/lang/Object;
.source "BoardTopicViewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/BoardTopicViewActivity$CommentPhotosAdapter;->imageLoaded(IILandroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/BoardTopicViewActivity$CommentPhotosAdapter;

.field private final synthetic val$bitmap:Landroid/graphics/Bitmap;

.field private final synthetic val$image:I

.field private final synthetic val$item:I


# direct methods
.method constructor <init>(Lcom/vkontakte/android/BoardTopicViewActivity$CommentPhotosAdapter;IILandroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/BoardTopicViewActivity$CommentPhotosAdapter$1;->this$1:Lcom/vkontakte/android/BoardTopicViewActivity$CommentPhotosAdapter;

    iput p2, p0, Lcom/vkontakte/android/BoardTopicViewActivity$CommentPhotosAdapter$1;->val$item:I

    iput p3, p0, Lcom/vkontakte/android/BoardTopicViewActivity$CommentPhotosAdapter$1;->val$image:I

    iput-object p4, p0, Lcom/vkontakte/android/BoardTopicViewActivity$CommentPhotosAdapter$1;->val$bitmap:Landroid/graphics/Bitmap;

    .line 500
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 501
    iget-object v4, p0, Lcom/vkontakte/android/BoardTopicViewActivity$CommentPhotosAdapter$1;->this$1:Lcom/vkontakte/android/BoardTopicViewActivity$CommentPhotosAdapter;

    invoke-static {v4}, Lcom/vkontakte/android/BoardTopicViewActivity$CommentPhotosAdapter;->access$1(Lcom/vkontakte/android/BoardTopicViewActivity$CommentPhotosAdapter;)Lcom/vkontakte/android/BoardTopicViewActivity;

    move-result-object v4

    invoke-static {v4}, Lcom/vkontakte/android/BoardTopicViewActivity;->access$1(Lcom/vkontakte/android/BoardTopicViewActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_2

    .line 532
    :cond_1
    :goto_0
    return-void

    .line 501
    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 502
    .local v3, "view":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget v6, p0, Lcom/vkontakte/android/BoardTopicViewActivity$CommentPhotosAdapter$1;->val$item:I

    if-ne v4, v6, :cond_0

    .line 504
    :try_start_0
    iget v4, p0, Lcom/vkontakte/android/BoardTopicViewActivity$CommentPhotosAdapter$1;->val$image:I

    if-nez v4, :cond_3

    .line 505
    const v4, 0x7f060039

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/vkontakte/android/BoardTopicViewActivity$CommentPhotosAdapter$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 528
    :catch_0
    move-exception v4

    goto :goto_0

    .line 508
    :cond_3
    const/4 v1, 0x0

    .local v1, "imgindex":I
    const/4 v2, 0x0

    .line 509
    .local v2, "index":I
    iget-object v4, p0, Lcom/vkontakte/android/BoardTopicViewActivity$CommentPhotosAdapter$1;->this$1:Lcom/vkontakte/android/BoardTopicViewActivity$CommentPhotosAdapter;

    invoke-static {v4}, Lcom/vkontakte/android/BoardTopicViewActivity$CommentPhotosAdapter;->access$1(Lcom/vkontakte/android/BoardTopicViewActivity$CommentPhotosAdapter;)Lcom/vkontakte/android/BoardTopicViewActivity;

    move-result-object v4

    invoke-static {v4}, Lcom/vkontakte/android/BoardTopicViewActivity;->access$0(Lcom/vkontakte/android/BoardTopicViewActivity;)Ljava/util/ArrayList;

    move-result-object v4

    iget v5, p0, Lcom/vkontakte/android/BoardTopicViewActivity$CommentPhotosAdapter$1;->val$item:I

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

    .line 510
    .local v0, "att":Lcom/vkontakte/android/Attachment;
    instance-of v5, v0, Lcom/vkontakte/android/PhotoAttachment;

    if-eqz v5, :cond_4

    .line 511
    add-int/lit8 v1, v1, 0x1

    .line 512
    iget v5, p0, Lcom/vkontakte/android/BoardTopicViewActivity$CommentPhotosAdapter$1;->val$image:I

    if-ne v1, v5, :cond_4

    .line 513
    const v4, 0x7f06003c

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 514
    const v4, 0x7f06003c

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/vkontakte/android/BoardTopicViewActivity$CommentPhotosAdapter$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_0

    .line 518
    :cond_4
    instance-of v5, v0, Lcom/vkontakte/android/VideoAttachment;

    if-eqz v5, :cond_5

    .line 519
    add-int/lit8 v1, v1, 0x1

    .line 520
    iget v5, p0, Lcom/vkontakte/android/BoardTopicViewActivity$CommentPhotosAdapter$1;->val$image:I

    if-ne v1, v5, :cond_5

    .line 521
    const v4, 0x7f06003c

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 522
    const v4, 0x7f06003c

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/vkontakte/android/VideoAttachView;

    iget-object v5, p0, Lcom/vkontakte/android/BoardTopicViewActivity$CommentPhotosAdapter$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v5}, Lcom/vkontakte/android/VideoAttachView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 526
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method
