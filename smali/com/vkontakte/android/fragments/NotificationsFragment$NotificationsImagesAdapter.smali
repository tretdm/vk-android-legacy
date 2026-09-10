.class Lcom/vkontakte/android/fragments/NotificationsFragment$NotificationsImagesAdapter;
.super Lcom/vkontakte/android/ui/ListImageLoaderAdapter;
.source "NotificationsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/fragments/NotificationsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NotificationsImagesAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/NotificationsFragment;


# direct methods
.method private constructor <init>(Lcom/vkontakte/android/fragments/NotificationsFragment;)V
    .locals 0

    .prologue
    .line 744
    iput-object p1, p0, Lcom/vkontakte/android/fragments/NotificationsFragment$NotificationsImagesAdapter;->this$0:Lcom/vkontakte/android/fragments/NotificationsFragment;

    invoke-direct {p0}, Lcom/vkontakte/android/ui/ListImageLoaderAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkontakte/android/fragments/NotificationsFragment;Lcom/vkontakte/android/fragments/NotificationsFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/vkontakte/android/fragments/NotificationsFragment;
    .param p2, "x1"    # Lcom/vkontakte/android/fragments/NotificationsFragment$1;

    .prologue
    .line 744
    invoke-direct {p0, p1}, Lcom/vkontakte/android/fragments/NotificationsFragment$NotificationsImagesAdapter;-><init>(Lcom/vkontakte/android/fragments/NotificationsFragment;)V

    return-void
.end method


# virtual methods
.method public getImageCountForItem(I)I
    .locals 9
    .param p1, "item"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 752
    iget-object v7, p0, Lcom/vkontakte/android/fragments/NotificationsFragment$NotificationsImagesAdapter;->this$0:Lcom/vkontakte/android/fragments/NotificationsFragment;

    iget-object v7, v7, Lcom/vkontakte/android/fragments/NotificationsFragment;->data:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/api/NotificationEntry;

    .line 753
    .local v2, "e":Lcom/vkontakte/android/api/NotificationEntry;
    iget v7, v2, Lcom/vkontakte/android/api/NotificationEntry;->feedbackType:I

    const/4 v8, 0x5

    if-ne v7, v8, :cond_1

    .line 780
    :cond_0
    :goto_0
    return v5

    .line 755
    :cond_1
    iget v7, v2, Lcom/vkontakte/android/api/NotificationEntry;->feedbackType:I

    const/4 v8, 0x2

    if-eq v7, v8, :cond_8

    .line 756
    const/4 v4, 0x0

    .line 757
    .local v4, "postphoto":Ljava/lang/String;
    iget-object v7, v2, Lcom/vkontakte/android/api/NotificationEntry;->parent:Lcom/vkontakte/android/NewsEntry;

    if-eqz v7, :cond_3

    .line 758
    iget-object v7, v2, Lcom/vkontakte/android/api/NotificationEntry;->parent:Lcom/vkontakte/android/NewsEntry;

    iget-object v7, v7, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/Attachment;

    .line 759
    .local v0, "att":Lcom/vkontakte/android/Attachment;
    instance-of v7, v0, Lcom/vkontakte/android/ImageAttachment;

    if-eqz v7, :cond_2

    .line 760
    check-cast v0, Lcom/vkontakte/android/ImageAttachment;

    .end local v0    # "att":Lcom/vkontakte/android/Attachment;
    invoke-interface {v0}, Lcom/vkontakte/android/ImageAttachment;->getImageURL()Ljava/lang/String;

    move-result-object v4

    .line 765
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_3
    iget v7, v2, Lcom/vkontakte/android/api/NotificationEntry;->feedbackType:I

    const/4 v8, 0x3

    if-ne v7, v8, :cond_5

    .line 766
    if-nez v4, :cond_4

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_4
    move v5, v6

    goto :goto_1

    .line 768
    :cond_5
    iget v7, v2, Lcom/vkontakte/android/api/NotificationEntry;->feedbackType:I

    if-eq v7, v6, :cond_6

    iget v7, v2, Lcom/vkontakte/android/api/NotificationEntry;->feedbackType:I

    const/4 v8, 0x4

    if-ne v7, v8, :cond_0

    .line 769
    :cond_6
    iget-object v7, v2, Lcom/vkontakte/android/api/NotificationEntry;->users:Ljava/util/Vector;

    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v7

    const/4 v8, 0x6

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    if-nez v4, :cond_7

    :goto_2
    add-int/2addr v5, v7

    goto :goto_0

    :cond_7
    move v5, v6

    goto :goto_2

    .line 772
    .end local v4    # "postphoto":Ljava/lang/String;
    :cond_8
    const/4 v1, 0x1

    .line 773
    .local v1, "count":I
    iget-object v5, v2, Lcom/vkontakte/android/api/NotificationEntry;->parent:Lcom/vkontakte/android/NewsEntry;

    iget-object v5, v5, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3    # "i$":Ljava/util/Iterator;
    :cond_9
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/Attachment;

    .line 774
    .restart local v0    # "att":Lcom/vkontakte/android/Attachment;
    instance-of v5, v0, Lcom/vkontakte/android/ImageAttachment;

    if-eqz v5, :cond_9

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 775
    .end local v0    # "att":Lcom/vkontakte/android/Attachment;
    :cond_a
    iget-object v5, v2, Lcom/vkontakte/android/api/NotificationEntry;->parent:Lcom/vkontakte/android/NewsEntry;

    iget-object v5, v5, Lcom/vkontakte/android/NewsEntry;->repostAttachments:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_b
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/Attachment;

    .line 776
    .restart local v0    # "att":Lcom/vkontakte/android/Attachment;
    instance-of v5, v0, Lcom/vkontakte/android/ImageAttachment;

    if-eqz v5, :cond_b

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 777
    .end local v0    # "att":Lcom/vkontakte/android/Attachment;
    :cond_c
    iget-object v5, v2, Lcom/vkontakte/android/api/NotificationEntry;->parent:Lcom/vkontakte/android/NewsEntry;

    const/16 v6, 0x20

    invoke-virtual {v5, v6}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v5

    if-eqz v5, :cond_d

    add-int/lit8 v1, v1, 0x1

    :cond_d
    move v5, v1

    .line 778
    goto/16 :goto_0
.end method

.method public getImageURL(II)Ljava/lang/String;
    .locals 9
    .param p1, "item"    # I
    .param p2, "image"    # I

    .prologue
    const/16 v8, 0x20

    const/4 v7, 0x1

    .line 785
    iget-object v5, p0, Lcom/vkontakte/android/fragments/NotificationsFragment$NotificationsImagesAdapter;->this$0:Lcom/vkontakte/android/fragments/NotificationsFragment;

    iget-object v5, v5, Lcom/vkontakte/android/fragments/NotificationsFragment;->data:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/api/NotificationEntry;

    .line 786
    .local v1, "e":Lcom/vkontakte/android/api/NotificationEntry;
    iget v5, v1, Lcom/vkontakte/android/api/NotificationEntry;->feedbackType:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_3

    .line 787
    if-nez p2, :cond_1

    iget-object v5, v1, Lcom/vkontakte/android/api/NotificationEntry;->commentUser:Lcom/vkontakte/android/UserProfile;

    iget-object v4, v5, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    .line 841
    :cond_0
    :goto_0
    return-object v4

    .line 788
    :cond_1
    if-ne p2, v7, :cond_3

    .line 789
    const/4 v4, 0x0

    .line 790
    .local v4, "postphoto":Ljava/lang/String;
    iget-object v5, v1, Lcom/vkontakte/android/api/NotificationEntry;->parent:Lcom/vkontakte/android/NewsEntry;

    if-eqz v5, :cond_0

    .line 791
    iget-object v5, v1, Lcom/vkontakte/android/api/NotificationEntry;->parent:Lcom/vkontakte/android/NewsEntry;

    iget-object v5, v5, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/Attachment;

    .line 792
    .local v0, "att":Lcom/vkontakte/android/Attachment;
    instance-of v5, v0, Lcom/vkontakte/android/ImageAttachment;

    if-eqz v5, :cond_2

    .line 793
    check-cast v0, Lcom/vkontakte/android/ImageAttachment;

    .end local v0    # "att":Lcom/vkontakte/android/Attachment;
    invoke-interface {v0}, Lcom/vkontakte/android/ImageAttachment;->getImageURL()Ljava/lang/String;

    move-result-object v4

    .line 794
    goto :goto_0

    .line 800
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "postphoto":Ljava/lang/String;
    :cond_3
    iget v5, v1, Lcom/vkontakte/android/api/NotificationEntry;->feedbackType:I

    if-eq v5, v7, :cond_4

    iget v5, v1, Lcom/vkontakte/android/api/NotificationEntry;->feedbackType:I

    const/4 v6, 0x4

    if-ne v5, v6, :cond_7

    .line 801
    :cond_4
    iget-object v5, v1, Lcom/vkontakte/android/api/NotificationEntry;->users:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    const/4 v6, 0x6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    if-ne p2, v5, :cond_6

    .line 802
    const/4 v4, 0x0

    .line 803
    .restart local v4    # "postphoto":Ljava/lang/String;
    iget-object v5, v1, Lcom/vkontakte/android/api/NotificationEntry;->parent:Lcom/vkontakte/android/NewsEntry;

    if-eqz v5, :cond_0

    .line 804
    iget-object v5, v1, Lcom/vkontakte/android/api/NotificationEntry;->parent:Lcom/vkontakte/android/NewsEntry;

    iget-object v5, v5, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3    # "i$":Ljava/util/Iterator;
    :cond_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/Attachment;

    .line 805
    .restart local v0    # "att":Lcom/vkontakte/android/Attachment;
    instance-of v5, v0, Lcom/vkontakte/android/ImageAttachment;

    if-eqz v5, :cond_5

    .line 806
    check-cast v0, Lcom/vkontakte/android/ImageAttachment;

    .end local v0    # "att":Lcom/vkontakte/android/Attachment;
    invoke-interface {v0}, Lcom/vkontakte/android/ImageAttachment;->getImageURL()Ljava/lang/String;

    move-result-object v4

    .line 807
    goto :goto_0

    .line 812
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "postphoto":Ljava/lang/String;
    :cond_6
    iget-object v5, v1, Lcom/vkontakte/android/api/NotificationEntry;->users:Ljava/util/Vector;

    invoke-virtual {v5, p2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vkontakte/android/UserProfile;

    iget-object v4, v5, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    goto :goto_0

    .line 814
    :cond_7
    iget v5, v1, Lcom/vkontakte/android/api/NotificationEntry;->feedbackType:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_f

    .line 815
    packed-switch p2, :pswitch_data_0

    .line 821
    :cond_8
    iget-object v5, v1, Lcom/vkontakte/android/api/NotificationEntry;->parent:Lcom/vkontakte/android/NewsEntry;

    invoke-virtual {v5, v8}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v5

    if-eqz v5, :cond_9

    add-int/lit8 p2, p2, -0x1

    .line 822
    :cond_9
    add-int/lit8 p2, p2, -0x1

    .line 823
    const/4 v2, 0x0

    .line 824
    .local v2, "i":I
    iget-object v5, v1, Lcom/vkontakte/android/api/NotificationEntry;->parent:Lcom/vkontakte/android/NewsEntry;

    iget-object v5, v5, Lcom/vkontakte/android/NewsEntry;->repostAttachments:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3    # "i$":Ljava/util/Iterator;
    :cond_a
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/Attachment;

    .line 825
    .restart local v0    # "att":Lcom/vkontakte/android/Attachment;
    instance-of v5, v0, Lcom/vkontakte/android/ImageAttachment;

    if-eqz v5, :cond_a

    .line 826
    if-ne v2, p2, :cond_b

    .line 827
    check-cast v0, Lcom/vkontakte/android/ImageAttachment;

    .end local v0    # "att":Lcom/vkontakte/android/Attachment;
    invoke-interface {v0}, Lcom/vkontakte/android/ImageAttachment;->getImageURL()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    .line 817
    .end local v2    # "i":I
    .end local v3    # "i$":Ljava/util/Iterator;
    :pswitch_0
    iget-object v5, v1, Lcom/vkontakte/android/api/NotificationEntry;->parent:Lcom/vkontakte/android/NewsEntry;

    iget-object v4, v5, Lcom/vkontakte/android/NewsEntry;->userPhotoURL:Ljava/lang/String;

    goto/16 :goto_0

    .line 819
    :pswitch_1
    iget-object v5, v1, Lcom/vkontakte/android/api/NotificationEntry;->parent:Lcom/vkontakte/android/NewsEntry;

    invoke-virtual {v5, v8}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v5

    if-eqz v5, :cond_8

    iget-object v5, v1, Lcom/vkontakte/android/api/NotificationEntry;->parent:Lcom/vkontakte/android/NewsEntry;

    iget-object v4, v5, Lcom/vkontakte/android/NewsEntry;->retweetUserPhoto:Ljava/lang/String;

    goto/16 :goto_0

    .line 829
    .restart local v0    # "att":Lcom/vkontakte/android/Attachment;
    .restart local v2    # "i":I
    .restart local v3    # "i$":Ljava/util/Iterator;
    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 832
    .end local v0    # "att":Lcom/vkontakte/android/Attachment;
    :cond_c
    iget-object v5, v1, Lcom/vkontakte/android/api/NotificationEntry;->parent:Lcom/vkontakte/android/NewsEntry;

    iget-object v5, v5, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_d
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/Attachment;

    .line 833
    .restart local v0    # "att":Lcom/vkontakte/android/Attachment;
    instance-of v5, v0, Lcom/vkontakte/android/ImageAttachment;

    if-eqz v5, :cond_d

    .line 834
    if-ne v2, p2, :cond_e

    .line 835
    check-cast v0, Lcom/vkontakte/android/ImageAttachment;

    .end local v0    # "att":Lcom/vkontakte/android/Attachment;
    invoke-interface {v0}, Lcom/vkontakte/android/ImageAttachment;->getImageURL()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    .line 837
    .restart local v0    # "att":Lcom/vkontakte/android/Attachment;
    :cond_e
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 841
    .end local v0    # "att":Lcom/vkontakte/android/Attachment;
    .end local v2    # "i":I
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_f
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 815
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 747
    iget-object v0, p0, Lcom/vkontakte/android/fragments/NotificationsFragment$NotificationsImagesAdapter;->this$0:Lcom/vkontakte/android/fragments/NotificationsFragment;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/NotificationsFragment;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public imageLoaded(IILandroid/graphics/Bitmap;)V
    .locals 7
    .param p1, "_item"    # I
    .param p2, "_image"    # I
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 846
    iget-object v0, p0, Lcom/vkontakte/android/fragments/NotificationsFragment$NotificationsImagesAdapter;->this$0:Lcom/vkontakte/android/fragments/NotificationsFragment;

    invoke-virtual {v0}, Lcom/vkontakte/android/fragments/NotificationsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    .line 921
    :cond_0
    :goto_0
    return-void

    .line 848
    :cond_1
    move v2, p1

    .line 850
    .local v2, "item":I
    iget-object v0, p0, Lcom/vkontakte/android/fragments/NotificationsFragment$NotificationsImagesAdapter;->this$0:Lcom/vkontakte/android/fragments/NotificationsFragment;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/NotificationsFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    add-int/2addr v0, v2

    iget-object v1, p0, Lcom/vkontakte/android/fragments/NotificationsFragment$NotificationsImagesAdapter;->this$0:Lcom/vkontakte/android/fragments/NotificationsFragment;

    iget-object v1, v1, Lcom/vkontakte/android/fragments/NotificationsFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/fragments/NotificationsFragment$NotificationsImagesAdapter;->this$0:Lcom/vkontakte/android/fragments/NotificationsFragment;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/NotificationsFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    add-int/2addr v0, v2

    iget-object v1, p0, Lcom/vkontakte/android/fragments/NotificationsFragment$NotificationsImagesAdapter;->this$0:Lcom/vkontakte/android/fragments/NotificationsFragment;

    iget-object v1, v1, Lcom/vkontakte/android/fragments/NotificationsFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 851
    iget-object v0, p0, Lcom/vkontakte/android/fragments/NotificationsFragment$NotificationsImagesAdapter;->this$0:Lcom/vkontakte/android/fragments/NotificationsFragment;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/NotificationsFragment;->list:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/vkontakte/android/fragments/NotificationsFragment$NotificationsImagesAdapter;->this$0:Lcom/vkontakte/android/fragments/NotificationsFragment;

    iget-object v1, v1, Lcom/vkontakte/android/fragments/NotificationsFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    add-int/2addr v1, v2

    iget-object v4, p0, Lcom/vkontakte/android/fragments/NotificationsFragment$NotificationsImagesAdapter;->this$0:Lcom/vkontakte/android/fragments/NotificationsFragment;

    iget-object v4, v4, Lcom/vkontakte/android/fragments/NotificationsFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v4

    sub-int/2addr v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 852
    .local v3, "view":Landroid/view/View;
    iget-object v0, p0, Lcom/vkontakte/android/fragments/NotificationsFragment$NotificationsImagesAdapter;->this$0:Lcom/vkontakte/android/fragments/NotificationsFragment;

    invoke-virtual {v0}, Lcom/vkontakte/android/fragments/NotificationsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    new-instance v0, Lcom/vkontakte/android/fragments/NotificationsFragment$NotificationsImagesAdapter$1;

    move-object v1, p0

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/vkontakte/android/fragments/NotificationsFragment$NotificationsImagesAdapter$1;-><init>(Lcom/vkontakte/android/fragments/NotificationsFragment$NotificationsImagesAdapter;ILandroid/view/View;ILandroid/graphics/Bitmap;)V

    invoke-virtual {v6, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
