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

.field private final synthetic val$_image:I

.field private final synthetic val$bitmap:Landroid/graphics/Bitmap;

.field private final synthetic val$item:I


# direct methods
.method constructor <init>(Lcom/vkontakte/android/NotificationsView$NotificationsImagesAdapter;IILandroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/NotificationsView$NotificationsImagesAdapter$1;->this$1:Lcom/vkontakte/android/NotificationsView$NotificationsImagesAdapter;

    iput p2, p0, Lcom/vkontakte/android/NotificationsView$NotificationsImagesAdapter$1;->val$item:I

    iput p3, p0, Lcom/vkontakte/android/NotificationsView$NotificationsImagesAdapter$1;->val$_image:I

    iput-object p4, p0, Lcom/vkontakte/android/NotificationsView$NotificationsImagesAdapter$1;->val$bitmap:Landroid/graphics/Bitmap;

    .line 899
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    .line 901
    :try_start_0
    iget-object v10, p0, Lcom/vkontakte/android/NotificationsView$NotificationsImagesAdapter$1;->this$1:Lcom/vkontakte/android/NotificationsView$NotificationsImagesAdapter;

    invoke-static {v10}, Lcom/vkontakte/android/NotificationsView$NotificationsImagesAdapter;->access$1(Lcom/vkontakte/android/NotificationsView$NotificationsImagesAdapter;)Lcom/vkontakte/android/NotificationsView;

    move-result-object v10

    invoke-static {v10}, Lcom/vkontakte/android/NotificationsView;->access$5(Lcom/vkontakte/android/NotificationsView;)Lcom/vkontakte/android/ui/RefreshableListView;

    move-result-object v10

    iget v11, p0, Lcom/vkontakte/android/NotificationsView$NotificationsImagesAdapter$1;->val$item:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/vkontakte/android/ui/RefreshableListView;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v8

    .line 902
    .local v8, "view":Landroid/view/View;
    sget-object v10, Lcom/vkontakte/android/NotificationsView;->notifications:Ljava/util/Vector;

    iget v11, p0, Lcom/vkontakte/android/NotificationsView$NotificationsImagesAdapter$1;->val$item:I

    invoke-virtual {v10, v11}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/api/NotificationEntry;

    .line 903
    .local v2, "e":Lcom/vkontakte/android/api/NotificationEntry;
    iget v10, v2, Lcom/vkontakte/android/api/NotificationEntry;->feedbackType:I

    const/4 v11, 0x3

    if-ne v10, v11, :cond_1

    .line 904
    if-eqz v8, :cond_1

    .line 905
    iget v10, p0, Lcom/vkontakte/android/NotificationsView$NotificationsImagesAdapter$1;->val$_image:I

    if-nez v10, :cond_0

    .line 906
    const v10, 0x7f0800f0

    invoke-virtual {v8, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 907
    .local v6, "v":Landroid/view/View;
    if-eqz v6, :cond_0

    check-cast v6, Landroid/widget/ImageView;

    .end local v6    # "v":Landroid/view/View;
    iget-object v10, p0, Lcom/vkontakte/android/NotificationsView$NotificationsImagesAdapter$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6, v10}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 909
    :cond_0
    iget v10, p0, Lcom/vkontakte/android/NotificationsView$NotificationsImagesAdapter$1;->val$_image:I

    if-ne v10, v12, :cond_1

    .line 910
    const v10, 0x7f0800f1

    invoke-virtual {v8, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 911
    .restart local v6    # "v":Landroid/view/View;
    if-eqz v6, :cond_1

    check-cast v6, Landroid/widget/ImageView;

    .end local v6    # "v":Landroid/view/View;
    iget-object v10, p0, Lcom/vkontakte/android/NotificationsView$NotificationsImagesAdapter$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6, v10}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 915
    :cond_1
    iget v10, v2, Lcom/vkontakte/android/api/NotificationEntry;->feedbackType:I

    if-eq v10, v12, :cond_2

    iget v10, v2, Lcom/vkontakte/android/api/NotificationEntry;->feedbackType:I

    const/4 v11, 0x4

    if-ne v10, v11, :cond_3

    .line 916
    :cond_2
    if-eqz v8, :cond_3

    .line 917
    const v10, 0x7f0800f7

    invoke-virtual {v8, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 918
    .local v9, "vv":Landroid/view/View;
    if-eqz v9, :cond_3

    .line 919
    move-object v0, v9

    check-cast v0, Landroid/view/ViewGroup;

    move-object v7, v0

    .line 920
    .local v7, "vg":Landroid/view/ViewGroup;
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v10

    iget v11, p0, Lcom/vkontakte/android/NotificationsView$NotificationsImagesAdapter$1;->val$_image:I

    if-le v10, v11, :cond_5

    .line 921
    iget v10, p0, Lcom/vkontakte/android/NotificationsView$NotificationsImagesAdapter$1;->val$_image:I

    invoke-virtual {v7, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    iget-object v11, p0, Lcom/vkontakte/android/NotificationsView$NotificationsImagesAdapter$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 929
    .end local v7    # "vg":Landroid/view/ViewGroup;
    .end local v9    # "vv":Landroid/view/View;
    :cond_3
    :goto_0
    iget v10, v2, Lcom/vkontakte/android/api/NotificationEntry;->feedbackType:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v11, 0x2

    if-ne v10, v11, :cond_4

    .line 931
    :try_start_1
    iget v3, p0, Lcom/vkontakte/android/NotificationsView$NotificationsImagesAdapter$1;->val$_image:I

    .line 932
    .local v3, "image":I
    if-nez v3, :cond_6

    .line 933
    const v10, 0x7f0800e3

    invoke-virtual {v8, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    iget-object v11, p0, Lcom/vkontakte/android/NotificationsView$NotificationsImagesAdapter$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 978
    .end local v2    # "e":Lcom/vkontakte/android/api/NotificationEntry;
    .end local v3    # "image":I
    .end local v8    # "view":Landroid/view/View;
    :cond_4
    :goto_1
    return-void

    .line 923
    .restart local v2    # "e":Lcom/vkontakte/android/api/NotificationEntry;
    .restart local v7    # "vg":Landroid/view/ViewGroup;
    .restart local v8    # "view":Landroid/view/View;
    .restart local v9    # "vv":Landroid/view/View;
    :cond_5
    const v10, 0x7f0800f1

    :try_start_2
    invoke-virtual {v8, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 924
    .restart local v6    # "v":Landroid/view/View;
    if-eqz v6, :cond_3

    check-cast v6, Landroid/widget/ImageView;

    .end local v6    # "v":Landroid/view/View;
    iget-object v10, p0, Lcom/vkontakte/android/NotificationsView$NotificationsImagesAdapter$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6, v10}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 977
    .end local v2    # "e":Lcom/vkontakte/android/api/NotificationEntry;
    .end local v7    # "vg":Landroid/view/ViewGroup;
    .end local v8    # "view":Landroid/view/View;
    .end local v9    # "vv":Landroid/view/View;
    :catch_0
    move-exception v10

    goto :goto_1

    .line 936
    .restart local v2    # "e":Lcom/vkontakte/android/api/NotificationEntry;
    .restart local v3    # "image":I
    .restart local v8    # "view":Landroid/view/View;
    :cond_6
    if-ne v3, v12, :cond_7

    :try_start_3
    iget-object v10, v2, Lcom/vkontakte/android/api/NotificationEntry;->parent:Lcom/vkontakte/android/NewsEntry;

    const/16 v11, 0x20

    invoke-virtual {v10, v11}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 937
    const v10, 0x7f0800e0

    invoke-virtual {v8, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    iget-object v11, p0, Lcom/vkontakte/android/NotificationsView$NotificationsImagesAdapter$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 975
    .end local v3    # "image":I
    :catch_1
    move-exception v10

    goto :goto_1

    .line 940
    .restart local v3    # "image":I
    :cond_7
    iget-object v10, v2, Lcom/vkontakte/android/api/NotificationEntry;->parent:Lcom/vkontakte/android/NewsEntry;

    const/16 v11, 0x20

    invoke-virtual {v10, v11}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v10

    if-eqz v10, :cond_8

    add-int/lit8 v3, v3, -0x1

    .line 941
    :cond_8
    const/4 v4, 0x0

    .local v4, "imgindex":I
    const/4 v5, 0x0

    .line 942
    .local v5, "index":I
    iget-object v10, v2, Lcom/vkontakte/android/api/NotificationEntry;->parent:Lcom/vkontakte/android/NewsEntry;

    iget-object v10, v10, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/Attachment;

    .line 943
    .local v1, "att":Lcom/vkontakte/android/Attachment;
    instance-of v10, v1, Lcom/vkontakte/android/AlbumAttachment;

    if-eqz v10, :cond_9

    .line 944
    add-int/lit8 v4, v4, 0x1

    .line 945
    if-ne v4, v3, :cond_c

    .line 947
    const v10, 0x7f0800e1

    invoke-virtual {v8, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/view/ViewGroup;

    invoke-virtual {v10, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    const v11, 0x7f080013

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    iget-object v11, p0, Lcom/vkontakte/android/NotificationsView$NotificationsImagesAdapter$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 948
    const v10, 0x7f0800e1

    invoke-virtual {v8, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/view/ViewGroup;

    invoke-virtual {v10, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    const v11, 0x7f080013

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/vkontakte/android/PhotoAttachment$FixedSizeImageView;

    invoke-virtual {v10}, Lcom/vkontakte/android/PhotoAttachment$FixedSizeImageView;->animateAlpha()V

    goto/16 :goto_1

    .line 951
    :cond_9
    instance-of v10, v1, Lcom/vkontakte/android/PhotoAttachment;

    if-eqz v10, :cond_a

    .line 952
    add-int/lit8 v4, v4, 0x1

    .line 953
    if-ne v4, v3, :cond_c

    .line 955
    const v10, 0x7f0800e1

    invoke-virtual {v8, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/view/ViewGroup;

    invoke-virtual {v10, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    iget-object v11, p0, Lcom/vkontakte/android/NotificationsView$NotificationsImagesAdapter$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 956
    const v10, 0x7f0800e1

    invoke-virtual {v8, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/view/ViewGroup;

    invoke-virtual {v10, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/vkontakte/android/PhotoAttachment$FixedSizeImageView;

    invoke-virtual {v10}, Lcom/vkontakte/android/PhotoAttachment$FixedSizeImageView;->animateAlpha()V

    goto/16 :goto_1

    .line 959
    :cond_a
    instance-of v10, v1, Lcom/vkontakte/android/VideoAttachment;

    if-eqz v10, :cond_b

    .line 960
    add-int/lit8 v4, v4, 0x1

    .line 961
    if-ne v4, v3, :cond_c

    .line 963
    const v10, 0x7f0800e1

    invoke-virtual {v8, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/view/ViewGroup;

    invoke-virtual {v10, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/vkontakte/android/VideoAttachView;

    iget-object v11, p0, Lcom/vkontakte/android/NotificationsView$NotificationsImagesAdapter$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v10, v11}, Lcom/vkontakte/android/VideoAttachView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_1

    .line 966
    :cond_b
    instance-of v10, v1, Lcom/vkontakte/android/DocumentAttachment;

    if-eqz v10, :cond_c

    move-object v0, v1

    check-cast v0, Lcom/vkontakte/android/DocumentAttachment;

    move-object v10, v0

    iget-object v10, v10, Lcom/vkontakte/android/DocumentAttachment;->thumb:Ljava/lang/String;

    if-eqz v10, :cond_c

    check-cast v1, Lcom/vkontakte/android/DocumentAttachment;

    .end local v1    # "att":Lcom/vkontakte/android/Attachment;
    iget-object v10, v1, Lcom/vkontakte/android/DocumentAttachment;->thumb:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_c

    .line 967
    add-int/lit8 v4, v4, 0x1

    .line 968
    if-ne v4, v3, :cond_c

    .line 969
    const v10, 0x7f0800e1

    invoke-virtual {v8, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/view/ViewGroup;

    invoke-virtual {v10, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/view/ViewGroup;

    const v11, 0x7f08004c

    invoke-virtual {v10, v11}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    iget-object v11, p0, Lcom/vkontakte/android/NotificationsView$NotificationsImagesAdapter$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_1

    .line 973
    :cond_c
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_2
.end method
