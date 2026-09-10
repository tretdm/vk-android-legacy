.class Lcom/vkontakte/android/NewsView$NewsPhotosAdapter$1;
.super Ljava/lang/Object;
.source "NewsView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/NewsView$NewsPhotosAdapter;->imageLoaded(IILandroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/NewsView$NewsPhotosAdapter;

.field private final synthetic val$bitmap:Landroid/graphics/Bitmap;

.field private final synthetic val$image:I

.field private final synthetic val$item:I


# direct methods
.method constructor <init>(Lcom/vkontakte/android/NewsView$NewsPhotosAdapter;IILandroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/NewsView$NewsPhotosAdapter$1;->this$1:Lcom/vkontakte/android/NewsView$NewsPhotosAdapter;

    iput p2, p0, Lcom/vkontakte/android/NewsView$NewsPhotosAdapter$1;->val$item:I

    iput p3, p0, Lcom/vkontakte/android/NewsView$NewsPhotosAdapter$1;->val$image:I

    iput-object p4, p0, Lcom/vkontakte/android/NewsView$NewsPhotosAdapter$1;->val$bitmap:Landroid/graphics/Bitmap;

    .line 914
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 915
    iget-object v4, p0, Lcom/vkontakte/android/NewsView$NewsPhotosAdapter$1;->this$1:Lcom/vkontakte/android/NewsView$NewsPhotosAdapter;

    invoke-static {v4}, Lcom/vkontakte/android/NewsView$NewsPhotosAdapter;->access$0(Lcom/vkontakte/android/NewsView$NewsPhotosAdapter;)Lcom/vkontakte/android/NewsView;

    move-result-object v4

    invoke-static {v4}, Lcom/vkontakte/android/NewsView;->access$3(Lcom/vkontakte/android/NewsView;)Ljava/util/Vector;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_2

    .line 950
    :cond_1
    :goto_0
    return-void

    .line 915
    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 916
    .local v3, "view":Landroid/view/View;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 917
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget v6, p0, Lcom/vkontakte/android/NewsView$NewsPhotosAdapter$1;->val$item:I

    if-ne v4, v6, :cond_0

    .line 919
    :try_start_0
    iget v4, p0, Lcom/vkontakte/android/NewsView$NewsPhotosAdapter$1;->val$image:I

    if-nez v4, :cond_3

    .line 920
    const v4, 0x7f060039

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/vkontakte/android/NewsView$NewsPhotosAdapter$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 946
    :catch_0
    move-exception v4

    goto :goto_0

    .line 923
    :cond_3
    const/4 v1, 0x0

    .local v1, "imgindex":I
    const/4 v2, 0x0

    .line 924
    .local v2, "index":I
    iget-object v4, p0, Lcom/vkontakte/android/NewsView$NewsPhotosAdapter$1;->this$1:Lcom/vkontakte/android/NewsView$NewsPhotosAdapter;

    invoke-static {v4}, Lcom/vkontakte/android/NewsView$NewsPhotosAdapter;->access$0(Lcom/vkontakte/android/NewsView$NewsPhotosAdapter;)Lcom/vkontakte/android/NewsView;

    move-result-object v4

    iget-object v4, v4, Lcom/vkontakte/android/NewsView;->news:Ljava/util/Vector;

    iget v5, p0, Lcom/vkontakte/android/NewsView$NewsPhotosAdapter$1;->val$item:I

    invoke-virtual {v4, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vkontakte/android/NewsEntry;

    iget-object v4, v4, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_4

    .line 944
    const v4, 0x7f0600b2

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 945
    const v4, 0x7f0600b2

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/vkontakte/android/NewsView$NewsPhotosAdapter$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 924
    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/Attachment;

    .line 925
    .local v0, "att":Lcom/vkontakte/android/Attachment;
    instance-of v5, v0, Lcom/vkontakte/android/PhotoAttachment;

    if-eqz v5, :cond_5

    .line 926
    add-int/lit8 v1, v1, 0x1

    .line 927
    iget v5, p0, Lcom/vkontakte/android/NewsView$NewsPhotosAdapter$1;->val$image:I

    if-ne v1, v5, :cond_5

    .line 928
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

    .line 929
    const v4, 0x7f06003c

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/vkontakte/android/NewsView$NewsPhotosAdapter$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 930
    const v4, 0x7f06003c

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/vkontakte/android/PhotoAttachment$FixedSizeImageView;

    invoke-virtual {v4}, Lcom/vkontakte/android/PhotoAttachment$FixedSizeImageView;->animateAlpha()V

    goto/16 :goto_0

    .line 934
    :cond_5
    instance-of v5, v0, Lcom/vkontakte/android/VideoAttachment;

    if-eqz v5, :cond_6

    .line 935
    add-int/lit8 v1, v1, 0x1

    .line 936
    iget v5, p0, Lcom/vkontakte/android/NewsView$NewsPhotosAdapter$1;->val$image:I

    if-ne v1, v5, :cond_6

    .line 937
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

    .line 938
    const v4, 0x7f06003c

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/vkontakte/android/VideoAttachView;

    iget-object v5, p0, Lcom/vkontakte/android/NewsView$NewsPhotosAdapter$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v5}, Lcom/vkontakte/android/VideoAttachView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 942
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1
.end method
