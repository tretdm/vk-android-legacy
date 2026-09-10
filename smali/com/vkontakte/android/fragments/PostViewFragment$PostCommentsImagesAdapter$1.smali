.class Lcom/vkontakte/android/fragments/PostViewFragment$PostCommentsImagesAdapter$1;
.super Ljava/lang/Object;
.source "PostViewFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/PostViewFragment$PostCommentsImagesAdapter;->imageLoaded(IILandroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/fragments/PostViewFragment$PostCommentsImagesAdapter;

.field final synthetic val$_image:I

.field final synthetic val$bitmap:Landroid/graphics/Bitmap;

.field final synthetic val$item:I


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/PostViewFragment$PostCommentsImagesAdapter;IILandroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 1747
    iput-object p1, p0, Lcom/vkontakte/android/fragments/PostViewFragment$PostCommentsImagesAdapter$1;->this$1:Lcom/vkontakte/android/fragments/PostViewFragment$PostCommentsImagesAdapter;

    iput p2, p0, Lcom/vkontakte/android/fragments/PostViewFragment$PostCommentsImagesAdapter$1;->val$item:I

    iput p3, p0, Lcom/vkontakte/android/fragments/PostViewFragment$PostCommentsImagesAdapter$1;->val$_image:I

    iput-object p4, p0, Lcom/vkontakte/android/fragments/PostViewFragment$PostCommentsImagesAdapter$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 1748
    iget-object v7, p0, Lcom/vkontakte/android/fragments/PostViewFragment$PostCommentsImagesAdapter$1;->this$1:Lcom/vkontakte/android/fragments/PostViewFragment$PostCommentsImagesAdapter;

    iget-object v7, v7, Lcom/vkontakte/android/fragments/PostViewFragment$PostCommentsImagesAdapter;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v7}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$1500(Lcom/vkontakte/android/fragments/PostViewFragment;)Landroid/widget/ListView;

    move-result-object v7

    iget v8, p0, Lcom/vkontakte/android/fragments/PostViewFragment$PostCommentsImagesAdapter$1;->val$item:I

    iget-object v9, p0, Lcom/vkontakte/android/fragments/PostViewFragment$PostCommentsImagesAdapter$1;->this$1:Lcom/vkontakte/android/fragments/PostViewFragment$PostCommentsImagesAdapter;

    iget-object v9, v9, Lcom/vkontakte/android/fragments/PostViewFragment$PostCommentsImagesAdapter;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v9}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$1500(Lcom/vkontakte/android/fragments/PostViewFragment;)Landroid/widget/ListView;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v9

    sub-int/2addr v8, v9

    invoke-virtual {v7, v8}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1749
    .local v5, "view":Landroid/view/View;
    iget v2, p0, Lcom/vkontakte/android/fragments/PostViewFragment$PostCommentsImagesAdapter$1;->val$_image:I

    .line 1751
    .local v2, "image":I
    if-nez v2, :cond_1

    .line 1752
    const v7, 0x7f0801bf

    :try_start_0
    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iget-object v8, p0, Lcom/vkontakte/android/fragments/PostViewFragment$PostCommentsImagesAdapter$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1767
    :cond_0
    :goto_0
    return-void

    .line 1755
    :cond_1
    const/4 v3, 0x0

    .local v3, "imgindex":I
    const/4 v4, 0x0

    .line 1756
    .local v4, "index":I
    iget-object v7, p0, Lcom/vkontakte/android/fragments/PostViewFragment$PostCommentsImagesAdapter$1;->this$1:Lcom/vkontakte/android/fragments/PostViewFragment$PostCommentsImagesAdapter;

    iget-object v7, v7, Lcom/vkontakte/android/fragments/PostViewFragment$PostCommentsImagesAdapter;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v7}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$3200(Lcom/vkontakte/android/fragments/PostViewFragment;)Ljava/util/ArrayList;

    move-result-object v7

    iget v8, p0, Lcom/vkontakte/android/fragments/PostViewFragment$PostCommentsImagesAdapter$1;->val$item:I

    iget-object v9, p0, Lcom/vkontakte/android/fragments/PostViewFragment$PostCommentsImagesAdapter$1;->this$1:Lcom/vkontakte/android/fragments/PostViewFragment$PostCommentsImagesAdapter;

    iget-object v9, v9, Lcom/vkontakte/android/fragments/PostViewFragment$PostCommentsImagesAdapter;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v9}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$4200(Lcom/vkontakte/android/fragments/PostViewFragment;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    sub-int/2addr v8, v9

    iget-object v9, p0, Lcom/vkontakte/android/fragments/PostViewFragment$PostCommentsImagesAdapter$1;->this$1:Lcom/vkontakte/android/fragments/PostViewFragment$PostCommentsImagesAdapter;

    iget-object v9, v9, Lcom/vkontakte/android/fragments/PostViewFragment$PostCommentsImagesAdapter;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v9}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$4500(Lcom/vkontakte/android/fragments/PostViewFragment;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    sub-int/2addr v8, v9

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/vkontakte/android/NewsComment;

    iget-object v7, v7, Lcom/vkontakte/android/NewsComment;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/Attachment;

    .line 1757
    .local v0, "att":Lcom/vkontakte/android/Attachment;
    instance-of v7, v0, Lcom/vkontakte/android/ImageAttachment;

    if-eqz v7, :cond_2

    .line 1758
    add-int/lit8 v3, v3, 0x1

    .line 1759
    if-ne v3, v2, :cond_2

    .line 1760
    check-cast v0, Lcom/vkontakte/android/ImageAttachment;

    .end local v0    # "att":Lcom/vkontakte/android/Attachment;
    const v7, 0x7f080085

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    invoke-virtual {v7, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    iget-object v8, p0, Lcom/vkontakte/android/fragments/PostViewFragment$PostCommentsImagesAdapter$1;->val$bitmap:Landroid/graphics/Bitmap;

    const/4 v9, 0x0

    invoke-interface {v0, v7, v8, v9}, Lcom/vkontakte/android/ImageAttachment;->setImage(Landroid/view/View;Landroid/graphics/Bitmap;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1766
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "imgindex":I
    .end local v4    # "index":I
    :catch_0
    move-exception v6

    .local v6, "x":Ljava/lang/Exception;
    const-string v7, "vk"

    invoke-static {v7, v6}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1764
    .end local v6    # "x":Ljava/lang/Exception;
    .restart local v0    # "att":Lcom/vkontakte/android/Attachment;
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v3    # "imgindex":I
    .restart local v4    # "index":I
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method
