.class Lcom/vkontakte/android/fragments/NotificationsFragment$NotificationsImagesAdapter$1;
.super Ljava/lang/Object;
.source "NotificationsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/NotificationsFragment$NotificationsImagesAdapter;->imageLoaded(IILandroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/fragments/NotificationsFragment$NotificationsImagesAdapter;

.field final synthetic val$_image:I

.field final synthetic val$bitmap:Landroid/graphics/Bitmap;

.field final synthetic val$item:I

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/NotificationsFragment$NotificationsImagesAdapter;ILandroid/view/View;ILandroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 852
    iput-object p1, p0, Lcom/vkontakte/android/fragments/NotificationsFragment$NotificationsImagesAdapter$1;->this$1:Lcom/vkontakte/android/fragments/NotificationsFragment$NotificationsImagesAdapter;

    iput p2, p0, Lcom/vkontakte/android/fragments/NotificationsFragment$NotificationsImagesAdapter$1;->val$item:I

    iput-object p3, p0, Lcom/vkontakte/android/fragments/NotificationsFragment$NotificationsImagesAdapter$1;->val$view:Landroid/view/View;

    iput p4, p0, Lcom/vkontakte/android/fragments/NotificationsFragment$NotificationsImagesAdapter$1;->val$_image:I

    iput-object p5, p0, Lcom/vkontakte/android/fragments/NotificationsFragment$NotificationsImagesAdapter$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    .line 854
    :try_start_0
    iget-object v8, p0, Lcom/vkontakte/android/fragments/NotificationsFragment$NotificationsImagesAdapter$1;->this$1:Lcom/vkontakte/android/fragments/NotificationsFragment$NotificationsImagesAdapter;

    iget-object v8, v8, Lcom/vkontakte/android/fragments/NotificationsFragment$NotificationsImagesAdapter;->this$0:Lcom/vkontakte/android/fragments/NotificationsFragment;

    iget-object v8, v8, Lcom/vkontakte/android/fragments/NotificationsFragment;->data:Ljava/util/ArrayList;

    iget v9, p0, Lcom/vkontakte/android/fragments/NotificationsFragment$NotificationsImagesAdapter$1;->val$item:I

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/api/NotificationEntry;

    .line 855
    .local v1, "e":Lcom/vkontakte/android/api/NotificationEntry;
    iget v8, v1, Lcom/vkontakte/android/api/NotificationEntry;->feedbackType:I

    const/4 v9, 0x3

    if-ne v8, v9, :cond_1

    .line 856
    iget-object v8, p0, Lcom/vkontakte/android/fragments/NotificationsFragment$NotificationsImagesAdapter$1;->val$view:Landroid/view/View;

    if-eqz v8, :cond_1

    .line 857
    iget v8, p0, Lcom/vkontakte/android/fragments/NotificationsFragment$NotificationsImagesAdapter$1;->val$_image:I

    if-nez v8, :cond_0

    .line 858
    iget-object v8, p0, Lcom/vkontakte/android/fragments/NotificationsFragment$NotificationsImagesAdapter$1;->val$view:Landroid/view/View;

    const v9, 0x7f08002a

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 859
    .local v7, "v":Landroid/view/View;
    if-eqz v7, :cond_0

    check-cast v7, Landroid/widget/ImageView;

    .end local v7    # "v":Landroid/view/View;
    iget-object v8, p0, Lcom/vkontakte/android/fragments/NotificationsFragment$NotificationsImagesAdapter$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 861
    :cond_0
    iget v8, p0, Lcom/vkontakte/android/fragments/NotificationsFragment$NotificationsImagesAdapter$1;->val$_image:I

    if-ne v8, v11, :cond_1

    .line 862
    iget-object v8, p0, Lcom/vkontakte/android/fragments/NotificationsFragment$NotificationsImagesAdapter$1;->val$view:Landroid/view/View;

    const v9, 0x7f08002c

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 863
    .restart local v7    # "v":Landroid/view/View;
    if-eqz v7, :cond_1

    check-cast v7, Landroid/widget/ImageView;

    .end local v7    # "v":Landroid/view/View;
    iget-object v8, p0, Lcom/vkontakte/android/fragments/NotificationsFragment$NotificationsImagesAdapter$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 867
    :cond_1
    iget v8, v1, Lcom/vkontakte/android/api/NotificationEntry;->feedbackType:I

    if-eq v8, v11, :cond_2

    iget v8, v1, Lcom/vkontakte/android/api/NotificationEntry;->feedbackType:I

    const/4 v9, 0x4

    if-ne v8, v9, :cond_3

    .line 868
    :cond_2
    iget-object v8, p0, Lcom/vkontakte/android/fragments/NotificationsFragment$NotificationsImagesAdapter$1;->val$view:Landroid/view/View;

    if-eqz v8, :cond_3

    .line 869
    iget v8, p0, Lcom/vkontakte/android/fragments/NotificationsFragment$NotificationsImagesAdapter$1;->val$_image:I

    iget-object v9, v1, Lcom/vkontakte/android/api/NotificationEntry;->users:Ljava/util/Vector;

    invoke-virtual {v9}, Ljava/util/Vector;->size()I

    move-result v9

    const/4 v10, 0x6

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    if-ge v8, v9, :cond_6

    .line 870
    iget v8, p0, Lcom/vkontakte/android/fragments/NotificationsFragment$NotificationsImagesAdapter$1;->val$_image:I

    if-nez v8, :cond_5

    .line 871
    iget-object v8, p0, Lcom/vkontakte/android/fragments/NotificationsFragment$NotificationsImagesAdapter$1;->val$view:Landroid/view/View;

    const v9, 0x7f08002a

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    .line 872
    .local v7, "v":Landroid/widget/ImageView;
    if-eqz v7, :cond_3

    iget-object v8, p0, Lcom/vkontakte/android/fragments/NotificationsFragment$NotificationsImagesAdapter$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 883
    .end local v7    # "v":Landroid/widget/ImageView;
    :cond_3
    :goto_0
    iget v8, v1, Lcom/vkontakte/android/api/NotificationEntry;->feedbackType:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v9, 0x2

    if-ne v8, v9, :cond_4

    .line 885
    :try_start_1
    iget v3, p0, Lcom/vkontakte/android/fragments/NotificationsFragment$NotificationsImagesAdapter$1;->val$_image:I

    .line 886
    .local v3, "image":I
    if-nez v3, :cond_7

    .line 887
    iget-object v8, p0, Lcom/vkontakte/android/fragments/NotificationsFragment$NotificationsImagesAdapter$1;->val$view:Landroid/view/View;

    const v9, 0x7f0800f1

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iget-object v9, p0, Lcom/vkontakte/android/fragments/NotificationsFragment$NotificationsImagesAdapter$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 919
    .end local v1    # "e":Lcom/vkontakte/android/api/NotificationEntry;
    .end local v3    # "image":I
    :cond_4
    :goto_1
    return-void

    .line 874
    .restart local v1    # "e":Lcom/vkontakte/android/api/NotificationEntry;
    :cond_5
    :try_start_2
    iget-object v8, p0, Lcom/vkontakte/android/fragments/NotificationsFragment$NotificationsImagesAdapter$1;->val$view:Landroid/view/View;

    const v9, 0x7f080101

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/vkontakte/android/ui/PhotoStripView;

    .line 875
    .local v6, "strip":Lcom/vkontakte/android/ui/PhotoStripView;
    iget v8, p0, Lcom/vkontakte/android/fragments/NotificationsFragment$NotificationsImagesAdapter$1;->val$_image:I

    add-int/lit8 v8, v8, -0x1

    iget-object v9, p0, Lcom/vkontakte/android/fragments/NotificationsFragment$NotificationsImagesAdapter$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6, v8, v9}, Lcom/vkontakte/android/ui/PhotoStripView;->setBitmap(ILandroid/graphics/Bitmap;)V

    goto :goto_0

    .line 918
    .end local v1    # "e":Lcom/vkontakte/android/api/NotificationEntry;
    .end local v6    # "strip":Lcom/vkontakte/android/ui/PhotoStripView;
    :catch_0
    move-exception v8

    goto :goto_1

    .line 878
    .restart local v1    # "e":Lcom/vkontakte/android/api/NotificationEntry;
    :cond_6
    iget-object v8, p0, Lcom/vkontakte/android/fragments/NotificationsFragment$NotificationsImagesAdapter$1;->val$view:Landroid/view/View;

    const v9, 0x7f08002c

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 879
    .local v7, "v":Landroid/view/View;
    if-eqz v7, :cond_3

    check-cast v7, Landroid/widget/ImageView;

    .end local v7    # "v":Landroid/view/View;
    iget-object v8, p0, Lcom/vkontakte/android/fragments/NotificationsFragment$NotificationsImagesAdapter$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 890
    .restart local v3    # "image":I
    :cond_7
    if-ne v3, v11, :cond_8

    :try_start_3
    iget-object v8, v1, Lcom/vkontakte/android/api/NotificationEntry;->parent:Lcom/vkontakte/android/NewsEntry;

    const/16 v9, 0x20

    invoke-virtual {v8, v9}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 891
    iget-object v8, p0, Lcom/vkontakte/android/fragments/NotificationsFragment$NotificationsImagesAdapter$1;->val$view:Landroid/view/View;

    const v9, 0x7f0800ef

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iget-object v9, p0, Lcom/vkontakte/android/fragments/NotificationsFragment$NotificationsImagesAdapter$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 916
    .end local v3    # "image":I
    :catch_1
    move-exception v8

    goto :goto_1

    .line 894
    .restart local v3    # "image":I
    :cond_8
    iget-object v8, v1, Lcom/vkontakte/android/api/NotificationEntry;->parent:Lcom/vkontakte/android/NewsEntry;

    const/16 v9, 0x20

    invoke-virtual {v8, v9}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v8

    if-eqz v8, :cond_9

    add-int/lit8 v3, v3, -0x1

    .line 895
    :cond_9
    add-int/lit8 v3, v3, -0x1

    .line 896
    const/4 v4, 0x0

    .local v4, "imgindex":I
    const/4 v5, 0x0

    .line 897
    .local v5, "index":I
    iget-object v8, v1, Lcom/vkontakte/android/api/NotificationEntry;->parent:Lcom/vkontakte/android/NewsEntry;

    iget-object v8, v8, Lcom/vkontakte/android/NewsEntry;->repostAttachments:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/Attachment;

    .line 898
    .local v0, "att":Lcom/vkontakte/android/Attachment;
    instance-of v8, v0, Lcom/vkontakte/android/ImageAttachment;

    if-eqz v8, :cond_b

    .line 899
    if-ne v4, v3, :cond_a

    .line 900
    check-cast v0, Lcom/vkontakte/android/ImageAttachment;

    .end local v0    # "att":Lcom/vkontakte/android/Attachment;
    iget-object v8, p0, Lcom/vkontakte/android/fragments/NotificationsFragment$NotificationsImagesAdapter$1;->val$view:Landroid/view/View;

    const v9, 0x7f0800f2

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    invoke-virtual {v8, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    iget-object v9, p0, Lcom/vkontakte/android/fragments/NotificationsFragment$NotificationsImagesAdapter$1;->val$bitmap:Landroid/graphics/Bitmap;

    const/4 v10, 0x0

    invoke-interface {v0, v8, v9, v10}, Lcom/vkontakte/android/ImageAttachment;->setImage(Landroid/view/View;Landroid/graphics/Bitmap;Z)V

    .line 902
    :cond_a
    add-int/lit8 v4, v4, 0x1

    .line 904
    :cond_b
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 906
    :cond_c
    const/4 v5, 0x0

    .line 907
    iget-object v8, v1, Lcom/vkontakte/android/api/NotificationEntry;->parent:Lcom/vkontakte/android/NewsEntry;

    iget-object v8, v8, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/Attachment;

    .line 908
    .restart local v0    # "att":Lcom/vkontakte/android/Attachment;
    instance-of v8, v0, Lcom/vkontakte/android/ImageAttachment;

    if-eqz v8, :cond_e

    .line 909
    if-ne v4, v3, :cond_d

    .line 910
    check-cast v0, Lcom/vkontakte/android/ImageAttachment;

    .end local v0    # "att":Lcom/vkontakte/android/Attachment;
    iget-object v8, p0, Lcom/vkontakte/android/fragments/NotificationsFragment$NotificationsImagesAdapter$1;->val$view:Landroid/view/View;

    const v9, 0x7f080085

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    invoke-virtual {v8, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    iget-object v9, p0, Lcom/vkontakte/android/fragments/NotificationsFragment$NotificationsImagesAdapter$1;->val$bitmap:Landroid/graphics/Bitmap;

    const/4 v10, 0x0

    invoke-interface {v0, v8, v9, v10}, Lcom/vkontakte/android/ImageAttachment;->setImage(Landroid/view/View;Landroid/graphics/Bitmap;Z)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 912
    :cond_d
    add-int/lit8 v4, v4, 0x1

    .line 914
    :cond_e
    add-int/lit8 v5, v5, 0x1

    goto :goto_3
.end method
