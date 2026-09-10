.class Lcom/vkontakte/android/NotificationsView$NotificationsAdapter;
.super Landroid/widget/BaseAdapter;
.source "NotificationsView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/NotificationsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NotificationsAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/NotificationsView;


# direct methods
.method private constructor <init>(Lcom/vkontakte/android/NotificationsView;)V
    .locals 0

    .prologue
    .line 480
    iput-object p1, p0, Lcom/vkontakte/android/NotificationsView$NotificationsAdapter;->this$0:Lcom/vkontakte/android/NotificationsView;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkontakte/android/NotificationsView;Lcom/vkontakte/android/NotificationsView$NotificationsAdapter;)V
    .locals 0

    .prologue
    .line 480
    invoke-direct {p0, p1}, Lcom/vkontakte/android/NotificationsView$NotificationsAdapter;-><init>(Lcom/vkontakte/android/NotificationsView;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 484
    sget-object v0, Lcom/vkontakte/android/NotificationsView;->notifications:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 489
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 494
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 3
    .param p1, "pos"    # I

    .prologue
    const/4 v1, 0x0

    .line 504
    sget-object v0, Lcom/vkontakte/android/NotificationsView;->notifications:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/api/NotificationEntry;

    iget v0, v0, Lcom/vkontakte/android/api/NotificationEntry;->feedbackType:I

    packed-switch v0, :pswitch_data_0

    .line 513
    iget-object v0, p0, Lcom/vkontakte/android/NotificationsView$NotificationsAdapter;->this$0:Lcom/vkontakte/android/NotificationsView;

    invoke-virtual {v0}, Lcom/vkontakte/android/NotificationsView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "O_o"

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 514
    const/4 v0, 0x3

    :goto_0
    return v0

    .line 507
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 509
    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    :pswitch_2
    move v0, v1

    .line 511
    goto :goto_0

    .line 504
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 28
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 525
    move-object/from16 v22, p2

    .line 527
    .local v22, "v":Landroid/view/View;
    :try_start_0
    sget-object v25, Lcom/vkontakte/android/NotificationsView;->notifications:Ljava/util/Vector;

    move-object/from16 v0, v25

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vkontakte/android/api/NotificationEntry;

    .line 528
    .local v5, "e":Lcom/vkontakte/android/api/NotificationEntry;
    const/4 v10, 0x0

    .line 529
    .local v10, "info":Ljava/lang/String;
    iget v0, v5, Lcom/vkontakte/android/api/NotificationEntry;->feedbackType:I

    move/from16 v25, v0

    const/16 v26, 0x3

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_b

    .line 530
    if-nez v22, :cond_0

    .line 531
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NotificationsView$NotificationsAdapter;->this$0:Lcom/vkontakte/android/NotificationsView;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/vkontakte/android/NotificationsView;->getContext()Landroid/content/Context;

    move-result-object v25

    const v26, 0x7f030050

    const/16 v27, 0x0

    invoke-static/range {v25 .. v27}, Lcom/vkontakte/android/NotificationsView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v22

    .line 532
    const v25, 0x7f0800f0

    move-object/from16 v0, v22

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NotificationsView$NotificationsAdapter;->this$0:Lcom/vkontakte/android/NotificationsView;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/vkontakte/android/NotificationsView;->access$0(Lcom/vkontakte/android/NotificationsView;)Landroid/view/View$OnClickListener;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 533
    const v25, 0x7f0800f1

    move-object/from16 v0, v22

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NotificationsView$NotificationsAdapter;->this$0:Lcom/vkontakte/android/NotificationsView;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/vkontakte/android/NotificationsView;->access$1(Lcom/vkontakte/android/NotificationsView;)Landroid/view/View$OnClickListener;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 534
    const v25, 0x7f0800f5

    move-object/from16 v0, v22

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NotificationsView$NotificationsAdapter;->this$0:Lcom/vkontakte/android/NotificationsView;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/vkontakte/android/NotificationsView;->access$1(Lcom/vkontakte/android/NotificationsView;)Landroid/view/View$OnClickListener;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 535
    const v25, 0x7f0800f4

    move-object/from16 v0, v22

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NotificationsView$NotificationsAdapter;->this$0:Lcom/vkontakte/android/NotificationsView;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/vkontakte/android/NotificationsView;->access$1(Lcom/vkontakte/android/NotificationsView;)Landroid/view/View$OnClickListener;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 537
    :cond_0
    const v25, 0x7f0800f2

    move-object/from16 v0, v22

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/TextView;

    iget-object v0, v5, Lcom/vkontakte/android/api/NotificationEntry;->commentUser:Lcom/vkontakte/android/UserProfile;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 539
    const v25, 0x7f0800f3

    move-object/from16 v0, v22

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/TextView;

    iget-object v0, v5, Lcom/vkontakte/android/api/NotificationEntry;->displayableText:Ljava/lang/CharSequence;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 541
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NotificationsView$NotificationsAdapter;->this$0:Lcom/vkontakte/android/NotificationsView;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/vkontakte/android/NotificationsView;->access$2(Lcom/vkontakte/android/NotificationsView;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    move-result-object v25

    iget-object v0, v5, Lcom/vkontakte/android/api/NotificationEntry;->commentUser:Lcom/vkontakte/android/UserProfile;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->isAlreadyLoaded(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_a

    .line 542
    const v25, 0x7f0800f0

    move-object/from16 v0, v22

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NotificationsView$NotificationsAdapter;->this$0:Lcom/vkontakte/android/NotificationsView;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/vkontakte/android/NotificationsView;->access$2(Lcom/vkontakte/android/NotificationsView;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    move-result-object v26

    iget-object v0, v5, Lcom/vkontakte/android/api/NotificationEntry;->commentUser:Lcom/vkontakte/android/UserProfile;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 548
    :goto_0
    const v25, 0x7f0800f0

    move-object/from16 v0, v22

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    iget-object v0, v5, Lcom/vkontakte/android/api/NotificationEntry;->commentUser:Lcom/vkontakte/android/UserProfile;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lcom/vkontakte/android/UserProfile;->uid:I

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 695
    :cond_1
    :goto_1
    iget v0, v5, Lcom/vkontakte/android/api/NotificationEntry;->parentType:I

    move/from16 v25, v0

    if-lez v25, :cond_29

    .line 696
    if-nez v10, :cond_1f

    const/4 v15, 0x1

    .line 697
    .local v15, "ni":Z
    :goto_2
    if-eqz v15, :cond_2

    iget v0, v5, Lcom/vkontakte/android/api/NotificationEntry;->time:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NotificationsView$NotificationsAdapter;->this$0:Lcom/vkontakte/android/NotificationsView;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/vkontakte/android/NotificationsView;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/vkontakte/android/Global;->langDateRelative(ILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v10

    .line 698
    :cond_2
    const-string v12, ""

    .line 699
    .local v12, "link":Ljava/lang/CharSequence;
    iget v0, v5, Lcom/vkontakte/android/api/NotificationEntry;->parentType:I

    move/from16 v25, v0

    packed-switch v25, :pswitch_data_0

    .line 722
    :cond_3
    :goto_3
    const v25, 0x7f0800f5

    move-object/from16 v0, v22

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/TextView;

    if-eqz v12, :cond_24

    move-object/from16 v26, v12

    :goto_4
    invoke-virtual/range {v25 .. v26}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 723
    const v25, 0x7f0800f5

    move-object/from16 v0, v22

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/TextView;

    if-eqz v12, :cond_25

    invoke-interface {v12}, Ljava/lang/CharSequence;->length()I

    move-result v26

    if-lez v26, :cond_25

    const/16 v26, 0x3e7

    :goto_5
    invoke-virtual/range {v25 .. v26}, Landroid/widget/TextView;->setMaxHeight(I)V

    .line 728
    const/16 v19, 0x0

    .line 729
    .local v19, "postphoto":Ljava/lang/String;
    iget-object v0, v5, Lcom/vkontakte/android/api/NotificationEntry;->parent:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v25

    :cond_4
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-nez v26, :cond_26

    .line 735
    :goto_6
    if-nez v19, :cond_27

    .line 736
    const v25, 0x7f0800f1

    move-object/from16 v0, v22

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    const/16 v26, 0x8

    invoke-virtual/range {v25 .. v26}, Landroid/view/View;->setVisibility(I)V

    .line 744
    :goto_7
    const v25, 0x7f0800f1

    move-object/from16 v0, v22

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    if-eqz v25, :cond_5

    .line 745
    const v25, 0x7f0800f1

    move-object/from16 v0, v22

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 746
    const v25, 0x7f0800f4

    move-object/from16 v0, v22

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 747
    const v25, 0x7f0800f5

    move-object/from16 v0, v22

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 758
    .end local v12    # "link":Ljava/lang/CharSequence;
    .end local v15    # "ni":Z
    .end local v19    # "postphoto":Ljava/lang/String;
    :cond_5
    :goto_8
    const v25, 0x7f0800f4

    move-object/from16 v0, v22

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    if-eqz v25, :cond_6

    const v25, 0x7f0800f4

    move-object/from16 v0, v22

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/TextView;

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 759
    :cond_6
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 760
    const/16 v25, 0x1f4

    move-object/from16 v0, v22

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    if-eqz v25, :cond_7

    const/16 v25, 0x1f4

    move-object/from16 v0, v22

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    const/16 v26, 0x8

    invoke-virtual/range {v25 .. v26}, Landroid/view/View;->setVisibility(I)V

    .line 762
    :cond_7
    iget v0, v5, Lcom/vkontakte/android/api/NotificationEntry;->replyID:I

    move/from16 v25, v0

    if-gtz v25, :cond_8

    iget-boolean v0, v5, Lcom/vkontakte/android/api/NotificationEntry;->isLiked:Z

    move/from16 v25, v0

    if-eqz v25, :cond_9

    .line 763
    :cond_8
    const/4 v11, 0x0

    .line 764
    .local v11, "iv":Landroid/widget/ImageView;
    const/16 v25, 0x1f4

    move-object/from16 v0, v22

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    if-nez v25, :cond_2c

    .line 765
    new-instance v11, Landroid/widget/ImageView;

    .end local v11    # "iv":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NotificationsView$NotificationsAdapter;->this$0:Lcom/vkontakte/android/NotificationsView;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/vkontakte/android/NotificationsView;->getContext()Landroid/content/Context;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-direct {v11, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 766
    .restart local v11    # "iv":Landroid/widget/ImageView;
    sget-object v25, Landroid/widget/ImageView$ScaleType;->FIT_END:Landroid/widget/ImageView$ScaleType;

    move-object/from16 v0, v25

    invoke-virtual {v11, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 767
    new-instance v13, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v25, -0x2

    const/16 v26, -0x1

    move/from16 v0, v25

    move/from16 v1, v26

    invoke-direct {v13, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 768
    .local v13, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v25, 0xb

    move/from16 v0, v25

    invoke-virtual {v13, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 769
    const/16 v25, 0xc

    move/from16 v0, v25

    invoke-virtual {v13, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 770
    const/16 v25, 0xa

    move/from16 v0, v25

    invoke-virtual {v13, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 775
    invoke-virtual {v11, v13}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 776
    const/16 v25, 0x1f4

    move/from16 v0, v25

    invoke-virtual {v11, v0}, Landroid/widget/ImageView;->setId(I)V

    .line 777
    move-object/from16 v0, v22

    check-cast v0, Landroid/view/ViewGroup;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 782
    .end local v13    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    :goto_9
    iget v0, v5, Lcom/vkontakte/android/api/NotificationEntry;->replyID:I

    move/from16 v25, v0

    if-lez v25, :cond_2d

    const v25, 0x7f0201a4

    :goto_a
    move/from16 v0, v25

    invoke-virtual {v11, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 783
    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-virtual {v11, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 786
    .end local v11    # "iv":Landroid/widget/ImageView;
    :cond_9
    if-nez p1, :cond_2e

    .line 787
    const v25, 0x7f0200b0

    move-object/from16 v0, v22

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 794
    .end local v5    # "e":Lcom/vkontakte/android/api/NotificationEntry;
    .end local v10    # "info":Ljava/lang/String;
    :goto_b
    return-object v22

    .line 544
    .restart local v5    # "e":Lcom/vkontakte/android/api/NotificationEntry;
    .restart local v10    # "info":Ljava/lang/String;
    :cond_a
    const v25, 0x7f0800f0

    move-object/from16 v0, v22

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/ImageView;

    const v26, 0x7f020247

    invoke-virtual/range {v25 .. v26}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 793
    .end local v5    # "e":Lcom/vkontakte/android/api/NotificationEntry;
    .end local v10    # "info":Ljava/lang/String;
    :catch_0
    move-exception v24

    .local v24, "x":Ljava/lang/Exception;
    :goto_c
    const-string v25, "vk"

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_b

    .line 549
    .end local v24    # "x":Ljava/lang/Exception;
    .restart local v5    # "e":Lcom/vkontakte/android/api/NotificationEntry;
    .restart local v10    # "info":Ljava/lang/String;
    :cond_b
    :try_start_1
    iget v0, v5, Lcom/vkontakte/android/api/NotificationEntry;->feedbackType:I

    move/from16 v25, v0

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_c

    iget v0, v5, Lcom/vkontakte/android/api/NotificationEntry;->feedbackType:I

    move/from16 v25, v0

    const/16 v26, 0x4

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_19

    .line 550
    :cond_c
    if-nez v22, :cond_d

    .line 551
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NotificationsView$NotificationsAdapter;->this$0:Lcom/vkontakte/android/NotificationsView;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/vkontakte/android/NotificationsView;->getContext()Landroid/content/Context;

    move-result-object v25

    const v26, 0x7f030051

    const/16 v27, 0x0

    invoke-static/range {v25 .. v27}, Lcom/vkontakte/android/NotificationsView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v22

    .line 552
    const v25, 0x7f0800f1

    move-object/from16 v0, v22

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NotificationsView$NotificationsAdapter;->this$0:Lcom/vkontakte/android/NotificationsView;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/vkontakte/android/NotificationsView;->access$1(Lcom/vkontakte/android/NotificationsView;)Landroid/view/View$OnClickListener;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 553
    const v25, 0x7f0800f5

    move-object/from16 v0, v22

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NotificationsView$NotificationsAdapter;->this$0:Lcom/vkontakte/android/NotificationsView;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/vkontakte/android/NotificationsView;->access$1(Lcom/vkontakte/android/NotificationsView;)Landroid/view/View$OnClickListener;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 554
    const v25, 0x7f0800f4

    move-object/from16 v0, v22

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NotificationsView$NotificationsAdapter;->this$0:Lcom/vkontakte/android/NotificationsView;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/vkontakte/android/NotificationsView;->access$1(Lcom/vkontakte/android/NotificationsView;)Landroid/view/View$OnClickListener;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 556
    :cond_d
    new-instance v25, Ljava/lang/StringBuilder;

    iget v0, v5, Lcom/vkontakte/android/api/NotificationEntry;->time:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NotificationsView$NotificationsAdapter;->this$0:Lcom/vkontakte/android/NotificationsView;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/vkontakte/android/NotificationsView;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lcom/vkontakte/android/Global;->langDateRelative(ILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v26

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v26, " "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 557
    iget-object v0, v5, Lcom/vkontakte/android/api/NotificationEntry;->users:Ljava/util/Vector;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/Vector;->size()I

    move-result v16

    .line 558
    .local v16, "num":I
    iget-object v0, v5, Lcom/vkontakte/android/api/NotificationEntry;->users:Ljava/util/Vector;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/vkontakte/android/UserProfile;

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    move-object/from16 v21, v0

    .line 559
    .local v21, "title":Ljava/lang/String;
    iget-object v0, v5, Lcom/vkontakte/android/api/NotificationEntry;->users:Ljava/util/Vector;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/Vector;->size()I

    move-result v25

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-le v0, v1, :cond_e

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v26

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v26, " +"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    iget-object v0, v5, Lcom/vkontakte/android/api/NotificationEntry;->users:Ljava/util/Vector;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/Vector;->size()I

    move-result v26

    add-int/lit8 v26, v26, -0x1

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 561
    :cond_e
    const/4 v7, 0x0

    .local v7, "idx1":I
    const/4 v8, 0x0

    .local v8, "idx2":I
    const/4 v9, 0x0

    .line 563
    .local v9, "idx3":I
    iget v0, v5, Lcom/vkontakte/android/api/NotificationEntry;->action:I

    move/from16 v25, v0

    packed-switch v25, :pswitch_data_1

    .line 581
    :goto_d
    :pswitch_0
    iget v0, v5, Lcom/vkontakte/android/api/NotificationEntry;->parentType:I

    move/from16 v25, v0

    packed-switch v25, :pswitch_data_2

    .line 596
    :goto_e
    const/16 v25, 0x1

    move/from16 v0, v16

    move/from16 v1, v25

    if-ne v0, v1, :cond_12

    .line 597
    iget-object v0, v5, Lcom/vkontakte/android/api/NotificationEntry;->users:Ljava/util/Vector;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/vkontakte/android/UserProfile;

    move-object/from16 v0, v25

    iget-boolean v0, v0, Lcom/vkontakte/android/UserProfile;->f:Z

    move/from16 v25, v0

    if-eqz v25, :cond_11

    const/4 v8, 0x1

    .line 601
    :goto_f
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v26

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NotificationsView$NotificationsAdapter;->this$0:Lcom/vkontakte/android/NotificationsView;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/vkontakte/android/NotificationsView;->access$3(Lcom/vkontakte/android/NotificationsView;)[[[Ljava/lang/String;

    move-result-object v26

    aget-object v26, v26, v7

    aget-object v26, v26, v8

    aget-object v26, v26, v9

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 603
    new-instance v20, Ljava/util/Vector;

    invoke-direct/range {v20 .. v20}, Ljava/util/Vector;-><init>()V

    .line 604
    .local v20, "reusableViews":Ljava/util/Vector;, "Ljava/util/Vector<Landroid/widget/ImageView;>;"
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_10
    const v25, 0x7f0800f7

    move-object/from16 v0, v22

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/view/ViewGroup;

    invoke-virtual/range {v25 .. v25}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v25

    move/from16 v0, v25

    if-lt v6, v0, :cond_13

    .line 610
    const/4 v14, 0x0

    .line 612
    .local v14, "n":I
    iget-object v0, v5, Lcom/vkontakte/android/api/NotificationEntry;->users:Ljava/util/Vector;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v26

    :cond_f
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-nez v25, :cond_14

    .line 638
    :goto_11
    invoke-virtual/range {v20 .. v20}, Ljava/util/Vector;->size()I

    move-result v25

    if-lez v25, :cond_10

    .line 639
    invoke-virtual/range {v20 .. v20}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v26

    :goto_12
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-nez v25, :cond_18

    .line 645
    :cond_10
    const v25, 0x7f0800f2

    move-object/from16 v0, v22

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/TextView;

    move-object/from16 v0, v25

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 565
    .end local v6    # "i":I
    .end local v14    # "n":I
    .end local v20    # "reusableViews":Ljava/util/Vector;, "Ljava/util/Vector<Landroid/widget/ImageView;>;"
    :pswitch_1
    const/4 v7, 0x0

    .line 566
    const v25, 0x7f0800f8

    move-object/from16 v0, v22

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/ImageView;

    const v26, 0x7f0201a6

    invoke-virtual/range {v25 .. v26}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_d

    .line 569
    :pswitch_2
    const/4 v7, 0x1

    .line 570
    const v25, 0x7f0800f8

    move-object/from16 v0, v22

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/ImageView;

    const v26, 0x7f0201a9

    invoke-virtual/range {v25 .. v26}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_d

    .line 573
    :pswitch_3
    const/4 v7, 0x2

    .line 574
    const v25, 0x7f0800f8

    move-object/from16 v0, v22

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/ImageView;

    const v26, 0x7f0201a5

    invoke-virtual/range {v25 .. v26}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_d

    .line 577
    :pswitch_4
    const/4 v7, 0x3

    .line 578
    const v25, 0x7f0800f8

    move-object/from16 v0, v22

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/ImageView;

    const v26, 0x7f0201a8

    invoke-virtual/range {v25 .. v26}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_d

    .line 583
    :pswitch_5
    const/4 v9, 0x0

    .line 584
    goto/16 :goto_e

    .line 586
    :pswitch_6
    const/4 v9, 0x1

    .line 587
    goto/16 :goto_e

    .line 589
    :pswitch_7
    const/4 v9, 0x2

    .line 590
    goto/16 :goto_e

    .line 592
    :pswitch_8
    const/4 v9, 0x3

    goto/16 :goto_e

    .line 597
    :cond_11
    const/4 v8, 0x0

    goto/16 :goto_f

    .line 599
    :cond_12
    const/4 v8, 0x2

    goto/16 :goto_f

    .line 605
    .restart local v6    # "i":I
    .restart local v20    # "reusableViews":Ljava/util/Vector;, "Ljava/util/Vector<Landroid/widget/ImageView;>;"
    :cond_13
    const v25, 0x7f0800f7

    move-object/from16 v0, v22

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/view/ViewGroup;

    move-object/from16 v0, v25

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    .line 607
    .restart local v11    # "iv":Landroid/widget/ImageView;
    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 604
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_10

    .line 612
    .end local v11    # "iv":Landroid/widget/ImageView;
    .restart local v14    # "n":I
    :cond_14
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/vkontakte/android/UserProfile;

    .line 613
    .local v18, "p":Lcom/vkontakte/android/UserProfile;
    const/4 v11, 0x0

    .line 614
    .restart local v11    # "iv":Landroid/widget/ImageView;
    invoke-virtual/range {v20 .. v20}, Ljava/util/Vector;->size()I

    move-result v25

    if-lez v25, :cond_15

    .line 615
    const/16 v25, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    move-result-object v11

    .end local v11    # "iv":Landroid/widget/ImageView;
    check-cast v11, Landroid/widget/ImageView;

    .line 628
    .restart local v11    # "iv":Landroid/widget/ImageView;
    :goto_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NotificationsView$NotificationsAdapter;->this$0:Lcom/vkontakte/android/NotificationsView;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/vkontakte/android/NotificationsView;->access$2(Lcom/vkontakte/android/NotificationsView;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    move-result-object v25

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->isAlreadyLoaded(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_17

    .line 629
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NotificationsView$NotificationsAdapter;->this$0:Lcom/vkontakte/android/NotificationsView;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/vkontakte/android/NotificationsView;->access$2(Lcom/vkontakte/android/NotificationsView;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    move-result-object v25

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v11, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 632
    :goto_14
    move-object/from16 v0, v18

    iget v0, v0, Lcom/vkontakte/android/UserProfile;->uid:I

    move/from16 v25, v0

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v11, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 634
    add-int/lit8 v14, v14, 0x1

    .line 635
    const/16 v25, 0x5

    move/from16 v0, v25

    if-lt v14, v0, :cond_f

    goto/16 :goto_11

    .line 616
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NotificationsView$NotificationsAdapter;->this$0:Lcom/vkontakte/android/NotificationsView;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/vkontakte/android/NotificationsView;->access$4(Lcom/vkontakte/android/NotificationsView;)Ljava/util/Vector;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/util/Vector;->size()I

    move-result v25

    if-lez v25, :cond_16

    .line 617
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NotificationsView$NotificationsAdapter;->this$0:Lcom/vkontakte/android/NotificationsView;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/vkontakte/android/NotificationsView;->access$4(Lcom/vkontakte/android/NotificationsView;)Ljava/util/Vector;

    move-result-object v25

    const/16 v27, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    move-result-object v11

    .end local v11    # "iv":Landroid/widget/ImageView;
    check-cast v11, Landroid/widget/ImageView;

    .line 618
    .restart local v11    # "iv":Landroid/widget/ImageView;
    const v25, 0x7f0800f7

    move-object/from16 v0, v22

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/view/ViewGroup;

    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto/16 :goto_13

    .line 620
    :cond_16
    new-instance v11, Landroid/widget/ImageView;

    .end local v11    # "iv":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NotificationsView$NotificationsAdapter;->this$0:Lcom/vkontakte/android/NotificationsView;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/vkontakte/android/NotificationsView;->getContext()Landroid/content/Context;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-direct {v11, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 621
    .restart local v11    # "iv":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NotificationsView$NotificationsAdapter;->this$0:Lcom/vkontakte/android/NotificationsView;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/vkontakte/android/NotificationsView;->access$0(Lcom/vkontakte/android/NotificationsView;)Landroid/view/View$OnClickListener;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v11, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 622
    new-instance v13, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v25, 0x42200000    # 40.0f

    invoke-static/range {v25 .. v25}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v25

    const/high16 v27, 0x42200000    # 40.0f

    invoke-static/range {v27 .. v27}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v27

    move/from16 v0, v25

    move/from16 v1, v27

    invoke-direct {v13, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 623
    .local v13, "lp":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v25, 0x40400000    # 3.0f

    invoke-static/range {v25 .. v25}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v25

    move/from16 v0, v25

    iput v0, v13, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 624
    invoke-virtual {v11, v13}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 625
    const v25, 0x7f0800f7

    move-object/from16 v0, v22

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/view/ViewGroup;

    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto/16 :goto_13

    .line 631
    .end local v13    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_17
    const v25, 0x7f020247

    move/from16 v0, v25

    invoke-virtual {v11, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_14

    .line 639
    .end local v11    # "iv":Landroid/widget/ImageView;
    .end local v18    # "p":Lcom/vkontakte/android/UserProfile;
    :cond_18
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    .line 640
    .restart local v11    # "iv":Landroid/widget/ImageView;
    invoke-virtual {v11}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v25

    check-cast v25, Landroid/view/ViewGroup;

    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 641
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NotificationsView$NotificationsAdapter;->this$0:Lcom/vkontakte/android/NotificationsView;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/vkontakte/android/NotificationsView;->access$4(Lcom/vkontakte/android/NotificationsView;)Ljava/util/Vector;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto/16 :goto_12

    .line 646
    .end local v6    # "i":I
    .end local v7    # "idx1":I
    .end local v8    # "idx2":I
    .end local v9    # "idx3":I
    .end local v11    # "iv":Landroid/widget/ImageView;
    .end local v14    # "n":I
    .end local v16    # "num":I
    .end local v20    # "reusableViews":Ljava/util/Vector;, "Ljava/util/Vector<Landroid/widget/ImageView;>;"
    .end local v21    # "title":Ljava/lang/String;
    :cond_19
    iget v0, v5, Lcom/vkontakte/android/api/NotificationEntry;->action:I

    move/from16 v25, v0

    const/16 v26, 0x4

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_1a

    iget-object v0, v5, Lcom/vkontakte/android/api/NotificationEntry;->ppost:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v25, v0

    if-eqz v25, :cond_1b

    :cond_1a
    iget v0, v5, Lcom/vkontakte/android/api/NotificationEntry;->action:I

    move/from16 v25, v0

    const/16 v26, 0x5

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_1e

    .line 647
    :cond_1b
    const/16 v17, 0x0

    .line 648
    .local v17, "nv":Lcom/vkontakte/android/NewsItemView;
    if-eqz v22, :cond_1c

    move-object/from16 v0, v22

    check-cast v0, Lcom/vkontakte/android/NewsItemView;

    move-object/from16 v17, v0

    .line 649
    :cond_1c
    if-nez v17, :cond_1d

    .line 650
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NotificationsView$NotificationsAdapter;->this$0:Lcom/vkontakte/android/NotificationsView;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/vkontakte/android/NotificationsView;->getContext()Landroid/content/Context;

    move-result-object v25

    const v26, 0x7f030048

    const/16 v27, 0x0

    invoke-static/range {v25 .. v27}, Lcom/vkontakte/android/NotificationsView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v17

    .end local v17    # "nv":Lcom/vkontakte/android/NewsItemView;
    check-cast v17, Lcom/vkontakte/android/NewsItemView;

    .line 651
    .restart local v17    # "nv":Lcom/vkontakte/android/NewsItemView;
    new-instance v25, Lcom/vkontakte/android/NotificationsView$NotificationsAdapter$1;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/vkontakte/android/NotificationsView$NotificationsAdapter$1;-><init>(Lcom/vkontakte/android/NotificationsView$NotificationsAdapter;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/NewsItemView;->setOnInfoUpdateListener(Lcom/vkontakte/android/NewsItemView$OnInfoUpdateListener;)V

    .line 682
    :cond_1d
    invoke-virtual/range {v17 .. v17}, Lcom/vkontakte/android/NewsItemView;->reset()V

    .line 684
    iget-object v0, v5, Lcom/vkontakte/android/api/NotificationEntry;->parent:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NotificationsView$NotificationsAdapter;->this$0:Lcom/vkontakte/android/NotificationsView;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/vkontakte/android/NotificationsView;->access$2(Lcom/vkontakte/android/NotificationsView;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    move-result-object v27

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    move/from16 v2, v26

    move-object/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Lcom/vkontakte/android/NewsItemView;->setData(Lcom/vkontakte/android/NewsEntry;ZLcom/vkontakte/android/ui/ListImageLoaderWrapper;)V

    .line 686
    move-object/from16 v22, v17

    .line 687
    goto/16 :goto_1

    .line 689
    .end local v17    # "nv":Lcom/vkontakte/android/NewsItemView;
    :cond_1e
    if-nez v22, :cond_1

    .line 690
    new-instance v23, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NotificationsView$NotificationsAdapter;->this$0:Lcom/vkontakte/android/NotificationsView;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/vkontakte/android/NotificationsView;->getContext()Landroid/content/Context;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 691
    .end local v22    # "v":Landroid/view/View;
    .local v23, "v":Landroid/view/View;
    :try_start_2
    move-object/from16 v0, v23

    check-cast v0, Landroid/widget/TextView;

    move-object/from16 v25, v0

    const-string v26, "UNKNOWN!!"

    invoke-virtual/range {v25 .. v26}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-object/from16 v22, v23

    .end local v23    # "v":Landroid/view/View;
    .restart local v22    # "v":Landroid/view/View;
    goto/16 :goto_1

    .line 696
    :cond_1f
    const/4 v15, 0x0

    goto/16 :goto_2

    .line 701
    .restart local v12    # "link":Ljava/lang/CharSequence;
    .restart local v15    # "ni":Z
    :pswitch_9
    if-eqz v15, :cond_20

    :try_start_3
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v26

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v26, " "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NotificationsView$NotificationsAdapter;->this$0:Lcom/vkontakte/android/NotificationsView;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/vkontakte/android/NotificationsView;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    const v27, 0x7f060102

    invoke-virtual/range {v26 .. v27}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 702
    :cond_20
    iget-object v0, v5, Lcom/vkontakte/android/api/NotificationEntry;->parent:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v12, v0, Lcom/vkontakte/android/NewsEntry;->displayablePreviewText:Ljava/lang/CharSequence;

    .line 703
    goto/16 :goto_3

    .line 705
    :pswitch_a
    if-eqz v15, :cond_3

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v26

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v26, " "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NotificationsView$NotificationsAdapter;->this$0:Lcom/vkontakte/android/NotificationsView;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/vkontakte/android/NotificationsView;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    const v27, 0x7f060103

    invoke-virtual/range {v26 .. v27}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 706
    goto/16 :goto_3

    .line 708
    :pswitch_b
    if-eqz v15, :cond_21

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v26

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v26, " "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NotificationsView$NotificationsAdapter;->this$0:Lcom/vkontakte/android/NotificationsView;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/vkontakte/android/NotificationsView;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    const v27, 0x7f060104

    invoke-virtual/range {v26 .. v27}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 709
    :cond_21
    iget-object v0, v5, Lcom/vkontakte/android/api/NotificationEntry;->parent:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/vkontakte/android/VideoAttachment;

    move-object/from16 v0, v25

    iget-object v12, v0, Lcom/vkontakte/android/VideoAttachment;->title:Ljava/lang/String;

    .line 710
    goto/16 :goto_3

    .line 712
    :pswitch_c
    if-eqz v15, :cond_22

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v26

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v26, " "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NotificationsView$NotificationsAdapter;->this$0:Lcom/vkontakte/android/NotificationsView;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/vkontakte/android/NotificationsView;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    const v27, 0x7f060105

    invoke-virtual/range {v26 .. v27}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 713
    :cond_22
    iget-object v0, v5, Lcom/vkontakte/android/api/NotificationEntry;->parent:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v12, v0, Lcom/vkontakte/android/NewsEntry;->displayablePreviewText:Ljava/lang/CharSequence;

    .line 714
    goto/16 :goto_3

    .line 716
    :pswitch_d
    if-eqz v15, :cond_23

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v26

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v26, " "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NotificationsView$NotificationsAdapter;->this$0:Lcom/vkontakte/android/NotificationsView;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/vkontakte/android/NotificationsView;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    const v27, 0x7f060106

    invoke-virtual/range {v26 .. v27}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 717
    :cond_23
    iget-object v0, v5, Lcom/vkontakte/android/api/NotificationEntry;->parent:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v12, v0, Lcom/vkontakte/android/NewsEntry;->displayablePreviewText:Ljava/lang/CharSequence;

    goto/16 :goto_3

    .line 722
    :cond_24
    const-string v26, ""

    goto/16 :goto_4

    .line 723
    :cond_25
    const/16 v26, 0x0

    goto/16 :goto_5

    .line 729
    .restart local v19    # "postphoto":Ljava/lang/String;
    :cond_26
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vkontakte/android/Attachment;

    .line 730
    .local v4, "att":Lcom/vkontakte/android/Attachment;
    instance-of v0, v4, Lcom/vkontakte/android/ImageAttachment;

    move/from16 v26, v0

    if-eqz v26, :cond_4

    .line 731
    check-cast v4, Lcom/vkontakte/android/ImageAttachment;

    .end local v4    # "att":Lcom/vkontakte/android/Attachment;
    invoke-interface {v4}, Lcom/vkontakte/android/ImageAttachment;->getImageURL()Ljava/lang/String;

    move-result-object v19

    .line 732
    goto/16 :goto_6

    .line 738
    :cond_27
    const v25, 0x7f0800f1

    move-object/from16 v0, v22

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Landroid/view/View;->setVisibility(I)V

    .line 739
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NotificationsView$NotificationsAdapter;->this$0:Lcom/vkontakte/android/NotificationsView;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/vkontakte/android/NotificationsView;->access$2(Lcom/vkontakte/android/NotificationsView;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->isAlreadyLoaded(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_28

    .line 740
    const v25, 0x7f0800f1

    move-object/from16 v0, v22

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NotificationsView$NotificationsAdapter;->this$0:Lcom/vkontakte/android/NotificationsView;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/vkontakte/android/NotificationsView;->access$2(Lcom/vkontakte/android/NotificationsView;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_7

    .line 742
    :cond_28
    const v25, 0x7f0800f1

    move-object/from16 v0, v22

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/ImageView;

    const v26, 0x7f020208

    invoke-virtual/range {v25 .. v26}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_7

    .line 750
    .end local v12    # "link":Ljava/lang/CharSequence;
    .end local v15    # "ni":Z
    .end local v19    # "postphoto":Ljava/lang/String;
    :cond_29
    const v25, 0x7f0800f5

    move-object/from16 v0, v22

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    if-eqz v25, :cond_2a

    const v25, 0x7f0800f5

    move-object/from16 v0, v22

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/TextView;

    const/16 v26, 0x8

    invoke-virtual/range {v25 .. v26}, Landroid/widget/TextView;->setVisibility(I)V

    .line 751
    :cond_2a
    const v25, 0x7f0800f1

    move-object/from16 v0, v22

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    if-eqz v25, :cond_2b

    const v25, 0x7f0800f1

    move-object/from16 v0, v22

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    const/16 v26, 0x8

    invoke-virtual/range {v25 .. v26}, Landroid/view/View;->setVisibility(I)V

    .line 752
    :cond_2b
    const v25, 0x7f0800f1

    move-object/from16 v0, v22

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    if-eqz v25, :cond_5

    .line 753
    const v25, 0x7f0800f1

    move-object/from16 v0, v22

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 754
    const v25, 0x7f0800f4

    move-object/from16 v0, v22

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 755
    const v25, 0x7f0800f5

    move-object/from16 v0, v22

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_8

    .line 780
    .restart local v11    # "iv":Landroid/widget/ImageView;
    :cond_2c
    const/16 v25, 0x1f4

    move-object/from16 v0, v22

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .end local v11    # "iv":Landroid/widget/ImageView;
    check-cast v11, Landroid/widget/ImageView;

    .restart local v11    # "iv":Landroid/widget/ImageView;
    goto/16 :goto_9

    .line 782
    :cond_2d
    const v25, 0x7f0201a7

    goto/16 :goto_a

    .line 788
    .end local v11    # "iv":Landroid/widget/ImageView;
    :cond_2e
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/NotificationsView$NotificationsAdapter;->getCount()I

    move-result v25

    add-int/lit8 v25, v25, -0x1

    move/from16 v0, p1

    move/from16 v1, v25

    if-ne v0, v1, :cond_2f

    .line 789
    const v25, 0x7f0200ac

    move-object/from16 v0, v22

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_b

    .line 791
    :cond_2f
    const v25, 0x7f0200ae

    move-object/from16 v0, v22

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_b

    .line 793
    .end local v22    # "v":Landroid/view/View;
    .restart local v23    # "v":Landroid/view/View;
    :catch_1
    move-exception v24

    move-object/from16 v22, v23

    .end local v23    # "v":Landroid/view/View;
    .restart local v22    # "v":Landroid/view/View;
    goto/16 :goto_c

    .line 699
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch

    .line 563
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch

    .line 581
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 499
    const/16 v0, 0xa

    return v0
.end method

.method public isEnabled(I)Z
    .locals 3
    .param p1, "pos"    # I

    .prologue
    const/4 v1, 0x1

    .line 520
    sget-object v0, Lcom/vkontakte/android/NotificationsView;->notifications:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/api/NotificationEntry;

    iget v0, v0, Lcom/vkontakte/android/api/NotificationEntry;->feedbackType:I

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/vkontakte/android/NotificationsView;->notifications:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/api/NotificationEntry;

    iget v0, v0, Lcom/vkontakte/android/api/NotificationEntry;->feedbackType:I

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
