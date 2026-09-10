.class Lcom/vkontakte/android/NotificationsView$NotificationsImagesAdapter$1;
.super Ljava/lang/Object;
.source "NotificationsView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/NotificationsView$NotificationsImagesAdapter;->imageLoaded(IILandroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/NotificationsView$NotificationsImagesAdapter;

.field private final synthetic val$bitmap:Landroid/graphics/Bitmap;

.field private final synthetic val$image:I

.field private final synthetic val$item:I


# direct methods
.method constructor <init>(Lcom/vkontakte/android/NotificationsView$NotificationsImagesAdapter;IILandroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/NotificationsView$NotificationsImagesAdapter$1;->this$1:Lcom/vkontakte/android/NotificationsView$NotificationsImagesAdapter;

    iput p2, p0, Lcom/vkontakte/android/NotificationsView$NotificationsImagesAdapter$1;->val$item:I

    iput p3, p0, Lcom/vkontakte/android/NotificationsView$NotificationsImagesAdapter$1;->val$image:I

    iput-object p4, p0, Lcom/vkontakte/android/NotificationsView$NotificationsImagesAdapter$1;->val$bitmap:Landroid/graphics/Bitmap;

    .line 822
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const v11, 0x7f0600c6

    const/4 v10, 0x1

    .line 823
    iget-object v8, p0, Lcom/vkontakte/android/NotificationsView$NotificationsImagesAdapter$1;->this$1:Lcom/vkontakte/android/NotificationsView$NotificationsImagesAdapter;

    invoke-static {v8}, Lcom/vkontakte/android/NotificationsView$NotificationsImagesAdapter;->access$1(Lcom/vkontakte/android/NotificationsView$NotificationsImagesAdapter;)Lcom/vkontakte/android/NotificationsView;

    move-result-object v8

    invoke-static {v8}, Lcom/vkontakte/android/NotificationsView;->access$6(Lcom/vkontakte/android/NotificationsView;)Lcom/vkontakte/android/ui/RefreshableListView;

    move-result-object v8

    iget v9, p0, Lcom/vkontakte/android/NotificationsView$NotificationsImagesAdapter$1;->val$item:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/vkontakte/android/ui/RefreshableListView;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v6

    .line 824
    .local v6, "view":Landroid/view/View;
    invoke-static {}, Lcom/vkontakte/android/NotificationsView;->access$0()Ljava/util/Vector;

    move-result-object v8

    iget v9, p0, Lcom/vkontakte/android/NotificationsView$NotificationsImagesAdapter$1;->val$item:I

    invoke-virtual {v8, v9}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/api/NotificationEntry;

    .line 825
    .local v1, "e":Lcom/vkontakte/android/api/NotificationEntry;
    iget v8, v1, Lcom/vkontakte/android/api/NotificationEntry;->feedbackType:I

    const/4 v9, 0x3

    if-ne v8, v9, :cond_1

    .line 826
    if-eqz v6, :cond_1

    .line 827
    iget v8, p0, Lcom/vkontakte/android/NotificationsView$NotificationsImagesAdapter$1;->val$image:I

    if-nez v8, :cond_0

    .line 828
    invoke-virtual {v6, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 829
    .local v4, "v":Landroid/view/View;
    if-eqz v4, :cond_0

    check-cast v4, Landroid/widget/ImageView;

    .end local v4    # "v":Landroid/view/View;
    iget-object v8, p0, Lcom/vkontakte/android/NotificationsView$NotificationsImagesAdapter$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 831
    :cond_0
    iget v8, p0, Lcom/vkontakte/android/NotificationsView$NotificationsImagesAdapter$1;->val$image:I

    if-ne v8, v10, :cond_1

    .line 832
    const v8, 0x7f0600c7

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 833
    .restart local v4    # "v":Landroid/view/View;
    if-eqz v4, :cond_1

    check-cast v4, Landroid/widget/ImageView;

    .end local v4    # "v":Landroid/view/View;
    iget-object v8, p0, Lcom/vkontakte/android/NotificationsView$NotificationsImagesAdapter$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 837
    :cond_1
    iget v8, v1, Lcom/vkontakte/android/api/NotificationEntry;->feedbackType:I

    if-eq v8, v10, :cond_2

    iget v8, v1, Lcom/vkontakte/android/api/NotificationEntry;->feedbackType:I

    const/4 v9, 0x4

    if-ne v8, v9, :cond_3

    .line 838
    :cond_2
    if-eqz v6, :cond_3

    .line 839
    const v8, 0x7f0600cc

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 840
    .local v7, "vv":Landroid/view/View;
    if-eqz v7, :cond_3

    move-object v5, v7

    .line 841
    check-cast v5, Landroid/view/ViewGroup;

    .line 842
    .local v5, "vg":Landroid/view/ViewGroup;
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    iget v9, p0, Lcom/vkontakte/android/NotificationsView$NotificationsImagesAdapter$1;->val$image:I

    if-le v8, v9, :cond_5

    .line 843
    iget v8, p0, Lcom/vkontakte/android/NotificationsView$NotificationsImagesAdapter$1;->val$image:I

    invoke-virtual {v5, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iget-object v9, p0, Lcom/vkontakte/android/NotificationsView$NotificationsImagesAdapter$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 851
    .end local v5    # "vg":Landroid/view/ViewGroup;
    .end local v7    # "vv":Landroid/view/View;
    :cond_3
    :goto_0
    iget v8, v1, Lcom/vkontakte/android/api/NotificationEntry;->feedbackType:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_4

    .line 853
    :try_start_0
    iget v8, p0, Lcom/vkontakte/android/NotificationsView$NotificationsImagesAdapter$1;->val$image:I

    if-nez v8, :cond_6

    .line 854
    const v8, 0x7f060039

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iget-object v9, p0, Lcom/vkontakte/android/NotificationsView$NotificationsImagesAdapter$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 879
    :cond_4
    :goto_1
    return-void

    .line 845
    .restart local v5    # "vg":Landroid/view/ViewGroup;
    .restart local v7    # "vv":Landroid/view/View;
    :cond_5
    invoke-virtual {v6, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 846
    .restart local v4    # "v":Landroid/view/View;
    if-eqz v4, :cond_3

    check-cast v4, Landroid/widget/ImageView;

    .end local v4    # "v":Landroid/view/View;
    iget-object v8, p0, Lcom/vkontakte/android/NotificationsView$NotificationsImagesAdapter$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 857
    .end local v5    # "vg":Landroid/view/ViewGroup;
    .end local v7    # "vv":Landroid/view/View;
    :cond_6
    const/4 v2, 0x0

    .local v2, "imgindex":I
    const/4 v3, 0x0

    .line 858
    .local v3, "index":I
    :try_start_1
    iget-object v8, v1, Lcom/vkontakte/android/api/NotificationEntry;->parent:Lcom/vkontakte/android/NewsEntry;

    iget-object v8, v8, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/Attachment;

    .line 859
    .local v0, "att":Lcom/vkontakte/android/Attachment;
    instance-of v9, v0, Lcom/vkontakte/android/PhotoAttachment;

    if-eqz v9, :cond_7

    .line 860
    add-int/lit8 v2, v2, 0x1

    .line 861
    iget v9, p0, Lcom/vkontakte/android/NotificationsView$NotificationsImagesAdapter$1;->val$image:I

    if-ne v2, v9, :cond_7

    .line 862
    const v8, 0x7f06003c

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    invoke-virtual {v8, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 863
    const v8, 0x7f06003c

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    invoke-virtual {v8, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iget-object v9, p0, Lcom/vkontakte/android/NotificationsView$NotificationsImagesAdapter$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 877
    .end local v0    # "att":Lcom/vkontakte/android/Attachment;
    .end local v2    # "imgindex":I
    .end local v3    # "index":I
    :catch_0
    move-exception v8

    goto :goto_1

    .line 867
    .restart local v0    # "att":Lcom/vkontakte/android/Attachment;
    .restart local v2    # "imgindex":I
    .restart local v3    # "index":I
    :cond_7
    instance-of v9, v0, Lcom/vkontakte/android/VideoAttachment;

    if-eqz v9, :cond_8

    .line 868
    add-int/lit8 v2, v2, 0x1

    .line 869
    iget v9, p0, Lcom/vkontakte/android/NotificationsView$NotificationsImagesAdapter$1;->val$image:I

    if-ne v2, v9, :cond_8

    .line 870
    const v8, 0x7f06003c

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    invoke-virtual {v8, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 871
    const v8, 0x7f06003c

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    invoke-virtual {v8, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/vkontakte/android/VideoAttachView;

    iget-object v9, p0, Lcom/vkontakte/android/NotificationsView$NotificationsImagesAdapter$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v8, v9}, Lcom/vkontakte/android/VideoAttachView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 875
    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_2
.end method
