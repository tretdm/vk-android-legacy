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

.field private final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/NotificationsView$NotificationsImagesAdapter;ILandroid/view/View;ILandroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/NotificationsView$NotificationsImagesAdapter$1;->this$1:Lcom/vkontakte/android/NotificationsView$NotificationsImagesAdapter;

    iput p2, p0, Lcom/vkontakte/android/NotificationsView$NotificationsImagesAdapter$1;->val$item:I

    iput-object p3, p0, Lcom/vkontakte/android/NotificationsView$NotificationsImagesAdapter$1;->val$view:Landroid/view/View;

    iput p4, p0, Lcom/vkontakte/android/NotificationsView$NotificationsImagesAdapter$1;->val$_image:I

    iput-object p5, p0, Lcom/vkontakte/android/NotificationsView$NotificationsImagesAdapter$1;->val$bitmap:Landroid/graphics/Bitmap;

    .line 1062
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    .line 1064
    :try_start_0
    sget-object v7, Lcom/vkontakte/android/NotificationsView;->notifications:Ljava/util/Vector;

    iget v8, p0, Lcom/vkontakte/android/NotificationsView$NotificationsImagesAdapter$1;->val$item:I

    invoke-virtual {v7, v8}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/api/NotificationEntry;

    .line 1065
    .local v1, "e":Lcom/vkontakte/android/api/NotificationEntry;
    iget v7, v1, Lcom/vkontakte/android/api/NotificationEntry;->feedbackType:I

    const/4 v8, 0x3

    if-ne v7, v8, :cond_1

    .line 1066
    iget-object v7, p0, Lcom/vkontakte/android/NotificationsView$NotificationsImagesAdapter$1;->val$view:Landroid/view/View;

    if-eqz v7, :cond_1

    .line 1067
    iget v7, p0, Lcom/vkontakte/android/NotificationsView$NotificationsImagesAdapter$1;->val$_image:I

    if-nez v7, :cond_0

    .line 1068
    iget-object v7, p0, Lcom/vkontakte/android/NotificationsView$NotificationsImagesAdapter$1;->val$view:Landroid/view/View;

    const v8, 0x7f090118

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 1069
    .local v6, "v":Landroid/view/View;
    if-eqz v6, :cond_0

    check-cast v6, Landroid/widget/ImageView;

    .end local v6    # "v":Landroid/view/View;
    iget-object v7, p0, Lcom/vkontakte/android/NotificationsView$NotificationsImagesAdapter$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1071
    :cond_0
    iget v7, p0, Lcom/vkontakte/android/NotificationsView$NotificationsImagesAdapter$1;->val$_image:I

    if-ne v7, v10, :cond_1

    .line 1072
    iget-object v7, p0, Lcom/vkontakte/android/NotificationsView$NotificationsImagesAdapter$1;->val$view:Landroid/view/View;

    const v8, 0x7f090119

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 1073
    .restart local v6    # "v":Landroid/view/View;
    if-eqz v6, :cond_1

    check-cast v6, Landroid/widget/ImageView;

    .end local v6    # "v":Landroid/view/View;
    iget-object v7, p0, Lcom/vkontakte/android/NotificationsView$NotificationsImagesAdapter$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1077
    :cond_1
    iget v7, v1, Lcom/vkontakte/android/api/NotificationEntry;->feedbackType:I

    if-eq v7, v10, :cond_2

    iget v7, v1, Lcom/vkontakte/android/api/NotificationEntry;->feedbackType:I

    const/4 v8, 0x4

    if-ne v7, v8, :cond_3

    .line 1078
    :cond_2
    iget-object v7, p0, Lcom/vkontakte/android/NotificationsView$NotificationsImagesAdapter$1;->val$view:Landroid/view/View;

    if-eqz v7, :cond_3

    .line 1079
    iget v7, p0, Lcom/vkontakte/android/NotificationsView$NotificationsImagesAdapter$1;->val$_image:I

    iget-object v8, v1, Lcom/vkontakte/android/api/NotificationEntry;->users:Ljava/util/Vector;

    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v8

    const/4 v9, 0x6

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    if-ge v7, v8, :cond_6

    .line 1080
    iget v7, p0, Lcom/vkontakte/android/NotificationsView$NotificationsImagesAdapter$1;->val$_image:I

    if-nez v7, :cond_5

    .line 1081
    iget-object v7, p0, Lcom/vkontakte/android/NotificationsView$NotificationsImagesAdapter$1;->val$view:Landroid/view/View;

    const v8, 0x7f090118

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 1082
    .local v6, "v":Landroid/widget/ImageView;
    if-eqz v6, :cond_3

    iget-object v7, p0, Lcom/vkontakte/android/NotificationsView$NotificationsImagesAdapter$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1093
    .end local v6    # "v":Landroid/widget/ImageView;
    :cond_3
    :goto_0
    iget v7, v1, Lcom/vkontakte/android/api/NotificationEntry;->feedbackType:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v8, 0x2

    if-ne v7, v8, :cond_4

    .line 1095
    :try_start_1
    iget v2, p0, Lcom/vkontakte/android/NotificationsView$NotificationsImagesAdapter$1;->val$_image:I

    .line 1096
    .local v2, "image":I
    if-nez v2, :cond_7

    .line 1097
    iget-object v7, p0, Lcom/vkontakte/android/NotificationsView$NotificationsImagesAdapter$1;->val$view:Landroid/view/View;

    const v8, 0x7f09010c

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iget-object v8, p0, Lcom/vkontakte/android/NotificationsView$NotificationsImagesAdapter$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1129
    .end local v1    # "e":Lcom/vkontakte/android/api/NotificationEntry;
    .end local v2    # "image":I
    :cond_4
    :goto_1
    return-void

    .line 1084
    .restart local v1    # "e":Lcom/vkontakte/android/api/NotificationEntry;
    :cond_5
    :try_start_2
    iget-object v7, p0, Lcom/vkontakte/android/NotificationsView$NotificationsImagesAdapter$1;->val$view:Landroid/view/View;

    const v8, 0x7f09011f

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/vkontakte/android/ui/PhotoStripView;

    .line 1085
    .local v5, "strip":Lcom/vkontakte/android/ui/PhotoStripView;
    iget v7, p0, Lcom/vkontakte/android/NotificationsView$NotificationsImagesAdapter$1;->val$_image:I

    add-int/lit8 v7, v7, -0x1

    iget-object v8, p0, Lcom/vkontakte/android/NotificationsView$NotificationsImagesAdapter$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5, v7, v8}, Lcom/vkontakte/android/ui/PhotoStripView;->setBitmap(ILandroid/graphics/Bitmap;)V

    goto :goto_0

    .line 1128
    .end local v1    # "e":Lcom/vkontakte/android/api/NotificationEntry;
    .end local v5    # "strip":Lcom/vkontakte/android/ui/PhotoStripView;
    :catch_0
    move-exception v7

    goto :goto_1

    .line 1088
    .restart local v1    # "e":Lcom/vkontakte/android/api/NotificationEntry;
    :cond_6
    iget-object v7, p0, Lcom/vkontakte/android/NotificationsView$NotificationsImagesAdapter$1;->val$view:Landroid/view/View;

    const v8, 0x7f090119

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 1089
    .local v6, "v":Landroid/view/View;
    if-eqz v6, :cond_3

    check-cast v6, Landroid/widget/ImageView;

    .end local v6    # "v":Landroid/view/View;
    iget-object v7, p0, Lcom/vkontakte/android/NotificationsView$NotificationsImagesAdapter$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 1100
    .restart local v2    # "image":I
    :cond_7
    if-ne v2, v10, :cond_8

    :try_start_3
    iget-object v7, v1, Lcom/vkontakte/android/api/NotificationEntry;->parent:Lcom/vkontakte/android/NewsEntry;

    const/16 v8, 0x20

    invoke-virtual {v7, v8}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 1101
    iget-object v7, p0, Lcom/vkontakte/android/NotificationsView$NotificationsImagesAdapter$1;->val$view:Landroid/view/View;

    const v8, 0x7f09010a

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iget-object v8, p0, Lcom/vkontakte/android/NotificationsView$NotificationsImagesAdapter$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 1126
    .end local v2    # "image":I
    :catch_1
    move-exception v7

    goto :goto_1

    .line 1104
    .restart local v2    # "image":I
    :cond_8
    iget-object v7, v1, Lcom/vkontakte/android/api/NotificationEntry;->parent:Lcom/vkontakte/android/NewsEntry;

    const/16 v8, 0x20

    invoke-virtual {v7, v8}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v7

    if-eqz v7, :cond_9

    add-int/lit8 v2, v2, -0x1

    .line 1105
    :cond_9
    add-int/lit8 v2, v2, -0x1

    .line 1106
    const/4 v3, 0x0

    .local v3, "imgindex":I
    const/4 v4, 0x0

    .line 1107
    .local v4, "index":I
    iget-object v7, v1, Lcom/vkontakte/android/api/NotificationEntry;->parent:Lcom/vkontakte/android/NewsEntry;

    iget-object v7, v7, Lcom/vkontakte/android/NewsEntry;->repostAttachments:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_c

    .line 1116
    const/4 v4, 0x0

    .line 1117
    iget-object v7, v1, Lcom/vkontakte/android/api/NotificationEntry;->parent:Lcom/vkontakte/android/NewsEntry;

    iget-object v7, v7, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/Attachment;

    .line 1118
    .local v0, "att":Lcom/vkontakte/android/Attachment;
    instance-of v7, v0, Lcom/vkontakte/android/ImageAttachment;

    if-eqz v7, :cond_b

    .line 1119
    if-ne v3, v2, :cond_a

    .line 1120
    check-cast v0, Lcom/vkontakte/android/ImageAttachment;

    .end local v0    # "att":Lcom/vkontakte/android/Attachment;
    iget-object v7, p0, Lcom/vkontakte/android/NotificationsView$NotificationsImagesAdapter$1;->val$view:Landroid/view/View;

    const v9, 0x7f09009a

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    invoke-virtual {v7, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    iget-object v9, p0, Lcom/vkontakte/android/NotificationsView$NotificationsImagesAdapter$1;->val$bitmap:Landroid/graphics/Bitmap;

    const/4 v10, 0x0

    invoke-interface {v0, v7, v9, v10}, Lcom/vkontakte/android/ImageAttachment;->setImage(Landroid/view/View;Landroid/graphics/Bitmap;Z)V

    .line 1122
    :cond_a
    add-int/lit8 v3, v3, 0x1

    .line 1124
    :cond_b
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 1107
    :cond_c
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/Attachment;

    .line 1108
    .restart local v0    # "att":Lcom/vkontakte/android/Attachment;
    instance-of v7, v0, Lcom/vkontakte/android/ImageAttachment;

    if-eqz v7, :cond_e

    .line 1109
    if-ne v3, v2, :cond_d

    .line 1110
    check-cast v0, Lcom/vkontakte/android/ImageAttachment;

    .end local v0    # "att":Lcom/vkontakte/android/Attachment;
    iget-object v7, p0, Lcom/vkontakte/android/NotificationsView$NotificationsImagesAdapter$1;->val$view:Landroid/view/View;

    const v9, 0x7f09010d

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    invoke-virtual {v7, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    iget-object v9, p0, Lcom/vkontakte/android/NotificationsView$NotificationsImagesAdapter$1;->val$bitmap:Landroid/graphics/Bitmap;

    const/4 v10, 0x0

    invoke-interface {v0, v7, v9, v10}, Lcom/vkontakte/android/ImageAttachment;->setImage(Landroid/view/View;Landroid/graphics/Bitmap;Z)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 1112
    :cond_d
    add-int/lit8 v3, v3, 0x1

    .line 1114
    :cond_e
    add-int/lit8 v4, v4, 0x1

    goto :goto_2
.end method
