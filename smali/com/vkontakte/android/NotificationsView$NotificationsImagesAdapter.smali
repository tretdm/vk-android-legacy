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
    .line 719
    iput-object p1, p0, Lcom/vkontakte/android/NotificationsView$NotificationsImagesAdapter;->this$0:Lcom/vkontakte/android/NotificationsView;

    invoke-direct {p0}, Lcom/vkontakte/android/ui/ListImageLoaderAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkontakte/android/NotificationsView;Lcom/vkontakte/android/NotificationsView$NotificationsImagesAdapter;)V
    .locals 0

    .prologue
    .line 719
    invoke-direct {p0, p1}, Lcom/vkontakte/android/NotificationsView$NotificationsImagesAdapter;-><init>(Lcom/vkontakte/android/NotificationsView;)V

    return-void
.end method

.method static synthetic access$1(Lcom/vkontakte/android/NotificationsView$NotificationsImagesAdapter;)Lcom/vkontakte/android/NotificationsView;
    .locals 1

    .prologue
    .line 719
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

    .line 727
    invoke-static {}, Lcom/vkontakte/android/NotificationsView;->access$0()Ljava/util/Vector;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/api/NotificationEntry;

    .line 728
    .local v2, "e":Lcom/vkontakte/android/api/NotificationEntry;
    iget v6, v2, Lcom/vkontakte/android/api/NotificationEntry;->feedbackType:I

    const/4 v7, 0x2

    if-eq v6, v7, :cond_9

    .line 729
    const/4 v3, 0x0

    .line 730
    .local v3, "postphoto":Ljava/lang/String;
    iget-object v6, v2, Lcom/vkontakte/android/api/NotificationEntry;->parent:Lcom/vkontakte/android/NewsEntry;

    if-eqz v6, :cond_1

    .line 731
    iget-object v6, v2, Lcom/vkontakte/android/api/NotificationEntry;->parent:Lcom/vkontakte/android/NewsEntry;

    iget-object v6, v6, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_3

    .line 742
    :cond_1
    :goto_0
    iget v6, v2, Lcom/vkontakte/android/api/NotificationEntry;->feedbackType:I

    const/4 v7, 0x3

    if-ne v6, v7, :cond_6

    .line 743
    if-nez v3, :cond_5

    :goto_1
    add-int/lit8 v4, v4, 0x1

    .line 754
    .end local v3    # "postphoto":Ljava/lang/String;
    :cond_2
    :goto_2
    return v4

    .line 731
    .restart local v3    # "postphoto":Ljava/lang/String;
    :cond_3
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/Attachment;

    .line 732
    .local v0, "att":Lcom/vkontakte/android/Attachment;
    instance-of v7, v0, Lcom/vkontakte/android/PhotoAttachment;

    if-eqz v7, :cond_4

    .line 733
    check-cast v0, Lcom/vkontakte/android/PhotoAttachment;

    .end local v0    # "att":Lcom/vkontakte/android/Attachment;
    iget-object v3, v0, Lcom/vkontakte/android/PhotoAttachment;->srcThumb:Ljava/lang/String;

    .line 734
    goto :goto_0

    .line 736
    .restart local v0    # "att":Lcom/vkontakte/android/Attachment;
    :cond_4
    instance-of v7, v0, Lcom/vkontakte/android/VideoAttachment;

    if-eqz v7, :cond_0

    .line 737
    check-cast v0, Lcom/vkontakte/android/VideoAttachment;

    .end local v0    # "att":Lcom/vkontakte/android/Attachment;
    iget-object v3, v0, Lcom/vkontakte/android/VideoAttachment;->image:Ljava/lang/String;

    .line 738
    goto :goto_0

    :cond_5
    move v4, v5

    .line 743
    goto :goto_1

    .line 745
    :cond_6
    iget v6, v2, Lcom/vkontakte/android/api/NotificationEntry;->feedbackType:I

    if-eq v6, v5, :cond_7

    iget v6, v2, Lcom/vkontakte/android/api/NotificationEntry;->feedbackType:I

    const/4 v7, 0x4

    if-ne v6, v7, :cond_2

    .line 746
    :cond_7
    iget-object v6, v2, Lcom/vkontakte/android/api/NotificationEntry;->users:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    const/4 v7, 0x5

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    if-nez v3, :cond_8

    :goto_3
    add-int/2addr v4, v6

    goto :goto_2

    :cond_8
    move v4, v5

    goto :goto_3

    .line 749
    .end local v3    # "postphoto":Ljava/lang/String;
    :cond_9
    const/4 v1, 0x1

    .line 750
    .local v1, "count":I
    iget-object v4, v2, Lcom/vkontakte/android/api/NotificationEntry;->parent:Lcom/vkontakte/android/NewsEntry;

    iget-object v4, v4, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_a
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_b

    move v4, v1

    .line 752
    goto :goto_2

    .line 750
    :cond_b
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/Attachment;

    .line 751
    .restart local v0    # "att":Lcom/vkontakte/android/Attachment;
    instance-of v5, v0, Lcom/vkontakte/android/PhotoAttachment;

    if-nez v5, :cond_c

    instance-of v5, v0, Lcom/vkontakte/android/VideoAttachment;

    if-eqz v5, :cond_a

    :cond_c
    add-int/lit8 v1, v1, 0x1

    goto :goto_4
.end method

.method public getImageURL(II)Ljava/lang/String;
    .locals 7
    .param p1, "item"    # I
    .param p2, "image"    # I

    .prologue
    const/4 v6, 0x1

    .line 759
    invoke-static {}, Lcom/vkontakte/android/NotificationsView;->access$0()Ljava/util/Vector;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/api/NotificationEntry;

    .line 760
    .local v1, "e":Lcom/vkontakte/android/api/NotificationEntry;
    iget v4, v1, Lcom/vkontakte/android/api/NotificationEntry;->feedbackType:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_4

    .line 761
    if-nez p2, :cond_1

    iget-object v4, v1, Lcom/vkontakte/android/api/NotificationEntry;->commentUser:Lcom/vkontakte/android/UserProfile;

    iget-object v3, v4, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    .line 815
    :cond_0
    :goto_0
    return-object v3

    .line 762
    :cond_1
    if-ne p2, v6, :cond_4

    .line 763
    const/4 v3, 0x0

    .line 764
    .local v3, "postphoto":Ljava/lang/String;
    iget-object v4, v1, Lcom/vkontakte/android/api/NotificationEntry;->parent:Lcom/vkontakte/android/NewsEntry;

    if-eqz v4, :cond_0

    .line 765
    iget-object v4, v1, Lcom/vkontakte/android/api/NotificationEntry;->parent:Lcom/vkontakte/android/NewsEntry;

    iget-object v4, v4, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/Attachment;

    .line 766
    .local v0, "att":Lcom/vkontakte/android/Attachment;
    instance-of v5, v0, Lcom/vkontakte/android/PhotoAttachment;

    if-eqz v5, :cond_3

    .line 767
    check-cast v0, Lcom/vkontakte/android/PhotoAttachment;

    .end local v0    # "att":Lcom/vkontakte/android/Attachment;
    iget-object v3, v0, Lcom/vkontakte/android/PhotoAttachment;->srcThumb:Ljava/lang/String;

    .line 768
    goto :goto_0

    .line 770
    .restart local v0    # "att":Lcom/vkontakte/android/Attachment;
    :cond_3
    instance-of v5, v0, Lcom/vkontakte/android/VideoAttachment;

    if-eqz v5, :cond_2

    .line 771
    check-cast v0, Lcom/vkontakte/android/VideoAttachment;

    .end local v0    # "att":Lcom/vkontakte/android/Attachment;
    iget-object v3, v0, Lcom/vkontakte/android/VideoAttachment;->image:Ljava/lang/String;

    .line 772
    goto :goto_0

    .line 778
    .end local v3    # "postphoto":Ljava/lang/String;
    :cond_4
    iget v4, v1, Lcom/vkontakte/android/api/NotificationEntry;->feedbackType:I

    if-eq v4, v6, :cond_5

    iget v4, v1, Lcom/vkontakte/android/api/NotificationEntry;->feedbackType:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_9

    .line 779
    :cond_5
    iget-object v4, v1, Lcom/vkontakte/android/api/NotificationEntry;->users:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    const/4 v5, 0x5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    if-ne p2, v4, :cond_8

    .line 780
    const/4 v3, 0x0

    .line 781
    .restart local v3    # "postphoto":Ljava/lang/String;
    iget-object v4, v1, Lcom/vkontakte/android/api/NotificationEntry;->parent:Lcom/vkontakte/android/NewsEntry;

    if-eqz v4, :cond_0

    .line 782
    iget-object v4, v1, Lcom/vkontakte/android/api/NotificationEntry;->parent:Lcom/vkontakte/android/NewsEntry;

    iget-object v4, v4, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/Attachment;

    .line 783
    .restart local v0    # "att":Lcom/vkontakte/android/Attachment;
    instance-of v5, v0, Lcom/vkontakte/android/PhotoAttachment;

    if-eqz v5, :cond_7

    .line 784
    check-cast v0, Lcom/vkontakte/android/PhotoAttachment;

    .end local v0    # "att":Lcom/vkontakte/android/Attachment;
    iget-object v3, v0, Lcom/vkontakte/android/PhotoAttachment;->srcThumb:Ljava/lang/String;

    .line 785
    goto :goto_0

    .line 787
    .restart local v0    # "att":Lcom/vkontakte/android/Attachment;
    :cond_7
    instance-of v5, v0, Lcom/vkontakte/android/VideoAttachment;

    if-eqz v5, :cond_6

    .line 788
    check-cast v0, Lcom/vkontakte/android/VideoAttachment;

    .end local v0    # "att":Lcom/vkontakte/android/Attachment;
    iget-object v3, v0, Lcom/vkontakte/android/VideoAttachment;->image:Ljava/lang/String;

    .line 789
    goto :goto_0

    .line 794
    .end local v3    # "postphoto":Ljava/lang/String;
    :cond_8
    iget-object v4, v1, Lcom/vkontakte/android/api/NotificationEntry;->users:Ljava/util/Vector;

    invoke-virtual {v4, p2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vkontakte/android/UserProfile;

    iget-object v3, v4, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    goto :goto_0

    .line 796
    :cond_9
    iget v4, v1, Lcom/vkontakte/android/api/NotificationEntry;->feedbackType:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_c

    .line 797
    if-nez p2, :cond_a

    .line 798
    iget-object v4, v1, Lcom/vkontakte/android/api/NotificationEntry;->parent:Lcom/vkontakte/android/NewsEntry;

    iget-object v3, v4, Lcom/vkontakte/android/NewsEntry;->userPhotoURL:Ljava/lang/String;

    goto/16 :goto_0

    .line 799
    :cond_a
    const/4 v2, 0x0

    .line 800
    .local v2, "imgindex":I
    iget-object v4, v1, Lcom/vkontakte/android/api/NotificationEntry;->parent:Lcom/vkontakte/android/NewsEntry;

    iget-object v4, v4, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_d

    .line 815
    .end local v2    # "imgindex":I
    :cond_c
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 800
    .restart local v2    # "imgindex":I
    :cond_d
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/Attachment;

    .line 801
    .restart local v0    # "att":Lcom/vkontakte/android/Attachment;
    instance-of v5, v0, Lcom/vkontakte/android/PhotoAttachment;

    if-eqz v5, :cond_e

    .line 802
    add-int/lit8 v2, v2, 0x1

    .line 803
    if-ne v2, p2, :cond_e

    .line 804
    check-cast v0, Lcom/vkontakte/android/PhotoAttachment;

    .end local v0    # "att":Lcom/vkontakte/android/Attachment;
    iget-object v3, v0, Lcom/vkontakte/android/PhotoAttachment;->srcThumb:Ljava/lang/String;

    goto/16 :goto_0

    .line 807
    .restart local v0    # "att":Lcom/vkontakte/android/Attachment;
    :cond_e
    instance-of v5, v0, Lcom/vkontakte/android/VideoAttachment;

    if-eqz v5, :cond_b

    .line 808
    add-int/lit8 v2, v2, 0x1

    .line 809
    if-ne v2, p2, :cond_b

    .line 810
    check-cast v0, Lcom/vkontakte/android/VideoAttachment;

    .end local v0    # "att":Lcom/vkontakte/android/Attachment;
    iget-object v3, v0, Lcom/vkontakte/android/VideoAttachment;->image:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 722
    invoke-static {}, Lcom/vkontakte/android/NotificationsView;->access$0()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public imageLoaded(IILandroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "_item"    # I
    .param p2, "image"    # I
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 821
    move v0, p1

    .line 822
    .local v0, "item":I
    iget-object v1, p0, Lcom/vkontakte/android/NotificationsView$NotificationsImagesAdapter;->this$0:Lcom/vkontakte/android/NotificationsView;

    invoke-static {v1}, Lcom/vkontakte/android/NotificationsView;->access$6(Lcom/vkontakte/android/NotificationsView;)Lcom/vkontakte/android/ui/RefreshableListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vkontakte/android/ui/RefreshableListView;->getFirstVisiblePosition()I

    move-result v1

    if-lt v0, v1, :cond_0

    iget-object v1, p0, Lcom/vkontakte/android/NotificationsView$NotificationsImagesAdapter;->this$0:Lcom/vkontakte/android/NotificationsView;

    invoke-static {v1}, Lcom/vkontakte/android/NotificationsView;->access$6(Lcom/vkontakte/android/NotificationsView;)Lcom/vkontakte/android/ui/RefreshableListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vkontakte/android/ui/RefreshableListView;->getLastVisiblePosition()I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 823
    iget-object v1, p0, Lcom/vkontakte/android/NotificationsView$NotificationsImagesAdapter;->this$0:Lcom/vkontakte/android/NotificationsView;

    new-instance v2, Lcom/vkontakte/android/NotificationsView$NotificationsImagesAdapter$1;

    invoke-direct {v2, p0, v0, p2, p3}, Lcom/vkontakte/android/NotificationsView$NotificationsImagesAdapter$1;-><init>(Lcom/vkontakte/android/NotificationsView$NotificationsImagesAdapter;IILandroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/NotificationsView;->post(Ljava/lang/Runnable;)Z

    .line 882
    :cond_0
    return-void
.end method
