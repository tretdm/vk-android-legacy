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
    .line 954
    iput-object p1, p0, Lcom/vkontakte/android/NotificationsView$NotificationsImagesAdapter;->this$0:Lcom/vkontakte/android/NotificationsView;

    invoke-direct {p0}, Lcom/vkontakte/android/ui/ListImageLoaderAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkontakte/android/NotificationsView;Lcom/vkontakte/android/NotificationsView$NotificationsImagesAdapter;)V
    .locals 0

    .prologue
    .line 954
    invoke-direct {p0, p1}, Lcom/vkontakte/android/NotificationsView$NotificationsImagesAdapter;-><init>(Lcom/vkontakte/android/NotificationsView;)V

    return-void
.end method


# virtual methods
.method public getImageCountForItem(I)I
    .locals 8
    .param p1, "item"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 962
    sget-object v6, Lcom/vkontakte/android/NotificationsView;->notifications:Ljava/util/Vector;

    invoke-virtual {v6, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/api/NotificationEntry;

    .line 963
    .local v2, "e":Lcom/vkontakte/android/api/NotificationEntry;
    iget v6, v2, Lcom/vkontakte/android/api/NotificationEntry;->feedbackType:I

    const/4 v7, 0x5

    if-ne v6, v7, :cond_1

    .line 990
    :cond_0
    :goto_0
    return v4

    .line 965
    :cond_1
    iget v6, v2, Lcom/vkontakte/android/api/NotificationEntry;->feedbackType:I

    const/4 v7, 0x2

    if-eq v6, v7, :cond_9

    .line 966
    const/4 v3, 0x0

    .line 967
    .local v3, "postphoto":Ljava/lang/String;
    iget-object v6, v2, Lcom/vkontakte/android/api/NotificationEntry;->parent:Lcom/vkontakte/android/NewsEntry;

    if-eqz v6, :cond_3

    .line 968
    iget-object v6, v2, Lcom/vkontakte/android/api/NotificationEntry;->parent:Lcom/vkontakte/android/NewsEntry;

    iget-object v6, v6, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_4

    .line 975
    :cond_3
    :goto_1
    iget v6, v2, Lcom/vkontakte/android/api/NotificationEntry;->feedbackType:I

    const/4 v7, 0x3

    if-ne v6, v7, :cond_6

    .line 976
    if-nez v3, :cond_5

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 968
    :cond_4
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/Attachment;

    .line 969
    .local v0, "att":Lcom/vkontakte/android/Attachment;
    instance-of v7, v0, Lcom/vkontakte/android/ImageAttachment;

    if-eqz v7, :cond_2

    .line 970
    check-cast v0, Lcom/vkontakte/android/ImageAttachment;

    .end local v0    # "att":Lcom/vkontakte/android/Attachment;
    invoke-interface {v0}, Lcom/vkontakte/android/ImageAttachment;->getImageURL()Ljava/lang/String;

    move-result-object v3

    .line 971
    goto :goto_1

    :cond_5
    move v4, v5

    .line 976
    goto :goto_2

    .line 978
    :cond_6
    iget v6, v2, Lcom/vkontakte/android/api/NotificationEntry;->feedbackType:I

    if-eq v6, v5, :cond_7

    iget v6, v2, Lcom/vkontakte/android/api/NotificationEntry;->feedbackType:I

    const/4 v7, 0x4

    if-ne v6, v7, :cond_0

    .line 979
    :cond_7
    iget-object v6, v2, Lcom/vkontakte/android/api/NotificationEntry;->users:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    const/4 v7, 0x6

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    if-nez v3, :cond_8

    :goto_3
    add-int/2addr v4, v6

    goto :goto_0

    :cond_8
    move v4, v5

    goto :goto_3

    .line 982
    .end local v3    # "postphoto":Ljava/lang/String;
    :cond_9
    const/4 v1, 0x1

    .line 983
    .local v1, "count":I
    iget-object v4, v2, Lcom/vkontakte/android/api/NotificationEntry;->parent:Lcom/vkontakte/android/NewsEntry;

    iget-object v4, v4, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_a
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_d

    .line 985
    iget-object v4, v2, Lcom/vkontakte/android/api/NotificationEntry;->parent:Lcom/vkontakte/android/NewsEntry;

    iget-object v4, v4, Lcom/vkontakte/android/NewsEntry;->repostAttachments:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_b
    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_e

    .line 987
    iget-object v4, v2, Lcom/vkontakte/android/api/NotificationEntry;->parent:Lcom/vkontakte/android/NewsEntry;

    const/16 v5, 0x20

    invoke-virtual {v4, v5}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v4

    if-eqz v4, :cond_c

    add-int/lit8 v1, v1, 0x1

    :cond_c
    move v4, v1

    .line 988
    goto :goto_0

    .line 983
    :cond_d
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/Attachment;

    .line 984
    .restart local v0    # "att":Lcom/vkontakte/android/Attachment;
    instance-of v5, v0, Lcom/vkontakte/android/ImageAttachment;

    if-eqz v5, :cond_a

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 985
    .end local v0    # "att":Lcom/vkontakte/android/Attachment;
    :cond_e
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/Attachment;

    .line 986
    .restart local v0    # "att":Lcom/vkontakte/android/Attachment;
    instance-of v5, v0, Lcom/vkontakte/android/ImageAttachment;

    if-eqz v5, :cond_b

    add-int/lit8 v1, v1, 0x1

    goto :goto_5
.end method

.method public getImageURL(II)Ljava/lang/String;
    .locals 8
    .param p1, "item"    # I
    .param p2, "image"    # I

    .prologue
    const/16 v7, 0x20

    const/4 v6, 0x1

    .line 995
    sget-object v4, Lcom/vkontakte/android/NotificationsView;->notifications:Ljava/util/Vector;

    invoke-virtual {v4, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/api/NotificationEntry;

    .line 996
    .local v1, "e":Lcom/vkontakte/android/api/NotificationEntry;
    iget v4, v1, Lcom/vkontakte/android/api/NotificationEntry;->feedbackType:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_3

    .line 997
    if-nez p2, :cond_1

    iget-object v4, v1, Lcom/vkontakte/android/api/NotificationEntry;->commentUser:Lcom/vkontakte/android/UserProfile;

    iget-object v3, v4, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    .line 1051
    :cond_0
    :goto_0
    return-object v3

    .line 998
    :cond_1
    if-ne p2, v6, :cond_3

    .line 999
    const/4 v3, 0x0

    .line 1000
    .local v3, "postphoto":Ljava/lang/String;
    iget-object v4, v1, Lcom/vkontakte/android/api/NotificationEntry;->parent:Lcom/vkontakte/android/NewsEntry;

    if-eqz v4, :cond_0

    .line 1001
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

    .line 1002
    .local v0, "att":Lcom/vkontakte/android/Attachment;
    instance-of v5, v0, Lcom/vkontakte/android/ImageAttachment;

    if-eqz v5, :cond_2

    .line 1003
    check-cast v0, Lcom/vkontakte/android/ImageAttachment;

    .end local v0    # "att":Lcom/vkontakte/android/Attachment;
    invoke-interface {v0}, Lcom/vkontakte/android/ImageAttachment;->getImageURL()Ljava/lang/String;

    move-result-object v3

    .line 1004
    goto :goto_0

    .line 1010
    .end local v3    # "postphoto":Ljava/lang/String;
    :cond_3
    iget v4, v1, Lcom/vkontakte/android/api/NotificationEntry;->feedbackType:I

    if-eq v4, v6, :cond_4

    iget v4, v1, Lcom/vkontakte/android/api/NotificationEntry;->feedbackType:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_7

    .line 1011
    :cond_4
    iget-object v4, v1, Lcom/vkontakte/android/api/NotificationEntry;->users:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    const/4 v5, 0x6

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    if-ne p2, v4, :cond_6

    .line 1012
    const/4 v3, 0x0

    .line 1013
    .restart local v3    # "postphoto":Ljava/lang/String;
    iget-object v4, v1, Lcom/vkontakte/android/api/NotificationEntry;->parent:Lcom/vkontakte/android/NewsEntry;

    if-eqz v4, :cond_0

    .line 1014
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

    .line 1015
    .restart local v0    # "att":Lcom/vkontakte/android/Attachment;
    instance-of v5, v0, Lcom/vkontakte/android/ImageAttachment;

    if-eqz v5, :cond_5

    .line 1016
    check-cast v0, Lcom/vkontakte/android/ImageAttachment;

    .end local v0    # "att":Lcom/vkontakte/android/Attachment;
    invoke-interface {v0}, Lcom/vkontakte/android/ImageAttachment;->getImageURL()Ljava/lang/String;

    move-result-object v3

    .line 1017
    goto :goto_0

    .line 1022
    .end local v3    # "postphoto":Ljava/lang/String;
    :cond_6
    iget-object v4, v1, Lcom/vkontakte/android/api/NotificationEntry;->users:Ljava/util/Vector;

    invoke-virtual {v4, p2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vkontakte/android/UserProfile;

    iget-object v3, v4, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    goto :goto_0

    .line 1024
    :cond_7
    iget v4, v1, Lcom/vkontakte/android/api/NotificationEntry;->feedbackType:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_c

    .line 1025
    packed-switch p2, :pswitch_data_0

    .line 1031
    :cond_8
    iget-object v4, v1, Lcom/vkontakte/android/api/NotificationEntry;->parent:Lcom/vkontakte/android/NewsEntry;

    invoke-virtual {v4, v7}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v4

    if-eqz v4, :cond_9

    add-int/lit8 p2, p2, -0x1

    .line 1032
    :cond_9
    add-int/lit8 p2, p2, -0x1

    .line 1033
    const/4 v2, 0x0

    .line 1034
    .local v2, "i":I
    iget-object v4, v1, Lcom/vkontakte/android/api/NotificationEntry;->parent:Lcom/vkontakte/android/NewsEntry;

    iget-object v4, v4, Lcom/vkontakte/android/NewsEntry;->repostAttachments:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_a
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_d

    .line 1042
    iget-object v4, v1, Lcom/vkontakte/android/api/NotificationEntry;->parent:Lcom/vkontakte/android/NewsEntry;

    iget-object v4, v4, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_b
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_f

    .line 1051
    .end local v2    # "i":I
    :cond_c
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 1027
    :pswitch_0
    iget-object v4, v1, Lcom/vkontakte/android/api/NotificationEntry;->parent:Lcom/vkontakte/android/NewsEntry;

    iget-object v3, v4, Lcom/vkontakte/android/NewsEntry;->userPhotoURL:Ljava/lang/String;

    goto/16 :goto_0

    .line 1029
    :pswitch_1
    iget-object v4, v1, Lcom/vkontakte/android/api/NotificationEntry;->parent:Lcom/vkontakte/android/NewsEntry;

    invoke-virtual {v4, v7}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v4

    if-eqz v4, :cond_8

    iget-object v4, v1, Lcom/vkontakte/android/api/NotificationEntry;->parent:Lcom/vkontakte/android/NewsEntry;

    iget-object v3, v4, Lcom/vkontakte/android/NewsEntry;->retweetUserPhoto:Ljava/lang/String;

    goto/16 :goto_0

    .line 1034
    .restart local v2    # "i":I
    :cond_d
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/Attachment;

    .line 1035
    .restart local v0    # "att":Lcom/vkontakte/android/Attachment;
    instance-of v5, v0, Lcom/vkontakte/android/ImageAttachment;

    if-eqz v5, :cond_a

    .line 1036
    if-ne v2, p2, :cond_e

    .line 1037
    check-cast v0, Lcom/vkontakte/android/ImageAttachment;

    .end local v0    # "att":Lcom/vkontakte/android/Attachment;
    invoke-interface {v0}, Lcom/vkontakte/android/ImageAttachment;->getImageURL()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    .line 1039
    .restart local v0    # "att":Lcom/vkontakte/android/Attachment;
    :cond_e
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1042
    .end local v0    # "att":Lcom/vkontakte/android/Attachment;
    :cond_f
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/Attachment;

    .line 1043
    .restart local v0    # "att":Lcom/vkontakte/android/Attachment;
    instance-of v5, v0, Lcom/vkontakte/android/ImageAttachment;

    if-eqz v5, :cond_b

    .line 1044
    if-ne v2, p2, :cond_10

    .line 1045
    check-cast v0, Lcom/vkontakte/android/ImageAttachment;

    .end local v0    # "att":Lcom/vkontakte/android/Attachment;
    invoke-interface {v0}, Lcom/vkontakte/android/ImageAttachment;->getImageURL()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    .line 1047
    .restart local v0    # "att":Lcom/vkontakte/android/Attachment;
    :cond_10
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1025
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 957
    sget-object v0, Lcom/vkontakte/android/NotificationsView;->notifications:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public imageLoaded(IILandroid/graphics/Bitmap;)V
    .locals 7
    .param p1, "_item"    # I
    .param p2, "_image"    # I
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 1057
    move v2, p1

    .line 1060
    .local v2, "item":I
    iget-object v0, p0, Lcom/vkontakte/android/NotificationsView$NotificationsImagesAdapter;->this$0:Lcom/vkontakte/android/NotificationsView;

    invoke-static {v0}, Lcom/vkontakte/android/NotificationsView;->access$4(Lcom/vkontakte/android/NotificationsView;)Lcom/vkontakte/android/ui/RefreshableListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/RefreshableListView;->getHeaderViewsCount()I

    move-result v0

    add-int/2addr v0, v2

    iget-object v1, p0, Lcom/vkontakte/android/NotificationsView$NotificationsImagesAdapter;->this$0:Lcom/vkontakte/android/NotificationsView;

    invoke-static {v1}, Lcom/vkontakte/android/NotificationsView;->access$4(Lcom/vkontakte/android/NotificationsView;)Lcom/vkontakte/android/ui/RefreshableListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vkontakte/android/ui/RefreshableListView;->getFirstVisiblePosition()I

    move-result v1

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/NotificationsView$NotificationsImagesAdapter;->this$0:Lcom/vkontakte/android/NotificationsView;

    invoke-static {v0}, Lcom/vkontakte/android/NotificationsView;->access$4(Lcom/vkontakte/android/NotificationsView;)Lcom/vkontakte/android/ui/RefreshableListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/RefreshableListView;->getHeaderViewsCount()I

    move-result v0

    add-int/2addr v0, v2

    iget-object v1, p0, Lcom/vkontakte/android/NotificationsView$NotificationsImagesAdapter;->this$0:Lcom/vkontakte/android/NotificationsView;

    invoke-static {v1}, Lcom/vkontakte/android/NotificationsView;->access$4(Lcom/vkontakte/android/NotificationsView;)Lcom/vkontakte/android/ui/RefreshableListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vkontakte/android/ui/RefreshableListView;->getLastVisiblePosition()I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 1061
    iget-object v0, p0, Lcom/vkontakte/android/NotificationsView$NotificationsImagesAdapter;->this$0:Lcom/vkontakte/android/NotificationsView;

    invoke-static {v0}, Lcom/vkontakte/android/NotificationsView;->access$4(Lcom/vkontakte/android/NotificationsView;)Lcom/vkontakte/android/ui/RefreshableListView;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/NotificationsView$NotificationsImagesAdapter;->this$0:Lcom/vkontakte/android/NotificationsView;

    invoke-static {v1}, Lcom/vkontakte/android/NotificationsView;->access$4(Lcom/vkontakte/android/NotificationsView;)Lcom/vkontakte/android/ui/RefreshableListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vkontakte/android/ui/RefreshableListView;->getHeaderViewsCount()I

    move-result v1

    add-int/2addr v1, v2

    iget-object v4, p0, Lcom/vkontakte/android/NotificationsView$NotificationsImagesAdapter;->this$0:Lcom/vkontakte/android/NotificationsView;

    invoke-static {v4}, Lcom/vkontakte/android/NotificationsView;->access$4(Lcom/vkontakte/android/NotificationsView;)Lcom/vkontakte/android/ui/RefreshableListView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/vkontakte/android/ui/RefreshableListView;->getFirstVisiblePosition()I

    move-result v4

    sub-int/2addr v1, v4

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/RefreshableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1062
    .local v3, "view":Landroid/view/View;
    iget-object v6, p0, Lcom/vkontakte/android/NotificationsView$NotificationsImagesAdapter;->this$0:Lcom/vkontakte/android/NotificationsView;

    new-instance v0, Lcom/vkontakte/android/NotificationsView$NotificationsImagesAdapter$1;

    move-object v1, p0

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/vkontakte/android/NotificationsView$NotificationsImagesAdapter$1;-><init>(Lcom/vkontakte/android/NotificationsView$NotificationsImagesAdapter;ILandroid/view/View;ILandroid/graphics/Bitmap;)V

    invoke-virtual {v6, v0}, Lcom/vkontakte/android/NotificationsView;->post(Ljava/lang/Runnable;)Z

    .line 1131
    .end local v3    # "view":Landroid/view/View;
    :cond_0
    return-void
.end method
