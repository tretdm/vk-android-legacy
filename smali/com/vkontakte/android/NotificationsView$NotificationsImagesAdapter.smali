.class Lcom/vkontakte/android/NotificationsView$NotificationsImagesAdapter;
.super Lcom/vkontakte/android/ui/ListImageLoaderAdapter;
.source "NotificationsView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/NotificationsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NotificationsImagesAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/NotificationsView;


# direct methods
.method private constructor <init>(Lcom/vkontakte/android/NotificationsView;)V
    .locals 0

    .prologue
    .line 798
    iput-object p1, p0, Lcom/vkontakte/android/NotificationsView$NotificationsImagesAdapter;->this$0:Lcom/vkontakte/android/NotificationsView;

    invoke-direct {p0}, Lcom/vkontakte/android/ui/ListImageLoaderAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkontakte/android/NotificationsView;Lcom/vkontakte/android/NotificationsView$NotificationsImagesAdapter;)V
    .locals 0

    .prologue
    .line 798
    invoke-direct {p0, p1}, Lcom/vkontakte/android/NotificationsView$NotificationsImagesAdapter;-><init>(Lcom/vkontakte/android/NotificationsView;)V

    return-void
.end method

.method static synthetic access$1(Lcom/vkontakte/android/NotificationsView$NotificationsImagesAdapter;)Lcom/vkontakte/android/NotificationsView;
    .locals 1

    .prologue
    .line 798
    iget-object v0, p0, Lcom/vkontakte/android/NotificationsView$NotificationsImagesAdapter;->this$0:Lcom/vkontakte/android/NotificationsView;

    return-object v0
.end method


# virtual methods
.method public getImageCountForItem(I)I
    .locals 8
    .param p1, "item"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 806
    sget-object v6, Lcom/vkontakte/android/NotificationsView;->notifications:Ljava/util/Vector;

    invoke-virtual {v6, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/api/NotificationEntry;

    .line 807
    .local v2, "e":Lcom/vkontakte/android/api/NotificationEntry;
    iget v6, v2, Lcom/vkontakte/android/api/NotificationEntry;->feedbackType:I

    const/4 v7, 0x2

    if-eq v6, v7, :cond_8

    .line 808
    const/4 v3, 0x0

    .line 809
    .local v3, "postphoto":Ljava/lang/String;
    iget-object v6, v2, Lcom/vkontakte/android/api/NotificationEntry;->parent:Lcom/vkontakte/android/NewsEntry;

    if-eqz v6, :cond_1

    .line 810
    iget-object v6, v2, Lcom/vkontakte/android/api/NotificationEntry;->parent:Lcom/vkontakte/android/NewsEntry;

    iget-object v6, v6, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_3

    .line 817
    :cond_1
    :goto_0
    iget v6, v2, Lcom/vkontakte/android/api/NotificationEntry;->feedbackType:I

    const/4 v7, 0x3

    if-ne v6, v7, :cond_5

    .line 818
    if-nez v3, :cond_4

    :goto_1
    add-int/lit8 v4, v4, 0x1

    .line 829
    .end local v3    # "postphoto":Ljava/lang/String;
    :cond_2
    :goto_2
    return v4

    .line 810
    .restart local v3    # "postphoto":Ljava/lang/String;
    :cond_3
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/Attachment;

    .line 811
    .local v0, "att":Lcom/vkontakte/android/Attachment;
    instance-of v7, v0, Lcom/vkontakte/android/ImageAttachment;

    if-eqz v7, :cond_0

    .line 812
    check-cast v0, Lcom/vkontakte/android/ImageAttachment;

    .end local v0    # "att":Lcom/vkontakte/android/Attachment;
    invoke-interface {v0}, Lcom/vkontakte/android/ImageAttachment;->getImageURL()Ljava/lang/String;

    move-result-object v3

    .line 813
    goto :goto_0

    :cond_4
    move v4, v5

    .line 818
    goto :goto_1

    .line 820
    :cond_5
    iget v6, v2, Lcom/vkontakte/android/api/NotificationEntry;->feedbackType:I

    if-eq v6, v5, :cond_6

    iget v6, v2, Lcom/vkontakte/android/api/NotificationEntry;->feedbackType:I

    const/4 v7, 0x4

    if-ne v6, v7, :cond_2

    .line 821
    :cond_6
    iget-object v6, v2, Lcom/vkontakte/android/api/NotificationEntry;->users:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    const/4 v7, 0x5

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    if-nez v3, :cond_7

    :goto_3
    add-int/2addr v4, v6

    goto :goto_2

    :cond_7
    move v4, v5

    goto :goto_3

    .line 824
    .end local v3    # "postphoto":Ljava/lang/String;
    :cond_8
    const/4 v1, 0x1

    .line 825
    .local v1, "count":I
    iget-object v4, v2, Lcom/vkontakte/android/api/NotificationEntry;->parent:Lcom/vkontakte/android/NewsEntry;

    iget-object v4, v4, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_9
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_a

    move v4, v1

    .line 827
    goto :goto_2

    .line 825
    :cond_a
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/Attachment;

    .line 826
    .restart local v0    # "att":Lcom/vkontakte/android/Attachment;
    instance-of v5, v0, Lcom/vkontakte/android/PhotoAttachment;

    if-nez v5, :cond_b

    instance-of v5, v0, Lcom/vkontakte/android/VideoAttachment;

    if-eqz v5, :cond_9

    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_4
.end method

.method public getImageURL(II)Ljava/lang/String;
    .locals 8
    .param p1, "item"    # I
    .param p2, "image"    # I

    .prologue
    const/16 v7, 0x20

    const/4 v6, 0x1

    .line 834
    sget-object v4, Lcom/vkontakte/android/NotificationsView;->notifications:Ljava/util/Vector;

    invoke-virtual {v4, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/api/NotificationEntry;

    .line 835
    .local v1, "e":Lcom/vkontakte/android/api/NotificationEntry;
    iget v4, v1, Lcom/vkontakte/android/api/NotificationEntry;->feedbackType:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_3

    .line 836
    if-nez p2, :cond_1

    iget-object v4, v1, Lcom/vkontakte/android/api/NotificationEntry;->commentUser:Lcom/vkontakte/android/UserProfile;

    iget-object v3, v4, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    .line 891
    :cond_0
    :goto_0
    return-object v3

    .line 837
    :cond_1
    if-ne p2, v6, :cond_3

    .line 838
    const/4 v3, 0x0

    .line 839
    .local v3, "postphoto":Ljava/lang/String;
    iget-object v4, v1, Lcom/vkontakte/android/api/NotificationEntry;->parent:Lcom/vkontakte/android/NewsEntry;

    if-eqz v4, :cond_0

    .line 840
    iget-object v4, v1, Lcom/vkontakte/android/api/NotificationEntry;->parent:Lcom/vkontakte/android/NewsEntry;

    iget-object v4, v4, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/Attachment;

    .line 841
    .local v0, "att":Lcom/vkontakte/android/Attachment;
    instance-of v5, v0, Lcom/vkontakte/android/ImageAttachment;

    if-eqz v5, :cond_2

    .line 842
    check-cast v0, Lcom/vkontakte/android/ImageAttachment;

    .end local v0    # "att":Lcom/vkontakte/android/Attachment;
    invoke-interface {v0}, Lcom/vkontakte/android/ImageAttachment;->getImageURL()Ljava/lang/String;

    move-result-object v3

    .line 843
    goto :goto_0

    .line 849
    .end local v3    # "postphoto":Ljava/lang/String;
    :cond_3
    iget v4, v1, Lcom/vkontakte/android/api/NotificationEntry;->feedbackType:I

    if-eq v4, v6, :cond_4

    iget v4, v1, Lcom/vkontakte/android/api/NotificationEntry;->feedbackType:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_7

    .line 850
    :cond_4
    iget-object v4, v1, Lcom/vkontakte/android/api/NotificationEntry;->users:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    const/4 v5, 0x5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    if-ne p2, v4, :cond_6

    .line 851
    const/4 v3, 0x0

    .line 852
    .restart local v3    # "postphoto":Ljava/lang/String;
    iget-object v4, v1, Lcom/vkontakte/android/api/NotificationEntry;->parent:Lcom/vkontakte/android/NewsEntry;

    if-eqz v4, :cond_0

    .line 853
    iget-object v4, v1, Lcom/vkontakte/android/api/NotificationEntry;->parent:Lcom/vkontakte/android/NewsEntry;

    iget-object v4, v4, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/Attachment;

    .line 854
    .restart local v0    # "att":Lcom/vkontakte/android/Attachment;
    instance-of v5, v0, Lcom/vkontakte/android/ImageAttachment;

    if-eqz v5, :cond_5

    .line 855
    check-cast v0, Lcom/vkontakte/android/ImageAttachment;

    .end local v0    # "att":Lcom/vkontakte/android/Attachment;
    invoke-interface {v0}, Lcom/vkontakte/android/ImageAttachment;->getImageURL()Ljava/lang/String;

    move-result-object v3

    .line 856
    goto :goto_0

    .line 861
    .end local v3    # "postphoto":Ljava/lang/String;
    :cond_6
    iget-object v4, v1, Lcom/vkontakte/android/api/NotificationEntry;->users:Ljava/util/Vector;

    invoke-virtual {v4, p2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vkontakte/android/UserProfile;

    iget-object v3, v4, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    goto :goto_0

    .line 863
    :cond_7
    iget v4, v1, Lcom/vkontakte/android/api/NotificationEntry;->feedbackType:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_b

    .line 864
    packed-switch p2, :pswitch_data_0

    .line 870
    :cond_8
    iget-object v4, v1, Lcom/vkontakte/android/api/NotificationEntry;->parent:Lcom/vkontakte/android/NewsEntry;

    invoke-virtual {v4, v7}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v4

    if-eqz v4, :cond_9

    add-int/lit8 p2, p2, -0x1

    .line 871
    :cond_9
    const/4 v2, 0x0

    .line 872
    .local v2, "imgindex":I
    iget-object v4, v1, Lcom/vkontakte/android/api/NotificationEntry;->parent:Lcom/vkontakte/android/NewsEntry;

    iget-object v4, v4, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_c

    .line 891
    .end local v2    # "imgindex":I
    :cond_b
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 866
    :pswitch_0
    iget-object v4, v1, Lcom/vkontakte/android/api/NotificationEntry;->parent:Lcom/vkontakte/android/NewsEntry;

    iget-object v3, v4, Lcom/vkontakte/android/NewsEntry;->userPhotoURL:Ljava/lang/String;

    goto/16 :goto_0

    .line 868
    :pswitch_1
    iget-object v4, v1, Lcom/vkontakte/android/api/NotificationEntry;->parent:Lcom/vkontakte/android/NewsEntry;

    invoke-virtual {v4, v7}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v4

    if-eqz v4, :cond_8

    iget-object v4, v1, Lcom/vkontakte/android/api/NotificationEntry;->parent:Lcom/vkontakte/android/NewsEntry;

    iget-object v3, v4, Lcom/vkontakte/android/NewsEntry;->retweetUserPhoto:Ljava/lang/String;

    goto/16 :goto_0

    .line 872
    .restart local v2    # "imgindex":I
    :cond_c
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/Attachment;

    .line 873
    .restart local v0    # "att":Lcom/vkontakte/android/Attachment;
    instance-of v4, v0, Lcom/vkontakte/android/PhotoAttachment;

    if-eqz v4, :cond_d

    .line 874
    add-int/lit8 v2, v2, 0x1

    .line 875
    if-ne v2, p2, :cond_a

    .line 876
    check-cast v0, Lcom/vkontakte/android/PhotoAttachment;

    .end local v0    # "att":Lcom/vkontakte/android/Attachment;
    invoke-virtual {v0}, Lcom/vkontakte/android/PhotoAttachment;->getThumbURL()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    .line 878
    .restart local v0    # "att":Lcom/vkontakte/android/Attachment;
    :cond_d
    instance-of v4, v0, Lcom/vkontakte/android/VideoAttachment;

    if-eqz v4, :cond_e

    .line 879
    add-int/lit8 v2, v2, 0x1

    .line 880
    if-ne v2, p2, :cond_a

    .line 881
    check-cast v0, Lcom/vkontakte/android/VideoAttachment;

    .end local v0    # "att":Lcom/vkontakte/android/Attachment;
    iget-object v3, v0, Lcom/vkontakte/android/VideoAttachment;->image:Ljava/lang/String;

    goto/16 :goto_0

    .line 883
    .restart local v0    # "att":Lcom/vkontakte/android/Attachment;
    :cond_e
    instance-of v4, v0, Lcom/vkontakte/android/DocumentAttachment;

    if-eqz v4, :cond_a

    move-object v4, v0

    check-cast v4, Lcom/vkontakte/android/DocumentAttachment;

    iget-object v4, v4, Lcom/vkontakte/android/DocumentAttachment;->thumb:Ljava/lang/String;

    if-eqz v4, :cond_a

    move-object v4, v0

    check-cast v4, Lcom/vkontakte/android/DocumentAttachment;

    iget-object v4, v4, Lcom/vkontakte/android/DocumentAttachment;->thumb:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_a

    .line 884
    add-int/lit8 v2, v2, 0x1

    .line 885
    if-ne v2, p2, :cond_a

    .line 886
    check-cast v0, Lcom/vkontakte/android/DocumentAttachment;

    .end local v0    # "att":Lcom/vkontakte/android/Attachment;
    iget-object v3, v0, Lcom/vkontakte/android/DocumentAttachment;->thumb:Ljava/lang/String;

    goto/16 :goto_0

    .line 864
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 801
    sget-object v0, Lcom/vkontakte/android/NotificationsView;->notifications:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public imageLoaded(IILandroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "_item"    # I
    .param p2, "_image"    # I
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 897
    move v0, p1

    .line 898
    .local v0, "item":I
    iget-object v1, p0, Lcom/vkontakte/android/NotificationsView$NotificationsImagesAdapter;->this$0:Lcom/vkontakte/android/NotificationsView;

    invoke-static {v1}, Lcom/vkontakte/android/NotificationsView;->access$5(Lcom/vkontakte/android/NotificationsView;)Lcom/vkontakte/android/ui/RefreshableListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vkontakte/android/ui/RefreshableListView;->getFirstVisiblePosition()I

    move-result v1

    if-lt v0, v1, :cond_0

    iget-object v1, p0, Lcom/vkontakte/android/NotificationsView$NotificationsImagesAdapter;->this$0:Lcom/vkontakte/android/NotificationsView;

    invoke-static {v1}, Lcom/vkontakte/android/NotificationsView;->access$5(Lcom/vkontakte/android/NotificationsView;)Lcom/vkontakte/android/ui/RefreshableListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vkontakte/android/ui/RefreshableListView;->getLastVisiblePosition()I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 899
    iget-object v1, p0, Lcom/vkontakte/android/NotificationsView$NotificationsImagesAdapter;->this$0:Lcom/vkontakte/android/NotificationsView;

    new-instance v2, Lcom/vkontakte/android/NotificationsView$NotificationsImagesAdapter$1;

    invoke-direct {v2, p0, v0, p2, p3}, Lcom/vkontakte/android/NotificationsView$NotificationsImagesAdapter$1;-><init>(Lcom/vkontakte/android/NotificationsView$NotificationsImagesAdapter;IILandroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/NotificationsView;->post(Ljava/lang/Runnable;)Z

    .line 980
    :cond_0
    return-void
.end method
