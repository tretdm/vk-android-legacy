.class Lcom/vkontakte/android/fragments/PostViewFragment$PostCommentsImagesAdapter$2;
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

.field private final synthetic val$_image:I

.field private final synthetic val$bitmap:Landroid/graphics/Bitmap;

.field private final synthetic val$item:I


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/PostViewFragment$PostCommentsImagesAdapter;IILandroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/fragments/PostViewFragment$PostCommentsImagesAdapter$2;->this$1:Lcom/vkontakte/android/fragments/PostViewFragment$PostCommentsImagesAdapter;

    iput p2, p0, Lcom/vkontakte/android/fragments/PostViewFragment$PostCommentsImagesAdapter$2;->val$item:I

    iput p3, p0, Lcom/vkontakte/android/fragments/PostViewFragment$PostCommentsImagesAdapter$2;->val$_image:I

    iput-object p4, p0, Lcom/vkontakte/android/fragments/PostViewFragment$PostCommentsImagesAdapter$2;->val$bitmap:Landroid/graphics/Bitmap;

    .line 1978
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 1979
    iget-object v7, p0, Lcom/vkontakte/android/fragments/PostViewFragment$PostCommentsImagesAdapter$2;->this$1:Lcom/vkontakte/android/fragments/PostViewFragment$PostCommentsImagesAdapter;

    invoke-static {v7}, Lcom/vkontakte/android/fragments/PostViewFragment$PostCommentsImagesAdapter;->access$1(Lcom/vkontakte/android/fragments/PostViewFragment$PostCommentsImagesAdapter;)Lcom/vkontakte/android/fragments/PostViewFragment;

    move-result-object v7

    invoke-static {v7}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$9(Lcom/vkontakte/android/fragments/PostViewFragment;)Lcom/vkontakte/android/ui/RefreshableListView;

    move-result-object v7

    iget v8, p0, Lcom/vkontakte/android/fragments/PostViewFragment$PostCommentsImagesAdapter$2;->val$item:I

    iget-object v9, p0, Lcom/vkontakte/android/fragments/PostViewFragment$PostCommentsImagesAdapter$2;->this$1:Lcom/vkontakte/android/fragments/PostViewFragment$PostCommentsImagesAdapter;

    invoke-static {v9}, Lcom/vkontakte/android/fragments/PostViewFragment$PostCommentsImagesAdapter;->access$1(Lcom/vkontakte/android/fragments/PostViewFragment$PostCommentsImagesAdapter;)Lcom/vkontakte/android/fragments/PostViewFragment;

    move-result-object v9

    invoke-static {v9}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$9(Lcom/vkontakte/android/fragments/PostViewFragment;)Lcom/vkontakte/android/ui/RefreshableListView;

    move-result-object v9

    invoke-virtual {v9}, Lcom/vkontakte/android/ui/RefreshableListView;->getFirstVisiblePosition()I

    move-result v9

    sub-int/2addr v8, v9

    invoke-virtual {v7, v8}, Lcom/vkontakte/android/ui/RefreshableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1980
    .local v5, "view":Landroid/view/View;
    iget v2, p0, Lcom/vkontakte/android/fragments/PostViewFragment$PostCommentsImagesAdapter$2;->val$_image:I

    .line 1982
    .local v2, "image":I
    if-nez v2, :cond_1

    .line 1983
    const v7, 0x7f0901df

    :try_start_0
    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iget-object v8, p0, Lcom/vkontakte/android/fragments/PostViewFragment$PostCommentsImagesAdapter$2;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2016
    :cond_0
    :goto_0
    return-void

    .line 1986
    :cond_1
    const/4 v3, 0x0

    .local v3, "imgindex":I
    const/4 v4, 0x0

    .line 1987
    .local v4, "index":I
    iget-object v7, p0, Lcom/vkontakte/android/fragments/PostViewFragment$PostCommentsImagesAdapter$2;->this$1:Lcom/vkontakte/android/fragments/PostViewFragment$PostCommentsImagesAdapter;

    invoke-static {v7}, Lcom/vkontakte/android/fragments/PostViewFragment$PostCommentsImagesAdapter;->access$1(Lcom/vkontakte/android/fragments/PostViewFragment$PostCommentsImagesAdapter;)Lcom/vkontakte/android/fragments/PostViewFragment;

    move-result-object v7

    invoke-static {v7}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$3(Lcom/vkontakte/android/fragments/PostViewFragment;)Ljava/util/ArrayList;

    move-result-object v7

    iget v8, p0, Lcom/vkontakte/android/fragments/PostViewFragment$PostCommentsImagesAdapter$2;->val$item:I

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/vkontakte/android/NewsComment;

    iget-object v7, v7, Lcom/vkontakte/android/NewsComment;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/Attachment;

    .line 1988
    .local v1, "att":Lcom/vkontakte/android/Attachment;
    instance-of v7, v1, Lcom/vkontakte/android/PhotoAttachment;

    if-eqz v7, :cond_2

    .line 1989
    add-int/lit8 v3, v3, 0x1

    .line 1990
    if-ne v3, v2, :cond_2

    .line 1991
    const v7, 0x7f09009a

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    invoke-virtual {v7, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1992
    const v7, 0x7f09009a

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    invoke-virtual {v7, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iget-object v8, p0, Lcom/vkontakte/android/fragments/PostViewFragment$PostCommentsImagesAdapter$2;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1993
    const v7, 0x7f09009a

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    invoke-virtual {v7, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/vkontakte/android/PhotoAttachment$FixedSizeImageView;

    invoke-virtual {v7}, Lcom/vkontakte/android/PhotoAttachment$FixedSizeImageView;->animateAlpha()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2015
    .end local v1    # "att":Lcom/vkontakte/android/Attachment;
    .end local v3    # "imgindex":I
    .end local v4    # "index":I
    :catch_0
    move-exception v6

    .local v6, "x":Ljava/lang/Exception;
    const-string v7, "vk"

    invoke-static {v7, v6}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1997
    .end local v6    # "x":Ljava/lang/Exception;
    .restart local v1    # "att":Lcom/vkontakte/android/Attachment;
    .restart local v3    # "imgindex":I
    .restart local v4    # "index":I
    :cond_2
    :try_start_1
    instance-of v7, v1, Lcom/vkontakte/android/VideoAttachment;

    if-eqz v7, :cond_3

    .line 1998
    add-int/lit8 v3, v3, 0x1

    .line 1999
    if-ne v3, v2, :cond_3

    .line 2000
    const v7, 0x7f09009a

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    invoke-virtual {v7, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 2001
    const v7, 0x7f09009a

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    invoke-virtual {v7, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/vkontakte/android/VideoAttachView;

    iget-object v8, p0, Lcom/vkontakte/android/fragments/PostViewFragment$PostCommentsImagesAdapter$2;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v7, v8}, Lcom/vkontakte/android/VideoAttachView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_0

    .line 2005
    :cond_3
    instance-of v7, v1, Lcom/vkontakte/android/DocumentAttachment;

    if-eqz v7, :cond_4

    move-object v0, v1

    check-cast v0, Lcom/vkontakte/android/DocumentAttachment;

    move-object v7, v0

    iget-object v7, v7, Lcom/vkontakte/android/DocumentAttachment;->thumb:Ljava/lang/String;

    if-eqz v7, :cond_4

    check-cast v1, Lcom/vkontakte/android/DocumentAttachment;

    .end local v1    # "att":Lcom/vkontakte/android/Attachment;
    iget-object v7, v1, Lcom/vkontakte/android/DocumentAttachment;->thumb:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_4

    .line 2006
    add-int/lit8 v3, v3, 0x1

    .line 2007
    if-ne v3, v2, :cond_4

    .line 2008
    iget-object v7, p0, Lcom/vkontakte/android/fragments/PostViewFragment$PostCommentsImagesAdapter$2;->this$1:Lcom/vkontakte/android/fragments/PostViewFragment$PostCommentsImagesAdapter;

    invoke-static {v7}, Lcom/vkontakte/android/fragments/PostViewFragment$PostCommentsImagesAdapter;->access$1(Lcom/vkontakte/android/fragments/PostViewFragment$PostCommentsImagesAdapter;)Lcom/vkontakte/android/fragments/PostViewFragment;

    move-result-object v7

    invoke-static {v7}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$7(Lcom/vkontakte/android/fragments/PostViewFragment;)Landroid/view/View;

    move-result-object v7

    const v8, 0x7f090156

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    invoke-virtual {v7, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 2009
    const v7, 0x7f09009a

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    invoke-virtual {v7, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    const v8, 0x7f090056

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iget-object v8, p0, Lcom/vkontakte/android/fragments/PostViewFragment$PostCommentsImagesAdapter$2;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 2013
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1
.end method
