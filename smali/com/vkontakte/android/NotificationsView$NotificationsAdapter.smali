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
    .line 427
    iput-object p1, p0, Lcom/vkontakte/android/NotificationsView$NotificationsAdapter;->this$0:Lcom/vkontakte/android/NotificationsView;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkontakte/android/NotificationsView;Lcom/vkontakte/android/NotificationsView$NotificationsAdapter;)V
    .locals 0

    .prologue
    .line 427
    invoke-direct {p0, p1}, Lcom/vkontakte/android/NotificationsView$NotificationsAdapter;-><init>(Lcom/vkontakte/android/NotificationsView;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 431
    invoke-static {}, Lcom/vkontakte/android/NotificationsView;->access$0()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 436
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 441
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "pos"    # I

    .prologue
    .line 451
    invoke-static {}, Lcom/vkontakte/android/NotificationsView;->access$0()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/api/NotificationEntry;

    iget v0, v0, Lcom/vkontakte/android/api/NotificationEntry;->feedbackType:I

    packed-switch v0, :pswitch_data_0

    .line 459
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 454
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 456
    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 451
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 30
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 470
    move-object/from16 v23, p2

    .line 472
    .local v23, "v":Landroid/view/View;
    :try_start_0
    invoke-static {}, Lcom/vkontakte/android/NotificationsView;->access$0()Ljava/util/Vector;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vkontakte/android/api/NotificationEntry;

    .line 473
    .local v6, "e":Lcom/vkontakte/android/api/NotificationEntry;
    const/4 v11, 0x0

    .line 474
    .local v11, "info":Ljava/lang/String;
    iget v0, v6, Lcom/vkontakte/android/api/NotificationEntry;->feedbackType:I

    move/from16 v26, v0

    const/16 v27, 0x3

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_b

    .line 475
    if-nez v23, :cond_0

    .line 476
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NotificationsView$NotificationsAdapter;->this$0:Lcom/vkontakte/android/NotificationsView;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/vkontakte/android/NotificationsView;->getContext()Landroid/content/Context;

    move-result-object v26

    const v27, 0x7f030028

    const/16 v28, 0x0

    invoke-static/range {v26 .. v28}, Lcom/vkontakte/android/NotificationsView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v23

    .line 477
    invoke-static/range {v23 .. v23}, Lcom/vkontakte/android/Global;->setFontOnAll(Landroid/view/View;)V

    .line 478
    new-instance v26, Lcom/vkontakte/android/ui/HighlightDrawable;

    invoke-direct/range {v26 .. v26}, Lcom/vkontakte/android/ui/HighlightDrawable;-><init>()V

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 479
    const v26, 0x7f0600b3

    move-object/from16 v0, v23

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NotificationsView$NotificationsAdapter;->this$0:Lcom/vkontakte/android/NotificationsView;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/vkontakte/android/NotificationsView;->access$1(Lcom/vkontakte/android/NotificationsView;)Landroid/view/View$OnClickListener;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 480
    const v26, 0x7f0600b4

    move-object/from16 v0, v23

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NotificationsView$NotificationsAdapter;->this$0:Lcom/vkontakte/android/NotificationsView;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/vkontakte/android/NotificationsView;->access$2(Lcom/vkontakte/android/NotificationsView;)Landroid/view/View$OnClickListener;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 481
    const v26, 0x7f0600b8

    move-object/from16 v0, v23

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NotificationsView$NotificationsAdapter;->this$0:Lcom/vkontakte/android/NotificationsView;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/vkontakte/android/NotificationsView;->access$2(Lcom/vkontakte/android/NotificationsView;)Landroid/view/View$OnClickListener;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 482
    const v26, 0x7f0600b7

    move-object/from16 v0, v23

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NotificationsView$NotificationsAdapter;->this$0:Lcom/vkontakte/android/NotificationsView;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/vkontakte/android/NotificationsView;->access$2(Lcom/vkontakte/android/NotificationsView;)Landroid/view/View$OnClickListener;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 484
    :cond_0
    const v26, 0x7f0600b5

    move-object/from16 v0, v23

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/TextView;

    iget-object v0, v6, Lcom/vkontakte/android/api/NotificationEntry;->commentUser:Lcom/vkontakte/android/UserProfile;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 485
    const v26, 0x7f0600b6

    move-object/from16 v0, v23

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/TextView;

    iget-object v0, v6, Lcom/vkontakte/android/api/NotificationEntry;->displayableText:Ljava/lang/CharSequence;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 487
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NotificationsView$NotificationsAdapter;->this$0:Lcom/vkontakte/android/NotificationsView;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/vkontakte/android/NotificationsView;->access$3(Lcom/vkontakte/android/NotificationsView;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    move-result-object v26

    iget-object v0, v6, Lcom/vkontakte/android/api/NotificationEntry;->commentUser:Lcom/vkontakte/android/UserProfile;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->isAlreadyLoaded(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_a

    .line 488
    const v26, 0x7f0600b3

    move-object/from16 v0, v23

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NotificationsView$NotificationsAdapter;->this$0:Lcom/vkontakte/android/NotificationsView;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/vkontakte/android/NotificationsView;->access$3(Lcom/vkontakte/android/NotificationsView;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    move-result-object v27

    iget-object v0, v6, Lcom/vkontakte/android/api/NotificationEntry;->commentUser:Lcom/vkontakte/android/UserProfile;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 494
    :goto_0
    const v26, 0x7f0600b3

    move-object/from16 v0, v23

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v26

    iget-object v0, v6, Lcom/vkontakte/android/api/NotificationEntry;->commentUser:Lcom/vkontakte/android/UserProfile;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Lcom/vkontakte/android/UserProfile;->uid:I

    move/from16 v27, v0

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 620
    :cond_1
    :goto_1
    iget v0, v6, Lcom/vkontakte/android/api/NotificationEntry;->parentType:I

    move/from16 v26, v0

    if-lez v26, :cond_29

    .line 621
    if-nez v11, :cond_1f

    const/16 v16, 0x1

    .line 622
    .local v16, "ni":Z
    :goto_2
    if-eqz v16, :cond_2

    iget v0, v6, Lcom/vkontakte/android/api/NotificationEntry;->time:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NotificationsView$NotificationsAdapter;->this$0:Lcom/vkontakte/android/NotificationsView;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/vkontakte/android/NotificationsView;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lcom/vkontakte/android/Global;->langDateRelative(ILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v11

    .line 623
    :cond_2
    const-string v13, ""

    .line 624
    .local v13, "link":Ljava/lang/String;
    iget v0, v6, Lcom/vkontakte/android/api/NotificationEntry;->parentType:I

    move/from16 v26, v0

    packed-switch v26, :pswitch_data_0

    .line 645
    :cond_3
    :goto_3
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v26

    if-lez v26, :cond_24

    .line 646
    const v26, 0x7f0600b8

    move-object/from16 v0, v23

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/TextView;

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Landroid/widget/TextView;->setVisibility(I)V

    .line 647
    const v26, 0x7f0600b8

    move-object/from16 v0, v23

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/TextView;

    move-object/from16 v0, v26

    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 651
    :goto_4
    const/16 v20, 0x0

    .line 652
    .local v20, "postphoto":Ljava/lang/String;
    iget-object v0, v6, Lcom/vkontakte/android/api/NotificationEntry;->parent:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/Vector;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v26

    :cond_4
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-nez v27, :cond_25

    .line 662
    :goto_5
    if-nez v20, :cond_27

    .line 663
    const v26, 0x7f0600b4

    move-object/from16 v0, v23

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v26

    const/16 v27, 0x8

    invoke-virtual/range {v26 .. v27}, Landroid/view/View;->setVisibility(I)V

    .line 671
    :goto_6
    const v26, 0x7f0600b4

    move-object/from16 v0, v23

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v26

    if-eqz v26, :cond_5

    .line 672
    const v26, 0x7f0600b4

    move-object/from16 v0, v23

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v26

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 673
    const v26, 0x7f0600b7

    move-object/from16 v0, v23

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v26

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 674
    const v26, 0x7f0600b8

    move-object/from16 v0, v23

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v26

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 685
    .end local v13    # "link":Ljava/lang/String;
    .end local v16    # "ni":Z
    .end local v20    # "postphoto":Ljava/lang/String;
    :cond_5
    :goto_7
    const v26, 0x7f0600b7

    move-object/from16 v0, v23

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v26

    if-eqz v26, :cond_6

    const v26, 0x7f0600b7

    move-object/from16 v0, v23

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/TextView;

    move-object/from16 v0, v26

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 686
    :cond_6
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 687
    const/16 v26, 0x1f4

    move-object/from16 v0, v23

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v26

    if-eqz v26, :cond_7

    const/16 v26, 0x1f4

    move-object/from16 v0, v23

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v26

    const/16 v27, 0x8

    invoke-virtual/range {v26 .. v27}, Landroid/view/View;->setVisibility(I)V

    .line 689
    :cond_7
    iget v0, v6, Lcom/vkontakte/android/api/NotificationEntry;->replyID:I

    move/from16 v26, v0

    if-gtz v26, :cond_8

    iget-boolean v0, v6, Lcom/vkontakte/android/api/NotificationEntry;->isLiked:Z

    move/from16 v26, v0

    if-eqz v26, :cond_9

    .line 690
    :cond_8
    const/4 v12, 0x0

    .line 691
    .local v12, "iv":Landroid/widget/ImageView;
    const/16 v26, 0x1f4

    move-object/from16 v0, v23

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v26

    if-nez v26, :cond_2c

    .line 692
    new-instance v12, Landroid/widget/ImageView;

    .end local v12    # "iv":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NotificationsView$NotificationsAdapter;->this$0:Lcom/vkontakte/android/NotificationsView;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/vkontakte/android/NotificationsView;->getContext()Landroid/content/Context;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-direct {v12, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 693
    .restart local v12    # "iv":Landroid/widget/ImageView;
    sget-object v26, Landroid/widget/ImageView$ScaleType;->FIT_END:Landroid/widget/ImageView$ScaleType;

    move-object/from16 v0, v26

    invoke-virtual {v12, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 694
    new-instance v14, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v26, -0x2

    const/16 v27, -0x1

    move/from16 v0, v26

    move/from16 v1, v27

    invoke-direct {v14, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 695
    .local v14, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v26, 0xb

    move/from16 v0, v26

    invoke-virtual {v14, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 696
    const/16 v26, 0xc

    move/from16 v0, v26

    invoke-virtual {v14, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 697
    const/16 v26, 0xa

    move/from16 v0, v26

    invoke-virtual {v14, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 702
    invoke-virtual {v12, v14}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 703
    const/16 v26, 0x1f4

    move/from16 v0, v26

    invoke-virtual {v12, v0}, Landroid/widget/ImageView;->setId(I)V

    .line 704
    move-object/from16 v0, v23

    check-cast v0, Landroid/view/ViewGroup;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 709
    .end local v14    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    :goto_8
    iget v0, v6, Lcom/vkontakte/android/api/NotificationEntry;->replyID:I

    move/from16 v26, v0

    if-lez v26, :cond_2d

    const v26, 0x7f020177

    :goto_9
    move/from16 v0, v26

    invoke-virtual {v12, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 710
    const/16 v26, 0x0

    move/from16 v0, v26

    invoke-virtual {v12, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 713
    .end local v12    # "iv":Landroid/widget/ImageView;
    :cond_9
    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v26

    check-cast v26, Lcom/vkontakte/android/ui/HighlightDrawable;

    if-nez p1, :cond_2e

    const/16 v27, 0x1

    :goto_a
    invoke-virtual/range {v26 .. v27}, Lcom/vkontakte/android/ui/HighlightDrawable;->setFirst(Z)V

    .line 715
    .end local v6    # "e":Lcom/vkontakte/android/api/NotificationEntry;
    .end local v11    # "info":Ljava/lang/String;
    :goto_b
    return-object v23

    .line 490
    .restart local v6    # "e":Lcom/vkontakte/android/api/NotificationEntry;
    .restart local v11    # "info":Ljava/lang/String;
    :cond_a
    const v26, 0x7f0600b3

    move-object/from16 v0, v23

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/ImageView;

    const v27, 0x7f0201e8

    invoke-virtual/range {v26 .. v27}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 714
    .end local v6    # "e":Lcom/vkontakte/android/api/NotificationEntry;
    .end local v11    # "info":Ljava/lang/String;
    :catch_0
    move-exception v25

    .local v25, "x":Ljava/lang/Exception;
    :goto_c
    const-string v26, "vk"

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_b

    .line 495
    .end local v25    # "x":Ljava/lang/Exception;
    .restart local v6    # "e":Lcom/vkontakte/android/api/NotificationEntry;
    .restart local v11    # "info":Ljava/lang/String;
    :cond_b
    :try_start_1
    iget v0, v6, Lcom/vkontakte/android/api/NotificationEntry;->feedbackType:I

    move/from16 v26, v0

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_c

    iget v0, v6, Lcom/vkontakte/android/api/NotificationEntry;->feedbackType:I

    move/from16 v26, v0

    const/16 v27, 0x4

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_1a

    .line 496
    :cond_c
    if-nez v23, :cond_d

    .line 497
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NotificationsView$NotificationsAdapter;->this$0:Lcom/vkontakte/android/NotificationsView;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/vkontakte/android/NotificationsView;->getContext()Landroid/content/Context;

    move-result-object v26

    const v27, 0x7f030029

    const/16 v28, 0x0

    invoke-static/range {v26 .. v28}, Lcom/vkontakte/android/NotificationsView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v23

    .line 498
    invoke-static/range {v23 .. v23}, Lcom/vkontakte/android/Global;->setFontOnAll(Landroid/view/View;)V

    .line 499
    new-instance v26, Lcom/vkontakte/android/ui/HighlightDrawable;

    invoke-direct/range {v26 .. v26}, Lcom/vkontakte/android/ui/HighlightDrawable;-><init>()V

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 500
    const v26, 0x7f0600b4

    move-object/from16 v0, v23

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NotificationsView$NotificationsAdapter;->this$0:Lcom/vkontakte/android/NotificationsView;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/vkontakte/android/NotificationsView;->access$2(Lcom/vkontakte/android/NotificationsView;)Landroid/view/View$OnClickListener;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 501
    const v26, 0x7f0600b8

    move-object/from16 v0, v23

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NotificationsView$NotificationsAdapter;->this$0:Lcom/vkontakte/android/NotificationsView;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/vkontakte/android/NotificationsView;->access$2(Lcom/vkontakte/android/NotificationsView;)Landroid/view/View$OnClickListener;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 502
    const v26, 0x7f0600b7

    move-object/from16 v0, v23

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NotificationsView$NotificationsAdapter;->this$0:Lcom/vkontakte/android/NotificationsView;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/vkontakte/android/NotificationsView;->access$2(Lcom/vkontakte/android/NotificationsView;)Landroid/view/View$OnClickListener;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 504
    :cond_d
    new-instance v26, Ljava/lang/StringBuilder;

    iget v0, v6, Lcom/vkontakte/android/api/NotificationEntry;->time:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NotificationsView$NotificationsAdapter;->this$0:Lcom/vkontakte/android/NotificationsView;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/vkontakte/android/NotificationsView;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Lcom/vkontakte/android/Global;->langDateRelative(ILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v27

    invoke-direct/range {v26 .. v27}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v27, " "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 505
    iget-object v0, v6, Lcom/vkontakte/android/api/NotificationEntry;->users:Ljava/util/Vector;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/Vector;->size()I

    move-result v17

    .line 506
    .local v17, "num":I
    iget-object v0, v6, Lcom/vkontakte/android/api/NotificationEntry;->users:Ljava/util/Vector;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/vkontakte/android/UserProfile;

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    move-object/from16 v22, v0

    .line 507
    .local v22, "title":Ljava/lang/String;
    const/16 v26, 0x2

    move/from16 v0, v17

    move/from16 v1, v26

    if-ne v0, v1, :cond_11

    .line 508
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v27

    invoke-direct/range {v26 .. v27}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v27, " "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NotificationsView$NotificationsAdapter;->this$0:Lcom/vkontakte/android/NotificationsView;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/vkontakte/android/NotificationsView;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    const v28, 0x7f09013c

    invoke-virtual/range {v27 .. v28}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    iget-object v0, v6, Lcom/vkontakte/android/api/NotificationEntry;->users:Ljava/util/Vector;

    move-object/from16 v26, v0

    const/16 v28, 0x1

    move-object/from16 v0, v26

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/vkontakte/android/UserProfile;

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 513
    :cond_e
    :goto_d
    const/4 v8, 0x0

    .local v8, "idx1":I
    const/4 v9, 0x0

    .local v9, "idx2":I
    const/4 v10, 0x0

    .line 515
    .local v10, "idx3":I
    iget v0, v6, Lcom/vkontakte/android/api/NotificationEntry;->action:I

    move/from16 v26, v0

    packed-switch v26, :pswitch_data_1

    .line 533
    :goto_e
    :pswitch_0
    iget v0, v6, Lcom/vkontakte/android/api/NotificationEntry;->parentType:I

    move/from16 v26, v0

    packed-switch v26, :pswitch_data_2

    .line 548
    :goto_f
    const/16 v26, 0x1

    move/from16 v0, v17

    move/from16 v1, v26

    if-ne v0, v1, :cond_13

    .line 549
    iget-object v0, v6, Lcom/vkontakte/android/api/NotificationEntry;->users:Ljava/util/Vector;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/vkontakte/android/UserProfile;

    move-object/from16 v0, v26

    iget-boolean v0, v0, Lcom/vkontakte/android/UserProfile;->f:Z

    move/from16 v26, v0

    if-eqz v26, :cond_12

    const/4 v9, 0x1

    .line 553
    :goto_10
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v27

    invoke-direct/range {v26 .. v27}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NotificationsView$NotificationsAdapter;->this$0:Lcom/vkontakte/android/NotificationsView;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/vkontakte/android/NotificationsView;->access$4(Lcom/vkontakte/android/NotificationsView;)[[[Ljava/lang/String;

    move-result-object v27

    aget-object v27, v27, v8

    aget-object v27, v27, v9

    aget-object v27, v27, v10

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 555
    new-instance v21, Ljava/util/Vector;

    invoke-direct/range {v21 .. v21}, Ljava/util/Vector;-><init>()V

    .line 556
    .local v21, "reusableViews":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/ui/RoundedImageView;>;"
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_11
    const v26, 0x7f0600b9

    move-object/from16 v0, v23

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/view/ViewGroup;

    invoke-virtual/range {v26 .. v26}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v26

    move/from16 v0, v26

    if-lt v7, v0, :cond_14

    .line 562
    const/4 v15, 0x0

    .line 564
    .local v15, "n":I
    iget-object v0, v6, Lcom/vkontakte/android/api/NotificationEntry;->users:Ljava/util/Vector;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v27

    :cond_f
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-nez v26, :cond_15

    .line 591
    :goto_12
    invoke-virtual/range {v21 .. v21}, Ljava/util/Vector;->size()I

    move-result v26

    if-lez v26, :cond_10

    .line 592
    invoke-virtual/range {v21 .. v21}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v27

    :goto_13
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-nez v26, :cond_19

    .line 598
    :cond_10
    const v26, 0x7f0600b5

    move-object/from16 v0, v23

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/TextView;

    move-object/from16 v0, v26

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 509
    .end local v7    # "i":I
    .end local v8    # "idx1":I
    .end local v9    # "idx2":I
    .end local v10    # "idx3":I
    .end local v15    # "n":I
    .end local v21    # "reusableViews":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/ui/RoundedImageView;>;"
    :cond_11
    const/16 v26, 0x2

    move/from16 v0, v17

    move/from16 v1, v26

    if-le v0, v1, :cond_e

    .line 510
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v27

    invoke-direct/range {v26 .. v27}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v27, " "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const v27, 0x7f0a0030

    add-int/lit8 v28, v17, -0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NotificationsView$NotificationsAdapter;->this$0:Lcom/vkontakte/android/NotificationsView;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/vkontakte/android/NotificationsView;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    invoke-static/range {v27 .. v29}, Lcom/vkontakte/android/Global;->langPlural(IILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    goto/16 :goto_d

    .line 517
    .restart local v8    # "idx1":I
    .restart local v9    # "idx2":I
    .restart local v10    # "idx3":I
    :pswitch_1
    const/4 v8, 0x0

    .line 518
    const v26, 0x7f0600ba

    move-object/from16 v0, v23

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/ImageView;

    const v27, 0x7f0200fa

    invoke-virtual/range {v26 .. v27}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_e

    .line 521
    :pswitch_2
    const/4 v8, 0x1

    .line 522
    const v26, 0x7f0600ba

    move-object/from16 v0, v23

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/ImageView;

    const v27, 0x7f020180

    invoke-virtual/range {v26 .. v27}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_e

    .line 525
    :pswitch_3
    const/4 v8, 0x2

    .line 526
    const v26, 0x7f0600ba

    move-object/from16 v0, v23

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/ImageView;

    const v27, 0x7f020179

    invoke-virtual/range {v26 .. v27}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_e

    .line 529
    :pswitch_4
    const/4 v8, 0x3

    .line 530
    const v26, 0x7f0600ba

    move-object/from16 v0, v23

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/ImageView;

    const v27, 0x7f02017f

    invoke-virtual/range {v26 .. v27}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_e

    .line 535
    :pswitch_5
    const/4 v10, 0x0

    .line 536
    goto/16 :goto_f

    .line 538
    :pswitch_6
    const/4 v10, 0x1

    .line 539
    goto/16 :goto_f

    .line 541
    :pswitch_7
    const/4 v10, 0x2

    .line 542
    goto/16 :goto_f

    .line 544
    :pswitch_8
    const/4 v10, 0x3

    goto/16 :goto_f

    .line 549
    :cond_12
    const/4 v9, 0x0

    goto/16 :goto_10

    .line 551
    :cond_13
    const/4 v9, 0x2

    goto/16 :goto_10

    .line 557
    .restart local v7    # "i":I
    .restart local v21    # "reusableViews":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/ui/RoundedImageView;>;"
    :cond_14
    const v26, 0x7f0600b9

    move-object/from16 v0, v23

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/view/ViewGroup;

    move-object/from16 v0, v26

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Lcom/vkontakte/android/ui/RoundedImageView;

    .line 559
    .local v12, "iv":Lcom/vkontakte/android/ui/RoundedImageView;
    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 556
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_11

    .line 564
    .end local v12    # "iv":Lcom/vkontakte/android/ui/RoundedImageView;
    .restart local v15    # "n":I
    :cond_15
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/vkontakte/android/UserProfile;

    .line 565
    .local v19, "p":Lcom/vkontakte/android/UserProfile;
    const/4 v12, 0x0

    .line 566
    .restart local v12    # "iv":Lcom/vkontakte/android/ui/RoundedImageView;
    invoke-virtual/range {v21 .. v21}, Ljava/util/Vector;->size()I

    move-result v26

    if-lez v26, :cond_16

    .line 567
    const/16 v26, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    move-result-object v12

    .end local v12    # "iv":Lcom/vkontakte/android/ui/RoundedImageView;
    check-cast v12, Lcom/vkontakte/android/ui/RoundedImageView;

    .line 581
    .restart local v12    # "iv":Lcom/vkontakte/android/ui/RoundedImageView;
    :goto_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NotificationsView$NotificationsAdapter;->this$0:Lcom/vkontakte/android/NotificationsView;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/vkontakte/android/NotificationsView;->access$3(Lcom/vkontakte/android/NotificationsView;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    move-result-object v26

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->isAlreadyLoaded(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_18

    .line 582
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NotificationsView$NotificationsAdapter;->this$0:Lcom/vkontakte/android/NotificationsView;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/vkontakte/android/NotificationsView;->access$3(Lcom/vkontakte/android/NotificationsView;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    move-result-object v26

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v12, v0}, Lcom/vkontakte/android/ui/RoundedImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 585
    :goto_15
    move-object/from16 v0, v19

    iget v0, v0, Lcom/vkontakte/android/UserProfile;->uid:I

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v12, v0}, Lcom/vkontakte/android/ui/RoundedImageView;->setTag(Ljava/lang/Object;)V

    .line 587
    add-int/lit8 v15, v15, 0x1

    .line 588
    const/16 v26, 0x5

    move/from16 v0, v26

    if-lt v15, v0, :cond_f

    goto/16 :goto_12

    .line 568
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NotificationsView$NotificationsAdapter;->this$0:Lcom/vkontakte/android/NotificationsView;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/vkontakte/android/NotificationsView;->access$5(Lcom/vkontakte/android/NotificationsView;)Ljava/util/Vector;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/util/Vector;->size()I

    move-result v26

    if-lez v26, :cond_17

    .line 569
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NotificationsView$NotificationsAdapter;->this$0:Lcom/vkontakte/android/NotificationsView;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/vkontakte/android/NotificationsView;->access$5(Lcom/vkontakte/android/NotificationsView;)Ljava/util/Vector;

    move-result-object v26

    const/16 v28, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    move-result-object v12

    .end local v12    # "iv":Lcom/vkontakte/android/ui/RoundedImageView;
    check-cast v12, Lcom/vkontakte/android/ui/RoundedImageView;

    .line 570
    .restart local v12    # "iv":Lcom/vkontakte/android/ui/RoundedImageView;
    const v26, 0x7f0600b9

    move-object/from16 v0, v23

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/view/ViewGroup;

    move-object/from16 v0, v26

    invoke-virtual {v0, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto/16 :goto_14

    .line 572
    :cond_17
    new-instance v12, Lcom/vkontakte/android/ui/RoundedImageView;

    .end local v12    # "iv":Lcom/vkontakte/android/ui/RoundedImageView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NotificationsView$NotificationsAdapter;->this$0:Lcom/vkontakte/android/NotificationsView;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/vkontakte/android/NotificationsView;->getContext()Landroid/content/Context;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-direct {v12, v0}, Lcom/vkontakte/android/ui/RoundedImageView;-><init>(Landroid/content/Context;)V

    .line 573
    .restart local v12    # "iv":Lcom/vkontakte/android/ui/RoundedImageView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NotificationsView$NotificationsAdapter;->this$0:Lcom/vkontakte/android/NotificationsView;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/vkontakte/android/NotificationsView;->access$1(Lcom/vkontakte/android/NotificationsView;)Landroid/view/View$OnClickListener;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v12, v0}, Lcom/vkontakte/android/ui/RoundedImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 574
    new-instance v14, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v26, 0x420c0000    # 35.0f

    invoke-static/range {v26 .. v26}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v26

    const/high16 v28, 0x420c0000    # 35.0f

    invoke-static/range {v28 .. v28}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v28

    move/from16 v0, v26

    move/from16 v1, v28

    invoke-direct {v14, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 575
    .local v14, "lp":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v26, 0x40a00000    # 5.0f

    invoke-static/range {v26 .. v26}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v26

    move/from16 v0, v26

    iput v0, v14, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 576
    invoke-virtual {v12, v14}, Lcom/vkontakte/android/ui/RoundedImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 577
    const v26, 0x7f0600b9

    move-object/from16 v0, v23

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/view/ViewGroup;

    move-object/from16 v0, v26

    invoke-virtual {v0, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 578
    const/high16 v26, 0x40000000    # 2.0f

    invoke-static/range {v26 .. v26}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v26

    move/from16 v0, v26

    invoke-virtual {v12, v0}, Lcom/vkontakte/android/ui/RoundedImageView;->setCornerRadius(I)V

    goto/16 :goto_14

    .line 584
    .end local v14    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_18
    const v26, 0x7f0201e8

    move/from16 v0, v26

    invoke-virtual {v12, v0}, Lcom/vkontakte/android/ui/RoundedImageView;->setImageResource(I)V

    goto/16 :goto_15

    .line 592
    .end local v12    # "iv":Lcom/vkontakte/android/ui/RoundedImageView;
    .end local v19    # "p":Lcom/vkontakte/android/UserProfile;
    :cond_19
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/vkontakte/android/ui/RoundedImageView;

    .line 593
    .restart local v12    # "iv":Lcom/vkontakte/android/ui/RoundedImageView;
    invoke-virtual {v12}, Lcom/vkontakte/android/ui/RoundedImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v26

    check-cast v26, Landroid/view/ViewGroup;

    move-object/from16 v0, v26

    invoke-virtual {v0, v12}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 594
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NotificationsView$NotificationsAdapter;->this$0:Lcom/vkontakte/android/NotificationsView;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/vkontakte/android/NotificationsView;->access$5(Lcom/vkontakte/android/NotificationsView;)Ljava/util/Vector;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v12}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto/16 :goto_13

    .line 599
    .end local v7    # "i":I
    .end local v8    # "idx1":I
    .end local v9    # "idx2":I
    .end local v10    # "idx3":I
    .end local v12    # "iv":Lcom/vkontakte/android/ui/RoundedImageView;
    .end local v15    # "n":I
    .end local v17    # "num":I
    .end local v21    # "reusableViews":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/ui/RoundedImageView;>;"
    .end local v22    # "title":Ljava/lang/String;
    :cond_1a
    iget v0, v6, Lcom/vkontakte/android/api/NotificationEntry;->action:I

    move/from16 v26, v0

    const/16 v27, 0x4

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_1b

    iget v0, v6, Lcom/vkontakte/android/api/NotificationEntry;->action:I

    move/from16 v26, v0

    const/16 v27, 0x5

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_1e

    .line 600
    :cond_1b
    const/16 v18, 0x0

    .line 601
    .local v18, "nv":Lcom/vkontakte/android/NewsItemView;
    if-eqz v23, :cond_1c

    move-object/from16 v0, v23

    check-cast v0, Lcom/vkontakte/android/NewsItemView;

    move-object/from16 v18, v0

    .line 602
    :cond_1c
    if-nez v18, :cond_1d

    .line 603
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NotificationsView$NotificationsAdapter;->this$0:Lcom/vkontakte/android/NotificationsView;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/vkontakte/android/NotificationsView;->getContext()Landroid/content/Context;

    move-result-object v26

    const v27, 0x7f030025

    const/16 v28, 0x0

    invoke-static/range {v26 .. v28}, Lcom/vkontakte/android/NotificationsView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v18

    .end local v18    # "nv":Lcom/vkontakte/android/NewsItemView;
    check-cast v18, Lcom/vkontakte/android/NewsItemView;

    .line 605
    .restart local v18    # "nv":Lcom/vkontakte/android/NewsItemView;
    :cond_1d
    invoke-virtual/range {v18 .. v18}, Lcom/vkontakte/android/NewsItemView;->reset()V

    .line 606
    iget-object v0, v6, Lcom/vkontakte/android/api/NotificationEntry;->parent:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v26, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/NewsItemView;->setData(Lcom/vkontakte/android/NewsEntry;)V

    .line 607
    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v26

    move/from16 v2, v27

    move/from16 v3, v28

    move/from16 v4, v29

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/vkontakte/android/NewsItemView;->setPadding(IIII)V

    .line 609
    move-object/from16 v23, v18

    .line 610
    invoke-static/range {v23 .. v23}, Lcom/vkontakte/android/Global;->setFontOnAll(Landroid/view/View;)V

    .line 611
    new-instance v26, Lcom/vkontakte/android/ui/HighlightDrawable;

    invoke-direct/range {v26 .. v26}, Lcom/vkontakte/android/ui/HighlightDrawable;-><init>()V

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    .line 614
    .end local v18    # "nv":Lcom/vkontakte/android/NewsItemView;
    :cond_1e
    if-nez v23, :cond_1

    .line 615
    new-instance v24, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NotificationsView$NotificationsAdapter;->this$0:Lcom/vkontakte/android/NotificationsView;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/vkontakte/android/NotificationsView;->getContext()Landroid/content/Context;

    move-result-object v26

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 616
    .end local v23    # "v":Landroid/view/View;
    .local v24, "v":Landroid/view/View;
    :try_start_2
    move-object/from16 v0, v24

    check-cast v0, Landroid/widget/TextView;

    move-object/from16 v26, v0

    const-string v27, "UNKNOWN!!"

    invoke-virtual/range {v26 .. v27}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-object/from16 v23, v24

    .end local v24    # "v":Landroid/view/View;
    .restart local v23    # "v":Landroid/view/View;
    goto/16 :goto_1

    .line 621
    :cond_1f
    const/16 v16, 0x0

    goto/16 :goto_2

    .line 626
    .restart local v13    # "link":Ljava/lang/String;
    .restart local v16    # "ni":Z
    :pswitch_9
    if-eqz v16, :cond_20

    :try_start_3
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v27

    invoke-direct/range {v26 .. v27}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v27, " "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NotificationsView$NotificationsAdapter;->this$0:Lcom/vkontakte/android/NotificationsView;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/vkontakte/android/NotificationsView;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    const v28, 0x7f090137

    invoke-virtual/range {v27 .. v28}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 627
    :cond_20
    iget-object v0, v6, Lcom/vkontakte/android/api/NotificationEntry;->parent:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/vkontakte/android/NewsEntry;->text:Ljava/lang/String;

    move-object/from16 v26, v0

    const-string v27, "<a href=\'vkontakte://profile/(\\d+)\'>([^<]+)</a>"

    const-string v28, "$2"

    invoke-virtual/range {v26 .. v28}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 628
    goto/16 :goto_3

    .line 630
    :pswitch_a
    if-eqz v16, :cond_3

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v27

    invoke-direct/range {v26 .. v27}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v27, " "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NotificationsView$NotificationsAdapter;->this$0:Lcom/vkontakte/android/NotificationsView;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/vkontakte/android/NotificationsView;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    const v28, 0x7f090138

    invoke-virtual/range {v27 .. v28}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 631
    goto/16 :goto_3

    .line 633
    :pswitch_b
    if-eqz v16, :cond_21

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v27

    invoke-direct/range {v26 .. v27}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v27, " "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NotificationsView$NotificationsAdapter;->this$0:Lcom/vkontakte/android/NotificationsView;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/vkontakte/android/NotificationsView;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    const v28, 0x7f090139

    invoke-virtual/range {v27 .. v28}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 634
    :cond_21
    iget-object v0, v6, Lcom/vkontakte/android/api/NotificationEntry;->parent:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/Vector;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/vkontakte/android/VideoAttachment;

    move-object/from16 v0, v26

    iget-object v13, v0, Lcom/vkontakte/android/VideoAttachment;->title:Ljava/lang/String;

    .line 635
    goto/16 :goto_3

    .line 637
    :pswitch_c
    if-eqz v16, :cond_22

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v27

    invoke-direct/range {v26 .. v27}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v27, " "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NotificationsView$NotificationsAdapter;->this$0:Lcom/vkontakte/android/NotificationsView;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/vkontakte/android/NotificationsView;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    const v28, 0x7f09013a

    invoke-virtual/range {v27 .. v28}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 638
    :cond_22
    iget-object v0, v6, Lcom/vkontakte/android/api/NotificationEntry;->parent:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v13, v0, Lcom/vkontakte/android/NewsEntry;->text:Ljava/lang/String;

    .line 639
    goto/16 :goto_3

    .line 641
    :pswitch_d
    if-eqz v16, :cond_23

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v27

    invoke-direct/range {v26 .. v27}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v27, " "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NotificationsView$NotificationsAdapter;->this$0:Lcom/vkontakte/android/NotificationsView;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/vkontakte/android/NotificationsView;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    const v28, 0x7f09013b

    invoke-virtual/range {v27 .. v28}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 642
    :cond_23
    iget-object v0, v6, Lcom/vkontakte/android/api/NotificationEntry;->parent:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v13, v0, Lcom/vkontakte/android/NewsEntry;->text:Ljava/lang/String;

    goto/16 :goto_3

    .line 649
    :cond_24
    const v26, 0x7f0600b8

    move-object/from16 v0, v23

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/TextView;

    const/16 v27, 0x8

    invoke-virtual/range {v26 .. v27}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_4

    .line 652
    .restart local v20    # "postphoto":Ljava/lang/String;
    :cond_25
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vkontakte/android/Attachment;

    .line 653
    .local v5, "att":Lcom/vkontakte/android/Attachment;
    instance-of v0, v5, Lcom/vkontakte/android/PhotoAttachment;

    move/from16 v27, v0

    if-eqz v27, :cond_26

    .line 654
    check-cast v5, Lcom/vkontakte/android/PhotoAttachment;

    .end local v5    # "att":Lcom/vkontakte/android/Attachment;
    iget-object v0, v5, Lcom/vkontakte/android/PhotoAttachment;->srcThumb:Ljava/lang/String;

    move-object/from16 v20, v0

    .line 655
    goto/16 :goto_5

    .line 657
    .restart local v5    # "att":Lcom/vkontakte/android/Attachment;
    :cond_26
    instance-of v0, v5, Lcom/vkontakte/android/VideoAttachment;

    move/from16 v27, v0

    if-eqz v27, :cond_4

    .line 658
    check-cast v5, Lcom/vkontakte/android/VideoAttachment;

    .end local v5    # "att":Lcom/vkontakte/android/Attachment;
    iget-object v0, v5, Lcom/vkontakte/android/VideoAttachment;->image:Ljava/lang/String;

    move-object/from16 v20, v0

    .line 659
    goto/16 :goto_5

    .line 665
    :cond_27
    const v26, 0x7f0600b4

    move-object/from16 v0, v23

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v26

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Landroid/view/View;->setVisibility(I)V

    .line 666
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NotificationsView$NotificationsAdapter;->this$0:Lcom/vkontakte/android/NotificationsView;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/vkontakte/android/NotificationsView;->access$3(Lcom/vkontakte/android/NotificationsView;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->isAlreadyLoaded(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_28

    .line 667
    const v26, 0x7f0600b4

    move-object/from16 v0, v23

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NotificationsView$NotificationsAdapter;->this$0:Lcom/vkontakte/android/NotificationsView;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/vkontakte/android/NotificationsView;->access$3(Lcom/vkontakte/android/NotificationsView;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_6

    .line 669
    :cond_28
    const v26, 0x7f0600b4

    move-object/from16 v0, v23

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/ImageView;

    const v27, 0x7f0201e9

    invoke-virtual/range {v26 .. v27}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_6

    .line 677
    .end local v13    # "link":Ljava/lang/String;
    .end local v16    # "ni":Z
    .end local v20    # "postphoto":Ljava/lang/String;
    :cond_29
    const v26, 0x7f0600b8

    move-object/from16 v0, v23

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v26

    if-eqz v26, :cond_2a

    const v26, 0x7f0600b8

    move-object/from16 v0, v23

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/TextView;

    const/16 v27, 0x8

    invoke-virtual/range {v26 .. v27}, Landroid/widget/TextView;->setVisibility(I)V

    .line 678
    :cond_2a
    const v26, 0x7f0600b4

    move-object/from16 v0, v23

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v26

    if-eqz v26, :cond_2b

    const v26, 0x7f0600b4

    move-object/from16 v0, v23

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v26

    const/16 v27, 0x8

    invoke-virtual/range {v26 .. v27}, Landroid/view/View;->setVisibility(I)V

    .line 679
    :cond_2b
    const v26, 0x7f0600b4

    move-object/from16 v0, v23

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v26

    if-eqz v26, :cond_5

    .line 680
    const v26, 0x7f0600b4

    move-object/from16 v0, v23

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v26

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 681
    const v26, 0x7f0600b7

    move-object/from16 v0, v23

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v26

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 682
    const v26, 0x7f0600b8

    move-object/from16 v0, v23

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v26

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_7

    .line 707
    .local v12, "iv":Landroid/widget/ImageView;
    :cond_2c
    const/16 v26, 0x1f4

    move-object/from16 v0, v23

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    .end local v12    # "iv":Landroid/widget/ImageView;
    check-cast v12, Landroid/widget/ImageView;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .restart local v12    # "iv":Landroid/widget/ImageView;
    goto/16 :goto_8

    .line 709
    :cond_2d
    const v26, 0x7f02017d

    goto/16 :goto_9

    .line 713
    .end local v12    # "iv":Landroid/widget/ImageView;
    :cond_2e
    const/16 v27, 0x0

    goto/16 :goto_a

    .line 714
    .end local v23    # "v":Landroid/view/View;
    .restart local v24    # "v":Landroid/view/View;
    :catch_1
    move-exception v25

    move-object/from16 v23, v24

    .end local v24    # "v":Landroid/view/View;
    .restart local v23    # "v":Landroid/view/View;
    goto/16 :goto_c

    .line 624
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch

    .line 515
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch

    .line 533
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
    .line 446
    const/16 v0, 0xa

    return v0
.end method

.method public isEnabled(I)Z
    .locals 3
    .param p1, "pos"    # I

    .prologue
    const/4 v1, 0x1

    .line 465
    invoke-static {}, Lcom/vkontakte/android/NotificationsView;->access$0()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/api/NotificationEntry;

    iget v0, v0, Lcom/vkontakte/android/api/NotificationEntry;->feedbackType:I

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/vkontakte/android/NotificationsView;->access$0()Ljava/util/Vector;

    move-result-object v0

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
