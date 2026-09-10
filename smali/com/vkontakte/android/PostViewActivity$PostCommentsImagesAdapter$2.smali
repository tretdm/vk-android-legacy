.class Lcom/vkontakte/android/PostViewActivity$PostCommentsImagesAdapter$2;
.super Ljava/lang/Object;
.source "PostViewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/PostViewActivity$PostCommentsImagesAdapter;->imageLoaded(IILandroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/PostViewActivity$PostCommentsImagesAdapter;

.field private final synthetic val$bitmap:Landroid/graphics/Bitmap;

.field private final synthetic val$image:I

.field private final synthetic val$item:I


# direct methods
.method constructor <init>(Lcom/vkontakte/android/PostViewActivity$PostCommentsImagesAdapter;IILandroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/PostViewActivity$PostCommentsImagesAdapter$2;->this$1:Lcom/vkontakte/android/PostViewActivity$PostCommentsImagesAdapter;

    iput p2, p0, Lcom/vkontakte/android/PostViewActivity$PostCommentsImagesAdapter$2;->val$item:I

    iput p3, p0, Lcom/vkontakte/android/PostViewActivity$PostCommentsImagesAdapter$2;->val$image:I

    iput-object p4, p0, Lcom/vkontakte/android/PostViewActivity$PostCommentsImagesAdapter$2;->val$bitmap:Landroid/graphics/Bitmap;

    .line 1352
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 1353
    iget-object v6, p0, Lcom/vkontakte/android/PostViewActivity$PostCommentsImagesAdapter$2;->this$1:Lcom/vkontakte/android/PostViewActivity$PostCommentsImagesAdapter;

    invoke-static {v6}, Lcom/vkontakte/android/PostViewActivity$PostCommentsImagesAdapter;->access$1(Lcom/vkontakte/android/PostViewActivity$PostCommentsImagesAdapter;)Lcom/vkontakte/android/PostViewActivity;

    move-result-object v6

    invoke-static {v6}, Lcom/vkontakte/android/PostViewActivity;->access$9(Lcom/vkontakte/android/PostViewActivity;)Lcom/vkontakte/android/ui/RefreshableListView;

    move-result-object v6

    iget v7, p0, Lcom/vkontakte/android/PostViewActivity$PostCommentsImagesAdapter$2;->val$item:I

    iget-object v8, p0, Lcom/vkontakte/android/PostViewActivity$PostCommentsImagesAdapter$2;->this$1:Lcom/vkontakte/android/PostViewActivity$PostCommentsImagesAdapter;

    invoke-static {v8}, Lcom/vkontakte/android/PostViewActivity$PostCommentsImagesAdapter;->access$1(Lcom/vkontakte/android/PostViewActivity$PostCommentsImagesAdapter;)Lcom/vkontakte/android/PostViewActivity;

    move-result-object v8

    invoke-static {v8}, Lcom/vkontakte/android/PostViewActivity;->access$9(Lcom/vkontakte/android/PostViewActivity;)Lcom/vkontakte/android/ui/RefreshableListView;

    move-result-object v8

    invoke-virtual {v8}, Lcom/vkontakte/android/ui/RefreshableListView;->getFirstVisiblePosition()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {v6, v7}, Lcom/vkontakte/android/ui/RefreshableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1355
    .local v4, "view":Landroid/view/View;
    :try_start_0
    iget v6, p0, Lcom/vkontakte/android/PostViewActivity$PostCommentsImagesAdapter$2;->val$image:I

    if-nez v6, :cond_1

    .line 1356
    const v6, 0x7f060154

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/vkontakte/android/PostViewActivity$PostCommentsImagesAdapter$2;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1389
    :cond_0
    :goto_0
    return-void

    .line 1359
    :cond_1
    const/4 v2, 0x0

    .local v2, "imgindex":I
    const/4 v3, 0x0

    .line 1360
    .local v3, "index":I
    iget-object v6, p0, Lcom/vkontakte/android/PostViewActivity$PostCommentsImagesAdapter$2;->this$1:Lcom/vkontakte/android/PostViewActivity$PostCommentsImagesAdapter;

    invoke-static {v6}, Lcom/vkontakte/android/PostViewActivity$PostCommentsImagesAdapter;->access$1(Lcom/vkontakte/android/PostViewActivity$PostCommentsImagesAdapter;)Lcom/vkontakte/android/PostViewActivity;

    move-result-object v6

    invoke-static {v6}, Lcom/vkontakte/android/PostViewActivity;->access$3(Lcom/vkontakte/android/PostViewActivity;)Ljava/util/Vector;

    move-result-object v6

    iget v7, p0, Lcom/vkontakte/android/PostViewActivity$PostCommentsImagesAdapter$2;->val$item:I

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v6, v7}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vkontakte/android/NewsComment;

    iget-object v6, v6, Lcom/vkontakte/android/NewsComment;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/Attachment;

    .line 1361
    .local v1, "att":Lcom/vkontakte/android/Attachment;
    instance-of v6, v1, Lcom/vkontakte/android/PhotoAttachment;

    if-eqz v6, :cond_2

    .line 1362
    add-int/lit8 v2, v2, 0x1

    .line 1363
    iget v6, p0, Lcom/vkontakte/android/PostViewActivity$PostCommentsImagesAdapter$2;->val$image:I

    if-ne v2, v6, :cond_2

    .line 1364
    const v6, 0x7f06003c

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    invoke-virtual {v6, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1365
    const v6, 0x7f06003c

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    invoke-virtual {v6, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/vkontakte/android/PostViewActivity$PostCommentsImagesAdapter$2;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1366
    const v6, 0x7f06003c

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    invoke-virtual {v6, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/vkontakte/android/PhotoAttachment$FixedSizeImageView;

    invoke-virtual {v6}, Lcom/vkontakte/android/PhotoAttachment$FixedSizeImageView;->animateAlpha()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1388
    .end local v1    # "att":Lcom/vkontakte/android/Attachment;
    .end local v2    # "imgindex":I
    .end local v3    # "index":I
    :catch_0
    move-exception v5

    .local v5, "x":Ljava/lang/Exception;
    const-string v6, "vk"

    invoke-static {v6, v5}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1370
    .end local v5    # "x":Ljava/lang/Exception;
    .restart local v1    # "att":Lcom/vkontakte/android/Attachment;
    .restart local v2    # "imgindex":I
    .restart local v3    # "index":I
    :cond_2
    :try_start_1
    instance-of v6, v1, Lcom/vkontakte/android/VideoAttachment;

    if-eqz v6, :cond_3

    .line 1371
    add-int/lit8 v2, v2, 0x1

    .line 1372
    iget v6, p0, Lcom/vkontakte/android/PostViewActivity$PostCommentsImagesAdapter$2;->val$image:I

    if-ne v2, v6, :cond_3

    .line 1373
    const v6, 0x7f06003c

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    invoke-virtual {v6, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1374
    const v6, 0x7f06003c

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    invoke-virtual {v6, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/vkontakte/android/VideoAttachView;

    iget-object v7, p0, Lcom/vkontakte/android/PostViewActivity$PostCommentsImagesAdapter$2;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6, v7}, Lcom/vkontakte/android/VideoAttachView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_0

    .line 1378
    :cond_3
    instance-of v6, v1, Lcom/vkontakte/android/DocumentAttachment;

    if-eqz v6, :cond_4

    move-object v0, v1

    check-cast v0, Lcom/vkontakte/android/DocumentAttachment;

    move-object v6, v0

    iget-object v6, v6, Lcom/vkontakte/android/DocumentAttachment;->thumb:Ljava/lang/String;

    if-eqz v6, :cond_4

    check-cast v1, Lcom/vkontakte/android/DocumentAttachment;

    .end local v1    # "att":Lcom/vkontakte/android/Attachment;
    iget-object v6, v1, Lcom/vkontakte/android/DocumentAttachment;->thumb:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_4

    .line 1379
    add-int/lit8 v2, v2, 0x1

    .line 1380
    iget v6, p0, Lcom/vkontakte/android/PostViewActivity$PostCommentsImagesAdapter$2;->val$image:I

    if-ne v2, v6, :cond_4

    .line 1381
    iget-object v6, p0, Lcom/vkontakte/android/PostViewActivity$PostCommentsImagesAdapter$2;->this$1:Lcom/vkontakte/android/PostViewActivity$PostCommentsImagesAdapter;

    invoke-static {v6}, Lcom/vkontakte/android/PostViewActivity$PostCommentsImagesAdapter;->access$1(Lcom/vkontakte/android/PostViewActivity$PostCommentsImagesAdapter;)Lcom/vkontakte/android/PostViewActivity;

    move-result-object v6

    invoke-static {v6}, Lcom/vkontakte/android/PostViewActivity;->access$7(Lcom/vkontakte/android/PostViewActivity;)Landroid/view/View;

    move-result-object v6

    const v7, 0x7f0600fb

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    invoke-virtual {v6, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1382
    const v6, 0x7f06003c

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    invoke-virtual {v6, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    const v7, 0x7f06000a

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/vkontakte/android/PostViewActivity$PostCommentsImagesAdapter$2;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 1386
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1
.end method
