.class Lcom/vkontakte/android/PostViewActivity$PostCommentsImagesAdapter$1;
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


# direct methods
.method constructor <init>(Lcom/vkontakte/android/PostViewActivity$PostCommentsImagesAdapter;ILandroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/PostViewActivity$PostCommentsImagesAdapter$1;->this$1:Lcom/vkontakte/android/PostViewActivity$PostCommentsImagesAdapter;

    iput p2, p0, Lcom/vkontakte/android/PostViewActivity$PostCommentsImagesAdapter$1;->val$image:I

    iput-object p3, p0, Lcom/vkontakte/android/PostViewActivity$PostCommentsImagesAdapter$1;->val$bitmap:Landroid/graphics/Bitmap;

    .line 1023
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 1025
    :try_start_0
    iget v3, p0, Lcom/vkontakte/android/PostViewActivity$PostCommentsImagesAdapter$1;->val$image:I

    if-nez v3, :cond_1

    .line 1026
    iget-object v3, p0, Lcom/vkontakte/android/PostViewActivity$PostCommentsImagesAdapter$1;->this$1:Lcom/vkontakte/android/PostViewActivity$PostCommentsImagesAdapter;

    invoke-static {v3}, Lcom/vkontakte/android/PostViewActivity$PostCommentsImagesAdapter;->access$1(Lcom/vkontakte/android/PostViewActivity$PostCommentsImagesAdapter;)Lcom/vkontakte/android/PostViewActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/vkontakte/android/PostViewActivity;->access$6(Lcom/vkontakte/android/PostViewActivity;)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0600d9

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1027
    iget-object v3, p0, Lcom/vkontakte/android/PostViewActivity$PostCommentsImagesAdapter$1;->this$1:Lcom/vkontakte/android/PostViewActivity$PostCommentsImagesAdapter;

    invoke-static {v3}, Lcom/vkontakte/android/PostViewActivity$PostCommentsImagesAdapter;->access$1(Lcom/vkontakte/android/PostViewActivity$PostCommentsImagesAdapter;)Lcom/vkontakte/android/PostViewActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/vkontakte/android/PostViewActivity;->access$6(Lcom/vkontakte/android/PostViewActivity;)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0600d9

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/vkontakte/android/PostViewActivity$PostCommentsImagesAdapter$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1059
    :cond_0
    :goto_0
    return-void

    .line 1030
    :cond_1
    const/4 v1, 0x0

    .local v1, "imgindex":I
    const/4 v2, 0x0

    .line 1031
    .local v2, "index":I
    iget-object v3, p0, Lcom/vkontakte/android/PostViewActivity$PostCommentsImagesAdapter$1;->this$1:Lcom/vkontakte/android/PostViewActivity$PostCommentsImagesAdapter;

    invoke-static {v3}, Lcom/vkontakte/android/PostViewActivity$PostCommentsImagesAdapter;->access$1(Lcom/vkontakte/android/PostViewActivity$PostCommentsImagesAdapter;)Lcom/vkontakte/android/PostViewActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/vkontakte/android/PostViewActivity;->access$5(Lcom/vkontakte/android/PostViewActivity;)Lcom/vkontakte/android/NewsEntry;

    move-result-object v3

    iget-object v3, v3, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/Attachment;

    .line 1032
    .local v0, "att":Lcom/vkontakte/android/Attachment;
    instance-of v4, v0, Lcom/vkontakte/android/PhotoAttachment;

    if-eqz v4, :cond_2

    .line 1033
    add-int/lit8 v1, v1, 0x1

    .line 1034
    iget v4, p0, Lcom/vkontakte/android/PostViewActivity$PostCommentsImagesAdapter$1;->val$image:I

    if-ne v1, v4, :cond_2

    .line 1035
    iget-object v3, p0, Lcom/vkontakte/android/PostViewActivity$PostCommentsImagesAdapter$1;->this$1:Lcom/vkontakte/android/PostViewActivity$PostCommentsImagesAdapter;

    invoke-static {v3}, Lcom/vkontakte/android/PostViewActivity$PostCommentsImagesAdapter;->access$1(Lcom/vkontakte/android/PostViewActivity$PostCommentsImagesAdapter;)Lcom/vkontakte/android/PostViewActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/vkontakte/android/PostViewActivity;->access$6(Lcom/vkontakte/android/PostViewActivity;)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0600e0

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1036
    iget-object v3, p0, Lcom/vkontakte/android/PostViewActivity$PostCommentsImagesAdapter$1;->this$1:Lcom/vkontakte/android/PostViewActivity$PostCommentsImagesAdapter;

    invoke-static {v3}, Lcom/vkontakte/android/PostViewActivity$PostCommentsImagesAdapter;->access$1(Lcom/vkontakte/android/PostViewActivity$PostCommentsImagesAdapter;)Lcom/vkontakte/android/PostViewActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/vkontakte/android/PostViewActivity;->access$6(Lcom/vkontakte/android/PostViewActivity;)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0600e0

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/vkontakte/android/PostViewActivity$PostCommentsImagesAdapter$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 1058
    .end local v0    # "att":Lcom/vkontakte/android/Attachment;
    .end local v1    # "imgindex":I
    .end local v2    # "index":I
    :catch_0
    move-exception v3

    goto :goto_0

    .line 1040
    .restart local v0    # "att":Lcom/vkontakte/android/Attachment;
    .restart local v1    # "imgindex":I
    .restart local v2    # "index":I
    :cond_2
    instance-of v4, v0, Lcom/vkontakte/android/VideoAttachment;

    if-eqz v4, :cond_3

    .line 1041
    add-int/lit8 v1, v1, 0x1

    .line 1042
    iget v4, p0, Lcom/vkontakte/android/PostViewActivity$PostCommentsImagesAdapter$1;->val$image:I

    if-ne v1, v4, :cond_3

    .line 1043
    iget-object v3, p0, Lcom/vkontakte/android/PostViewActivity$PostCommentsImagesAdapter$1;->this$1:Lcom/vkontakte/android/PostViewActivity$PostCommentsImagesAdapter;

    invoke-static {v3}, Lcom/vkontakte/android/PostViewActivity$PostCommentsImagesAdapter;->access$1(Lcom/vkontakte/android/PostViewActivity$PostCommentsImagesAdapter;)Lcom/vkontakte/android/PostViewActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/vkontakte/android/PostViewActivity;->access$6(Lcom/vkontakte/android/PostViewActivity;)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0600e0

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1044
    iget-object v3, p0, Lcom/vkontakte/android/PostViewActivity$PostCommentsImagesAdapter$1;->this$1:Lcom/vkontakte/android/PostViewActivity$PostCommentsImagesAdapter;

    invoke-static {v3}, Lcom/vkontakte/android/PostViewActivity$PostCommentsImagesAdapter;->access$1(Lcom/vkontakte/android/PostViewActivity$PostCommentsImagesAdapter;)Lcom/vkontakte/android/PostViewActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/vkontakte/android/PostViewActivity;->access$6(Lcom/vkontakte/android/PostViewActivity;)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0600e0

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/vkontakte/android/VideoAttachView;

    iget-object v4, p0, Lcom/vkontakte/android/PostViewActivity$PostCommentsImagesAdapter$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v4}, Lcom/vkontakte/android/VideoAttachView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_0

    .line 1048
    :cond_3
    instance-of v4, v0, Lcom/vkontakte/android/GeoAttachment;

    if-eqz v4, :cond_4

    .line 1049
    add-int/lit8 v1, v1, 0x1

    .line 1050
    iget v4, p0, Lcom/vkontakte/android/PostViewActivity$PostCommentsImagesAdapter$1;->val$image:I

    if-ne v1, v4, :cond_4

    .line 1051
    iget-object v3, p0, Lcom/vkontakte/android/PostViewActivity$PostCommentsImagesAdapter$1;->this$1:Lcom/vkontakte/android/PostViewActivity$PostCommentsImagesAdapter;

    invoke-static {v3}, Lcom/vkontakte/android/PostViewActivity$PostCommentsImagesAdapter;->access$1(Lcom/vkontakte/android/PostViewActivity$PostCommentsImagesAdapter;)Lcom/vkontakte/android/PostViewActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/vkontakte/android/PostViewActivity;->access$6(Lcom/vkontakte/android/PostViewActivity;)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0600e0

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1052
    iget-object v3, p0, Lcom/vkontakte/android/PostViewActivity$PostCommentsImagesAdapter$1;->this$1:Lcom/vkontakte/android/PostViewActivity$PostCommentsImagesAdapter;

    invoke-static {v3}, Lcom/vkontakte/android/PostViewActivity$PostCommentsImagesAdapter;->access$1(Lcom/vkontakte/android/PostViewActivity$PostCommentsImagesAdapter;)Lcom/vkontakte/android/PostViewActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/vkontakte/android/PostViewActivity;->access$6(Lcom/vkontakte/android/PostViewActivity;)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0600e0

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/vkontakte/android/PostViewActivity$PostCommentsImagesAdapter$1;->this$1:Lcom/vkontakte/android/PostViewActivity$PostCommentsImagesAdapter;

    invoke-static {v4}, Lcom/vkontakte/android/PostViewActivity$PostCommentsImagesAdapter;->access$1(Lcom/vkontakte/android/PostViewActivity$PostCommentsImagesAdapter;)Lcom/vkontakte/android/PostViewActivity;

    move-result-object v4

    iget-object v5, p0, Lcom/vkontakte/android/PostViewActivity$PostCommentsImagesAdapter$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-static {v4, v5}, Lcom/vkontakte/android/PostViewActivity;->access$7(Lcom/vkontakte/android/PostViewActivity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1056
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1
.end method
