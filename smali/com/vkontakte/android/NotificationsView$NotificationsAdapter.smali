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
    .line 512
    iput-object p1, p0, Lcom/vkontakte/android/NotificationsView$NotificationsAdapter;->this$0:Lcom/vkontakte/android/NotificationsView;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkontakte/android/NotificationsView;Lcom/vkontakte/android/NotificationsView$NotificationsAdapter;)V
    .locals 0

    .prologue
    .line 512
    invoke-direct {p0, p1}, Lcom/vkontakte/android/NotificationsView$NotificationsAdapter;-><init>(Lcom/vkontakte/android/NotificationsView;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 516
    sget-object v0, Lcom/vkontakte/android/NotificationsView;->notifications:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 521
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 526
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "pos"    # I

    .prologue
    .line 536
    sget-object v0, Lcom/vkontakte/android/NotificationsView;->notifications:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/api/NotificationEntry;

    iget v0, v0, Lcom/vkontakte/android/api/NotificationEntry;->feedbackType:I

    packed-switch v0, :pswitch_data_0

    .line 550
    const/4 v0, 0x5

    :goto_0
    return v0

    .line 539
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 541
    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 543
    :pswitch_2
    const/4 v0, 0x0

    goto :goto_0

    .line 545
    :pswitch_3
    const/4 v0, 0x3

    goto :goto_0

    .line 547
    :pswitch_4
    const/4 v0, 0x4

    goto :goto_0

    .line 536
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 42
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 561
    move-object/from16 v34, p2

    .line 563
    .local v34, "v":Landroid/view/View;
    :try_start_0
    sget-object v37, Lcom/vkontakte/android/NotificationsView;->notifications:Ljava/util/Vector;

    move-object/from16 v0, v37

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/vkontakte/android/api/NotificationEntry;

    .line 564
    .local v7, "e":Lcom/vkontakte/android/api/NotificationEntry;
    iget v0, v7, Lcom/vkontakte/android/api/NotificationEntry;->feedbackType:I

    move/from16 v37, v0

    const/16 v38, 0x5

    move/from16 v0, v37

    move/from16 v1, v38

    if-ne v0, v1, :cond_2

    .line 565
    if-eqz v34, :cond_1

    move-object/from16 v33, v34

    .line 927
    .end local v7    # "e":Lcom/vkontakte/android/api/NotificationEntry;
    :cond_0
    :goto_0
    return-object v33

    .line 566
    .restart local v7    # "e":Lcom/vkontakte/android/api/NotificationEntry;
    :cond_1
    new-instance v33, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NotificationsView$NotificationsAdapter;->this$0:Lcom/vkontakte/android/NotificationsView;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Lcom/vkontakte/android/NotificationsView;->getContext()Landroid/content/Context;

    move-result-object v37

    move-object/from16 v0, v33

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 567
    .local v33, "tv":Landroid/widget/TextView;
    const v37, -0x7a7a7b

    move-object/from16 v0, v33

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 568
    sget-object v37, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    move-object/from16 v0, v33

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 569
    const/high16 v37, 0x41880000    # 17.0f

    invoke-static/range {v37 .. v37}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v37

    const/high16 v38, 0x41200000    # 10.0f

    invoke-static/range {v38 .. v38}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v38

    const/16 v39, 0x0

    const/16 v40, 0x0

    move-object/from16 v0, v33

    move/from16 v1, v37

    move/from16 v2, v38

    move/from16 v3, v39

    move/from16 v4, v40

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 570
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NotificationsView$NotificationsAdapter;->this$0:Lcom/vkontakte/android/NotificationsView;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Lcom/vkontakte/android/NotificationsView;->getResources()Landroid/content/res/Resources;

    move-result-object v37

    const v38, 0x7f08030f

    invoke-virtual/range {v37 .. v38}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v33

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 571
    const/16 v37, 0x1

    const/high16 v38, 0x41600000    # 14.0f

    move-object/from16 v0, v33

    move/from16 v1, v37

    move/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 926
    .end local v7    # "e":Lcom/vkontakte/android/api/NotificationEntry;
    .end local v33    # "tv":Landroid/widget/TextView;
    :catch_0
    move-exception v36

    .local v36, "x":Ljava/lang/Exception;
    :goto_1
    const-string v37, "vk"

    move-object/from16 v0, v37

    move-object/from16 v1, v36

    invoke-static {v0, v1}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v36    # "x":Ljava/lang/Exception;
    :goto_2
    move-object/from16 v33, v34

    .line 927
    goto :goto_0

    .line 574
    .restart local v7    # "e":Lcom/vkontakte/android/api/NotificationEntry;
    :cond_2
    :try_start_1
    iget v0, v7, Lcom/vkontakte/android/api/NotificationEntry;->feedbackType:I

    move/from16 v37, v0

    const/16 v38, 0x6

    move/from16 v0, v37

    move/from16 v1, v38

    if-ne v0, v1, :cond_4

    .line 575
    if-eqz v34, :cond_3

    move-object/from16 v0, v34

    check-cast v0, Landroid/widget/TextView;

    move-object/from16 v37, v0

    move-object/from16 v33, v37

    .line 576
    .restart local v33    # "tv":Landroid/widget/TextView;
    :goto_3
    const v38, 0x7f0d0067

    iget-object v0, v7, Lcom/vkontakte/android/api/NotificationEntry;->extra:Ljava/lang/Object;

    move-object/from16 v37, v0

    check-cast v37, Ljava/util/ArrayList;

    invoke-virtual/range {v37 .. v37}, Ljava/util/ArrayList;->size()I

    move-result v37

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NotificationsView$NotificationsAdapter;->this$0:Lcom/vkontakte/android/NotificationsView;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Lcom/vkontakte/android/NotificationsView;->getResources()Landroid/content/res/Resources;

    move-result-object v39

    move/from16 v0, v38

    move/from16 v1, v37

    move-object/from16 v2, v39

    invoke-static {v0, v1, v2}, Lcom/vkontakte/android/Global;->langPlural(IILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v33

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 577
    if-nez v34, :cond_0

    .line 578
    const v37, 0x7f0200af

    move-object/from16 v0, v33

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 579
    move-object/from16 v0, v33

    check-cast v0, Lcom/vkontakte/android/ui/OverlayTextView;

    move-object/from16 v37, v0

    const v38, 0x7f0200e6

    invoke-virtual/range {v37 .. v38}, Lcom/vkontakte/android/ui/OverlayTextView;->setOverlay(I)V

    .line 580
    move-object/from16 v0, v33

    check-cast v0, Lcom/vkontakte/android/ui/OverlayTextView;

    move-object/from16 v37, v0

    invoke-virtual/range {v33 .. v33}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v38

    const/16 v39, 0x0

    invoke-virtual/range {v33 .. v33}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v40

    const/16 v41, 0x0

    invoke-virtual/range {v37 .. v41}, Lcom/vkontakte/android/ui/OverlayTextView;->setOverlayPadding(IIII)V

    .line 581
    invoke-virtual/range {v33 .. v33}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v37

    const/high16 v38, 0x41200000    # 10.0f

    invoke-static/range {v38 .. v38}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v38

    invoke-virtual/range {v33 .. v33}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v39

    const/high16 v40, 0x41200000    # 10.0f

    invoke-static/range {v40 .. v40}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v40

    move-object/from16 v0, v33

    move/from16 v1, v37

    move/from16 v2, v38

    move/from16 v3, v39

    move/from16 v4, v40

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 582
    const/16 v37, 0x11

    move-object/from16 v0, v33

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 583
    const v37, -0xcc7337

    move-object/from16 v0, v33

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 584
    const/16 v37, 0x1

    const/high16 v38, 0x41700000    # 15.0f

    move-object/from16 v0, v33

    move/from16 v1, v37

    move/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    goto/16 :goto_0

    .line 575
    .end local v33    # "tv":Landroid/widget/TextView;
    :cond_3
    new-instance v33, Lcom/vkontakte/android/ui/OverlayTextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NotificationsView$NotificationsAdapter;->this$0:Lcom/vkontakte/android/NotificationsView;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Lcom/vkontakte/android/NotificationsView;->getContext()Landroid/content/Context;

    move-result-object v37

    move-object/from16 v0, v33

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/vkontakte/android/ui/OverlayTextView;-><init>(Landroid/content/Context;)V

    goto/16 :goto_3

    .line 587
    :cond_4
    const/4 v15, 0x0

    .line 588
    .local v15, "info":Ljava/lang/String;
    iget v0, v7, Lcom/vkontakte/android/api/NotificationEntry;->feedbackType:I

    move/from16 v37, v0

    const/16 v38, 0x3

    move/from16 v0, v37

    move/from16 v1, v38

    if-ne v0, v1, :cond_15

    .line 589
    if-nez v34, :cond_5

    .line 590
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NotificationsView$NotificationsAdapter;->this$0:Lcom/vkontakte/android/NotificationsView;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Lcom/vkontakte/android/NotificationsView;->getContext()Landroid/content/Context;

    move-result-object v37

    const v38, 0x7f030067

    const/16 v39, 0x0

    invoke-static/range {v37 .. v39}, Lcom/vkontakte/android/NotificationsView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v34

    .line 591
    new-instance v9, Lcom/vkontakte/android/NotificationsView$ViewHolder;

    move-object/from16 v0, v34

    invoke-direct {v9, v0}, Lcom/vkontakte/android/NotificationsView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 593
    .local v9, "holder":Lcom/vkontakte/android/NotificationsView$ViewHolder;
    move-object/from16 v0, v34

    invoke-virtual {v0, v9}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 594
    iget-object v0, v9, Lcom/vkontakte/android/NotificationsView$ViewHolder;->userPhoto:Landroid/widget/ImageView;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NotificationsView$NotificationsAdapter;->this$0:Lcom/vkontakte/android/NotificationsView;

    move-object/from16 v38, v0

    invoke-static/range {v38 .. v38}, Lcom/vkontakte/android/NotificationsView;->access$0(Lcom/vkontakte/android/NotificationsView;)Landroid/view/View$OnClickListener;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 598
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NotificationsView$NotificationsAdapter;->this$0:Lcom/vkontakte/android/NotificationsView;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Lcom/vkontakte/android/NotificationsView;->getContext()Landroid/content/Context;

    move-result-object v37

    invoke-static/range {v37 .. v37}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v37

    const-string v38, "fontSize"

    const-string v39, "0"

    invoke-interface/range {v37 .. v39}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v37 .. v37}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    .line 599
    .local v17, "k":I
    iget-object v0, v9, Lcom/vkontakte/android/NotificationsView$ViewHolder;->text:Landroid/widget/TextView;

    move-object/from16 v37, v0

    const/16 v38, 0x1

    const/high16 v39, 0x41800000    # 16.0f

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v40, v0

    const/high16 v41, 0x40000000    # 2.0f

    mul-float v40, v40, v41

    add-float v39, v39, v40

    invoke-virtual/range {v37 .. v39}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 601
    .end local v9    # "holder":Lcom/vkontakte/android/NotificationsView$ViewHolder;
    .end local v17    # "k":I
    :cond_5
    invoke-virtual/range {v34 .. v34}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/vkontakte/android/NotificationsView$ViewHolder;

    .line 602
    .restart local v9    # "holder":Lcom/vkontakte/android/NotificationsView$ViewHolder;
    iget-object v0, v9, Lcom/vkontakte/android/NotificationsView$ViewHolder;->name:Landroid/widget/TextView;

    move-object/from16 v37, v0

    iget-object v0, v7, Lcom/vkontakte/android/api/NotificationEntry;->commentUser:Lcom/vkontakte/android/UserProfile;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    move-object/from16 v38, v0

    invoke-virtual/range {v37 .. v38}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 604
    iget-object v0, v9, Lcom/vkontakte/android/NotificationsView$ViewHolder;->text:Landroid/widget/TextView;

    move-object/from16 v37, v0

    iget-object v0, v7, Lcom/vkontakte/android/api/NotificationEntry;->displayableText:Ljava/lang/CharSequence;

    move-object/from16 v38, v0

    invoke-virtual/range {v37 .. v38}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 606
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NotificationsView$NotificationsAdapter;->this$0:Lcom/vkontakte/android/NotificationsView;

    move-object/from16 v37, v0

    invoke-static/range {v37 .. v37}, Lcom/vkontakte/android/NotificationsView;->access$1(Lcom/vkontakte/android/NotificationsView;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    move-result-object v37

    iget-object v0, v7, Lcom/vkontakte/android/api/NotificationEntry;->commentUser:Lcom/vkontakte/android/UserProfile;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    move-object/from16 v38, v0

    invoke-virtual/range {v37 .. v38}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->isAlreadyLoaded(Ljava/lang/String;)Z

    move-result v37

    if-eqz v37, :cond_14

    .line 607
    iget-object v0, v9, Lcom/vkontakte/android/NotificationsView$ViewHolder;->userPhoto:Landroid/widget/ImageView;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NotificationsView$NotificationsAdapter;->this$0:Lcom/vkontakte/android/NotificationsView;

    move-object/from16 v38, v0

    invoke-static/range {v38 .. v38}, Lcom/vkontakte/android/NotificationsView;->access$1(Lcom/vkontakte/android/NotificationsView;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    move-result-object v38

    iget-object v0, v7, Lcom/vkontakte/android/api/NotificationEntry;->commentUser:Lcom/vkontakte/android/UserProfile;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    move-object/from16 v39, v0

    invoke-virtual/range {v38 .. v39}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 611
    :goto_4
    iget-object v0, v9, Lcom/vkontakte/android/NotificationsView$ViewHolder;->userPhoto:Landroid/widget/ImageView;

    move-object/from16 v37, v0

    iget-object v0, v7, Lcom/vkontakte/android/api/NotificationEntry;->commentUser:Lcom/vkontakte/android/UserProfile;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget v0, v0, Lcom/vkontakte/android/UserProfile;->uid:I

    move/from16 v38, v0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 821
    .end local v9    # "holder":Lcom/vkontakte/android/NotificationsView$ViewHolder;
    :cond_6
    :goto_5
    invoke-virtual/range {v34 .. v34}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/vkontakte/android/NotificationsView$ViewHolder;

    .line 823
    .restart local v9    # "holder":Lcom/vkontakte/android/NotificationsView$ViewHolder;
    iget v0, v7, Lcom/vkontakte/android/api/NotificationEntry;->parentType:I

    move/from16 v37, v0

    if-lez v37, :cond_45

    .line 824
    if-nez v15, :cond_3b

    const/16 v23, 0x1

    .line 825
    .local v23, "ni":Z
    :goto_6
    if-eqz v23, :cond_7

    iget v0, v7, Lcom/vkontakte/android/api/NotificationEntry;->time:I

    move/from16 v37, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NotificationsView$NotificationsAdapter;->this$0:Lcom/vkontakte/android/NotificationsView;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Lcom/vkontakte/android/NotificationsView;->getResources()Landroid/content/res/Resources;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Lcom/vkontakte/android/Global;->langDateRelative(ILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v15

    .line 826
    :cond_7
    const-string v18, ""

    .line 827
    .local v18, "link":Ljava/lang/CharSequence;
    iget v0, v7, Lcom/vkontakte/android/api/NotificationEntry;->parentType:I

    move/from16 v37, v0

    packed-switch v37, :pswitch_data_0

    .line 848
    :cond_8
    :goto_7
    iget v0, v7, Lcom/vkontakte/android/api/NotificationEntry;->feedbackType:I

    move/from16 v37, v0

    const/16 v38, 0x1

    move/from16 v0, v37

    move/from16 v1, v38

    if-eq v0, v1, :cond_9

    iget v0, v7, Lcom/vkontakte/android/api/NotificationEntry;->feedbackType:I

    move/from16 v37, v0

    const/16 v38, 0x4

    move/from16 v0, v37

    move/from16 v1, v38

    if-ne v0, v1, :cond_a

    .line 849
    :cond_9
    const/16 v18, 0x0

    .line 852
    :cond_a
    iget-object v0, v9, Lcom/vkontakte/android/NotificationsView$ViewHolder;->link:Landroid/widget/TextView;

    move-object/from16 v37, v0

    if-eqz v37, :cond_b

    .line 853
    iget-object v0, v9, Lcom/vkontakte/android/NotificationsView$ViewHolder;->link:Landroid/widget/TextView;

    move-object/from16 v38, v0

    if-eqz v18, :cond_40

    move-object/from16 v37, v18

    :goto_8
    move-object/from16 v0, v38

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 854
    iget-object v0, v9, Lcom/vkontakte/android/NotificationsView$ViewHolder;->link:Landroid/widget/TextView;

    move-object/from16 v38, v0

    if-eqz v18, :cond_41

    invoke-interface/range {v18 .. v18}, Ljava/lang/CharSequence;->length()I

    move-result v37

    if-lez v37, :cond_41

    const/16 v37, 0x3e7

    :goto_9
    move-object/from16 v0, v38

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxHeight(I)V

    .line 860
    :cond_b
    const/16 v27, 0x0

    .line 861
    .local v27, "postphoto":Ljava/lang/String;
    iget-object v0, v7, Lcom/vkontakte/android/api/NotificationEntry;->parent:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v37

    :cond_c
    invoke-interface/range {v37 .. v37}, Ljava/util/Iterator;->hasNext()Z

    move-result v38

    if-nez v38, :cond_42

    .line 867
    :goto_a
    if-nez v27, :cond_43

    .line 868
    iget-object v0, v9, Lcom/vkontakte/android/NotificationsView$ViewHolder;->postPhoto:Landroid/widget/ImageView;

    move-object/from16 v37, v0

    const/16 v38, 0x8

    invoke-virtual/range {v37 .. v38}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 876
    :goto_b
    iget-object v0, v9, Lcom/vkontakte/android/NotificationsView$ViewHolder;->postPhoto:Landroid/widget/ImageView;

    move-object/from16 v37, v0

    if-eqz v37, :cond_d

    .line 877
    iget-object v0, v9, Lcom/vkontakte/android/NotificationsView$ViewHolder;->postPhoto:Landroid/widget/ImageView;

    move-object/from16 v37, v0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 878
    iget-object v0, v9, Lcom/vkontakte/android/NotificationsView$ViewHolder;->info:Landroid/widget/TextView;

    move-object/from16 v37, v0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 879
    iget-object v0, v9, Lcom/vkontakte/android/NotificationsView$ViewHolder;->link:Landroid/widget/TextView;

    move-object/from16 v37, v0

    if-eqz v37, :cond_d

    .line 880
    iget-object v0, v9, Lcom/vkontakte/android/NotificationsView$ViewHolder;->link:Landroid/widget/TextView;

    move-object/from16 v37, v0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 892
    .end local v18    # "link":Ljava/lang/CharSequence;
    .end local v23    # "ni":Z
    .end local v27    # "postphoto":Ljava/lang/String;
    :cond_d
    :goto_c
    if-eqz v9, :cond_e

    iget-object v0, v9, Lcom/vkontakte/android/NotificationsView$ViewHolder;->info:Landroid/widget/TextView;

    move-object/from16 v37, v0

    if-eqz v37, :cond_e

    iget-object v0, v9, Lcom/vkontakte/android/NotificationsView$ViewHolder;->info:Landroid/widget/TextView;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    invoke-virtual {v0, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 893
    :cond_e
    const/16 v37, 0x1f4

    move-object/from16 v0, v34

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v37

    if-eqz v37, :cond_f

    const/16 v37, 0x1f4

    move-object/from16 v0, v34

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v37

    const/16 v38, 0x8

    invoke-virtual/range {v37 .. v38}, Landroid/view/View;->setVisibility(I)V

    .line 895
    :cond_f
    iget v0, v7, Lcom/vkontakte/android/api/NotificationEntry;->replyID:I

    move/from16 v37, v0

    if-gtz v37, :cond_10

    iget-boolean v0, v7, Lcom/vkontakte/android/api/NotificationEntry;->isLiked:Z

    move/from16 v37, v0

    if-eqz v37, :cond_11

    .line 896
    :cond_10
    const/16 v16, 0x0

    .line 897
    .local v16, "iv":Landroid/widget/ImageView;
    const/16 v37, 0x1f4

    move-object/from16 v0, v34

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v37

    if-nez v37, :cond_49

    .line 898
    new-instance v16, Landroid/widget/ImageView;

    .end local v16    # "iv":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NotificationsView$NotificationsAdapter;->this$0:Lcom/vkontakte/android/NotificationsView;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Lcom/vkontakte/android/NotificationsView;->getContext()Landroid/content/Context;

    move-result-object v37

    move-object/from16 v0, v16

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 899
    .restart local v16    # "iv":Landroid/widget/ImageView;
    sget-object v37, Landroid/widget/ImageView$ScaleType;->FIT_END:Landroid/widget/ImageView$ScaleType;

    move-object/from16 v0, v16

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 900
    new-instance v19, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v37, -0x2

    const/16 v38, -0x1

    move-object/from16 v0, v19

    move/from16 v1, v37

    move/from16 v2, v38

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 901
    .local v19, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v37, 0xb

    move-object/from16 v0, v19

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 902
    const/16 v37, 0xc

    move-object/from16 v0, v19

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 903
    const/16 v37, 0xa

    move-object/from16 v0, v19

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 904
    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 905
    const/16 v37, 0x1f4

    move-object/from16 v0, v16

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setId(I)V

    .line 906
    move-object/from16 v0, v34

    check-cast v0, Landroid/view/ViewGroup;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 911
    .end local v19    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    :goto_d
    iget v0, v7, Lcom/vkontakte/android/api/NotificationEntry;->replyID:I

    move/from16 v37, v0

    if-lez v37, :cond_4a

    const v37, 0x7f0201cb

    :goto_e
    move-object/from16 v0, v16

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 912
    const/16 v37, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 915
    .end local v16    # "iv":Landroid/widget/ImageView;
    :cond_11
    if-lez p1, :cond_4b

    sget-object v37, Lcom/vkontakte/android/NotificationsView;->notifications:Ljava/util/Vector;

    add-int/lit8 v38, p1, -0x1

    invoke-virtual/range {v37 .. v38}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Lcom/vkontakte/android/api/NotificationEntry;

    move-object/from16 v0, v37

    iget v0, v0, Lcom/vkontakte/android/api/NotificationEntry;->feedbackType:I

    move/from16 v37, v0

    const/16 v38, 0x5

    move/from16 v0, v37

    move/from16 v1, v38

    if-ne v0, v1, :cond_4b

    const/16 v28, 0x1

    .line 916
    .local v28, "prevIsDivider":Z
    :goto_f
    sget-object v37, Lcom/vkontakte/android/NotificationsView;->notifications:Ljava/util/Vector;

    invoke-virtual/range {v37 .. v37}, Ljava/util/Vector;->size()I

    move-result v37

    add-int/lit8 v37, v37, -0x1

    move/from16 v0, p1

    move/from16 v1, v37

    if-ge v0, v1, :cond_4c

    sget-object v37, Lcom/vkontakte/android/NotificationsView;->notifications:Ljava/util/Vector;

    add-int/lit8 v38, p1, 0x1

    invoke-virtual/range {v37 .. v38}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Lcom/vkontakte/android/api/NotificationEntry;

    move-object/from16 v0, v37

    iget v0, v0, Lcom/vkontakte/android/api/NotificationEntry;->feedbackType:I

    move/from16 v37, v0

    const/16 v38, 0x5

    move/from16 v0, v37

    move/from16 v1, v38

    if-ne v0, v1, :cond_4c

    const/16 v22, 0x1

    .line 917
    .local v22, "nextIsDivider":Z
    :goto_10
    if-eqz p1, :cond_12

    if-eqz v28, :cond_4d

    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/NotificationsView$NotificationsAdapter;->getCount()I

    move-result v37

    add-int/lit8 v37, v37, -0x1

    move/from16 v0, p1

    move/from16 v1, v37

    if-eq v0, v1, :cond_13

    if-eqz v22, :cond_4d

    .line 918
    :cond_13
    const v37, 0x7f0200ab

    move-object/from16 v0, v34

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_2

    .line 609
    .end local v22    # "nextIsDivider":Z
    .end local v28    # "prevIsDivider":Z
    :cond_14
    iget-object v0, v9, Lcom/vkontakte/android/NotificationsView$ViewHolder;->userPhoto:Landroid/widget/ImageView;

    move-object/from16 v37, v0

    const v38, 0x7f02027c

    invoke-virtual/range {v37 .. v38}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_4

    .line 612
    .end local v9    # "holder":Lcom/vkontakte/android/NotificationsView$ViewHolder;
    :cond_15
    iget v0, v7, Lcom/vkontakte/android/api/NotificationEntry;->feedbackType:I

    move/from16 v37, v0

    const/16 v38, 0x1

    move/from16 v0, v37

    move/from16 v1, v38

    if-eq v0, v1, :cond_16

    iget v0, v7, Lcom/vkontakte/android/api/NotificationEntry;->feedbackType:I

    move/from16 v37, v0

    const/16 v38, 0x4

    move/from16 v0, v37

    move/from16 v1, v38

    if-ne v0, v1, :cond_2a

    .line 613
    :cond_16
    if-nez v34, :cond_17

    .line 614
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NotificationsView$NotificationsAdapter;->this$0:Lcom/vkontakte/android/NotificationsView;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Lcom/vkontakte/android/NotificationsView;->getContext()Landroid/content/Context;

    move-result-object v37

    const v38, 0x7f030068

    const/16 v39, 0x0

    invoke-static/range {v37 .. v39}, Lcom/vkontakte/android/NotificationsView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v34

    .line 615
    new-instance v9, Lcom/vkontakte/android/NotificationsView$ViewHolder;

    move-object/from16 v0, v34

    invoke-direct {v9, v0}, Lcom/vkontakte/android/NotificationsView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 616
    .restart local v9    # "holder":Lcom/vkontakte/android/NotificationsView$ViewHolder;
    move-object/from16 v0, v34

    invoke-virtual {v0, v9}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 620
    iget-object v0, v9, Lcom/vkontakte/android/NotificationsView$ViewHolder;->userPhoto:Landroid/widget/ImageView;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NotificationsView$NotificationsAdapter;->this$0:Lcom/vkontakte/android/NotificationsView;

    move-object/from16 v38, v0

    invoke-static/range {v38 .. v38}, Lcom/vkontakte/android/NotificationsView;->access$0(Lcom/vkontakte/android/NotificationsView;)Landroid/view/View$OnClickListener;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 621
    iget-object v0, v9, Lcom/vkontakte/android/NotificationsView$ViewHolder;->photoStrip:Lcom/vkontakte/android/ui/PhotoStripView;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NotificationsView$NotificationsAdapter;->this$0:Lcom/vkontakte/android/NotificationsView;

    move-object/from16 v38, v0

    invoke-static/range {v38 .. v38}, Lcom/vkontakte/android/NotificationsView;->access$2(Lcom/vkontakte/android/NotificationsView;)Lcom/vkontakte/android/ui/PhotoStripView$OnPhotoClickListener;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Lcom/vkontakte/android/ui/PhotoStripView;->setListener(Lcom/vkontakte/android/ui/PhotoStripView$OnPhotoClickListener;)V

    .line 623
    .end local v9    # "holder":Lcom/vkontakte/android/NotificationsView$ViewHolder;
    :cond_17
    invoke-virtual/range {v34 .. v34}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/vkontakte/android/NotificationsView$ViewHolder;

    .line 624
    .restart local v9    # "holder":Lcom/vkontakte/android/NotificationsView$ViewHolder;
    iget v0, v7, Lcom/vkontakte/android/api/NotificationEntry;->time:I

    move/from16 v37, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NotificationsView$NotificationsAdapter;->this$0:Lcom/vkontakte/android/NotificationsView;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Lcom/vkontakte/android/NotificationsView;->getResources()Landroid/content/res/Resources;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Lcom/vkontakte/android/Global;->langDateRelative(ILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v15

    .line 625
    iget-object v0, v7, Lcom/vkontakte/android/api/NotificationEntry;->users:Ljava/util/Vector;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Ljava/util/Vector;->size()I

    move-result v24

    .line 626
    .local v24, "num":I
    new-instance v32, Landroid/text/SpannableStringBuilder;

    iget-object v0, v7, Lcom/vkontakte/android/api/NotificationEntry;->users:Ljava/util/Vector;

    move-object/from16 v37, v0

    const/16 v38, 0x0

    invoke-virtual/range {v37 .. v38}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Lcom/vkontakte/android/UserProfile;

    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    move-object/from16 v37, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 627
    .local v32, "title":Landroid/text/SpannableStringBuilder;
    invoke-virtual/range {v32 .. v32}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v21

    .line 628
    .local v21, "nameLength":I
    iget-object v0, v7, Lcom/vkontakte/android/api/NotificationEntry;->users:Ljava/util/Vector;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Ljava/util/Vector;->size()I

    move-result v37

    const/16 v38, 0x1

    move/from16 v0, v37

    move/from16 v1, v38

    if-le v0, v1, :cond_18

    .line 630
    const-string v37, " "

    move-object/from16 v0, v32

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 632
    const v37, 0x7f0d002f

    iget-object v0, v7, Lcom/vkontakte/android/api/NotificationEntry;->users:Ljava/util/Vector;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Ljava/util/Vector;->size()I

    move-result v38

    add-int/lit8 v38, v38, -0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NotificationsView$NotificationsAdapter;->this$0:Lcom/vkontakte/android/NotificationsView;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Lcom/vkontakte/android/NotificationsView;->getResources()Landroid/content/res/Resources;

    move-result-object v39

    invoke-static/range {v37 .. v39}, Lcom/vkontakte/android/Global;->langPlural(IILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v29

    .line 633
    .local v29, "qty":Ljava/lang/String;
    const-string v37, "<b>"

    move-object/from16 v0, v29

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v31

    .line 634
    .local v31, "start":I
    const-string v37, "<b>"

    const-string v38, ""

    move-object/from16 v0, v29

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v29

    .line 635
    const-string v37, "</b>"

    move-object/from16 v0, v29

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    .line 636
    .local v8, "end":I
    const-string v37, "</b>"

    const-string v38, ""

    move-object/from16 v0, v29

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v29

    .line 637
    invoke-static {}, Landroid/text/Spannable$Factory;->getInstance()Landroid/text/Spannable$Factory;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/text/Spannable$Factory;->newSpannable(Ljava/lang/CharSequence;)Landroid/text/Spannable;

    move-result-object v30

    .line 638
    .local v30, "qtys":Landroid/text/Spannable;
    new-instance v37, Landroid/text/style/StyleSpan;

    const/16 v38, 0x1

    invoke-direct/range {v37 .. v38}, Landroid/text/style/StyleSpan;-><init>(I)V

    const/16 v38, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, v37

    move/from16 v2, v31

    move/from16 v3, v38

    invoke-interface {v0, v1, v2, v8, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 639
    move-object/from16 v0, v32

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 642
    .end local v8    # "end":I
    .end local v29    # "qty":Ljava/lang/String;
    .end local v30    # "qtys":Landroid/text/Spannable;
    .end local v31    # "start":I
    :cond_18
    const/4 v12, 0x0

    .local v12, "idx1":I
    const/4 v13, 0x0

    .local v13, "idx2":I
    const/4 v14, 0x0

    .line 644
    .local v14, "idx3":I
    iget v0, v7, Lcom/vkontakte/android/api/NotificationEntry;->action:I

    move/from16 v37, v0

    packed-switch v37, :pswitch_data_1

    .line 662
    :goto_11
    :pswitch_0
    iget v0, v7, Lcom/vkontakte/android/api/NotificationEntry;->parentType:I

    move/from16 v37, v0

    packed-switch v37, :pswitch_data_2

    .line 677
    :goto_12
    const/16 v37, 0x1

    move/from16 v0, v24

    move/from16 v1, v37

    if-ne v0, v1, :cond_20

    .line 678
    iget-object v0, v7, Lcom/vkontakte/android/api/NotificationEntry;->users:Ljava/util/Vector;

    move-object/from16 v37, v0

    const/16 v38, 0x0

    invoke-virtual/range {v37 .. v38}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Lcom/vkontakte/android/UserProfile;

    move-object/from16 v0, v37

    iget-boolean v0, v0, Lcom/vkontakte/android/UserProfile;->f:Z

    move/from16 v37, v0

    if-eqz v37, :cond_1f

    const/4 v13, 0x1

    .line 683
    :goto_13
    new-instance v37, Ljava/lang/StringBuilder;

    const-string v38, " "

    invoke-direct/range {v37 .. v38}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NotificationsView$NotificationsAdapter;->this$0:Lcom/vkontakte/android/NotificationsView;

    move-object/from16 v38, v0

    invoke-static/range {v38 .. v38}, Lcom/vkontakte/android/NotificationsView;->access$3(Lcom/vkontakte/android/NotificationsView;)[[[Ljava/lang/String;

    move-result-object v38

    aget-object v38, v38, v12

    aget-object v38, v38, v13

    aget-object v38, v38, v14

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v32

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 685
    const/16 v18, 0x0

    .line 686
    .local v18, "link":Landroid/text/Spannable;
    iget v0, v7, Lcom/vkontakte/android/api/NotificationEntry;->action:I

    move/from16 v37, v0

    const/16 v38, 0x1

    move/from16 v0, v37

    move/from16 v1, v38

    if-eq v0, v1, :cond_19

    iget v0, v7, Lcom/vkontakte/android/api/NotificationEntry;->action:I

    move/from16 v37, v0

    const/16 v38, 0x2

    move/from16 v0, v37

    move/from16 v1, v38

    if-ne v0, v1, :cond_1a

    .line 687
    :cond_19
    iget v0, v7, Lcom/vkontakte/android/api/NotificationEntry;->parentType:I

    move/from16 v37, v0

    const/16 v38, 0x3

    move/from16 v0, v37

    move/from16 v1, v38

    if-ne v0, v1, :cond_21

    .line 688
    invoke-static {}, Landroid/text/Spannable$Factory;->getInstance()Landroid/text/Spannable$Factory;

    move-result-object v38

    iget-object v0, v7, Lcom/vkontakte/android/api/NotificationEntry;->parent:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    move-object/from16 v37, v0

    const/16 v39, 0x0

    move-object/from16 v0, v37

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Lcom/vkontakte/android/VideoAttachment;

    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/vkontakte/android/VideoAttachment;->title:Ljava/lang/String;

    move-object/from16 v37, v0

    move-object/from16 v0, v38

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/text/Spannable$Factory;->newSpannable(Ljava/lang/CharSequence;)Landroid/text/Spannable;

    move-result-object v18

    .line 701
    :cond_1a
    :goto_14
    const/16 v20, 0x0

    .line 702
    .local v20, "n":I
    iget-object v0, v9, Lcom/vkontakte/android/NotificationsView$ViewHolder;->photoStrip:Lcom/vkontakte/android/ui/PhotoStripView;

    move-object/from16 v37, v0

    const/16 v38, 0x6

    iget-object v0, v7, Lcom/vkontakte/android/api/NotificationEntry;->users:Ljava/util/Vector;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Ljava/util/Vector;->size()I

    move-result v39

    invoke-static/range {v38 .. v39}, Ljava/lang/Math;->min(II)I

    move-result v38

    add-int/lit8 v38, v38, -0x1

    invoke-virtual/range {v37 .. v38}, Lcom/vkontakte/android/ui/PhotoStripView;->setCount(I)V

    .line 703
    iget-object v0, v9, Lcom/vkontakte/android/NotificationsView$ViewHolder;->photoStrip:Lcom/vkontakte/android/ui/PhotoStripView;

    move-object/from16 v38, v0

    iget-object v0, v7, Lcom/vkontakte/android/api/NotificationEntry;->users:Ljava/util/Vector;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Ljava/util/Vector;->size()I

    move-result v37

    const/16 v39, 0x1

    move/from16 v0, v37

    move/from16 v1, v39

    if-le v0, v1, :cond_25

    const/16 v37, 0x0

    :goto_15
    move-object/from16 v0, v38

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/PhotoStripView;->setVisibility(I)V

    .line 705
    iget-object v0, v7, Lcom/vkontakte/android/api/NotificationEntry;->users:Ljava/util/Vector;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v37

    :cond_1b
    invoke-interface/range {v37 .. v37}, Ljava/util/Iterator;->hasNext()Z

    move-result v38

    if-nez v38, :cond_26

    .line 723
    :goto_16
    iget-object v0, v7, Lcom/vkontakte/android/api/NotificationEntry;->users:Ljava/util/Vector;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Ljava/util/Vector;->size()I

    move-result v37

    const/16 v38, 0x1

    move/from16 v0, v37

    move/from16 v1, v38

    if-le v0, v1, :cond_1c

    .line 724
    iget-object v0, v9, Lcom/vkontakte/android/NotificationsView$ViewHolder;->photoStrip:Lcom/vkontakte/android/ui/PhotoStripView;

    move-object/from16 v37, v0

    iget-object v0, v7, Lcom/vkontakte/android/api/NotificationEntry;->users:Ljava/util/Vector;

    move-object/from16 v38, v0

    const/16 v39, 0x1

    iget-object v0, v7, Lcom/vkontakte/android/api/NotificationEntry;->users:Ljava/util/Vector;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Ljava/util/Vector;->size()I

    move-result v40

    invoke-virtual/range {v38 .. v40}, Ljava/util/Vector;->subList(II)Ljava/util/List;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Lcom/vkontakte/android/ui/PhotoStripView;->setTag(Ljava/lang/Object;)V

    .line 727
    :cond_1c
    if-eqz v18, :cond_1d

    const-string v37, " "

    move-object/from16 v0, v32

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 728
    :cond_1d
    new-instance v37, Landroid/text/style/ForegroundColorSpan;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NotificationsView$NotificationsAdapter;->this$0:Lcom/vkontakte/android/NotificationsView;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Lcom/vkontakte/android/NotificationsView;->getResources()Landroid/content/res/Resources;

    move-result-object v38

    const v39, 0x7f060027

    invoke-virtual/range {v38 .. v39}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v38

    invoke-direct/range {v37 .. v38}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual/range {v32 .. v32}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v38

    const/16 v39, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, v37

    move/from16 v2, v21

    move/from16 v3, v38

    move/from16 v4, v39

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 729
    if-eqz v18, :cond_1e

    .line 730
    new-instance v37, Landroid/text/style/ForegroundColorSpan;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NotificationsView$NotificationsAdapter;->this$0:Lcom/vkontakte/android/NotificationsView;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Lcom/vkontakte/android/NotificationsView;->getResources()Landroid/content/res/Resources;

    move-result-object v38

    const v39, 0x7f060029

    invoke-virtual/range {v38 .. v39}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v38

    invoke-direct/range {v37 .. v38}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v38, 0x0

    invoke-interface/range {v18 .. v18}, Landroid/text/Spannable;->length()I

    move-result v39

    const/16 v40, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v37

    move/from16 v2, v38

    move/from16 v3, v39

    move/from16 v4, v40

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 731
    move-object/from16 v0, v32

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 735
    :cond_1e
    iget-object v0, v9, Lcom/vkontakte/android/NotificationsView$ViewHolder;->name:Landroid/widget/TextView;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 646
    .end local v18    # "link":Landroid/text/Spannable;
    .end local v20    # "n":I
    :pswitch_1
    const/4 v12, 0x0

    .line 647
    iget-object v0, v9, Lcom/vkontakte/android/NotificationsView$ViewHolder;->actionIcon:Landroid/widget/ImageView;

    move-object/from16 v37, v0

    const v38, 0x7f02014b

    invoke-virtual/range {v37 .. v38}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_11

    .line 650
    :pswitch_2
    const/4 v12, 0x1

    .line 651
    iget-object v0, v9, Lcom/vkontakte/android/NotificationsView$ViewHolder;->actionIcon:Landroid/widget/ImageView;

    move-object/from16 v37, v0

    const v38, 0x7f02014c

    invoke-virtual/range {v37 .. v38}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_11

    .line 654
    :pswitch_3
    const/4 v12, 0x2

    .line 655
    iget-object v0, v9, Lcom/vkontakte/android/NotificationsView$ViewHolder;->actionIcon:Landroid/widget/ImageView;

    move-object/from16 v37, v0

    const v38, 0x7f020149

    invoke-virtual/range {v37 .. v38}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_11

    .line 658
    :pswitch_4
    const/4 v12, 0x3

    .line 659
    iget-object v0, v9, Lcom/vkontakte/android/NotificationsView$ViewHolder;->actionIcon:Landroid/widget/ImageView;

    move-object/from16 v37, v0

    const v38, 0x7f02014a

    invoke-virtual/range {v37 .. v38}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_11

    .line 664
    :pswitch_5
    const/4 v14, 0x0

    .line 665
    goto/16 :goto_12

    .line 667
    :pswitch_6
    const/4 v14, 0x1

    .line 668
    goto/16 :goto_12

    .line 670
    :pswitch_7
    const/4 v14, 0x2

    .line 671
    goto/16 :goto_12

    .line 673
    :pswitch_8
    const/4 v14, 0x3

    goto/16 :goto_12

    .line 678
    :cond_1f
    const/4 v13, 0x0

    goto/16 :goto_13

    .line 680
    :cond_20
    const/4 v13, 0x2

    goto/16 :goto_13

    .line 689
    .restart local v18    # "link":Landroid/text/Spannable;
    :cond_21
    iget v0, v7, Lcom/vkontakte/android/api/NotificationEntry;->parentType:I

    move/from16 v37, v0

    const/16 v38, 0x2

    move/from16 v0, v37

    move/from16 v1, v38

    if-ne v0, v1, :cond_22

    .line 690
    const/16 v18, 0x0

    .line 691
    goto/16 :goto_14

    .line 692
    :cond_22
    iget-object v0, v7, Lcom/vkontakte/android/api/NotificationEntry;->parent:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/vkontakte/android/NewsEntry;->displayableRetweetText:Ljava/lang/CharSequence;

    move-object/from16 v37, v0

    if-eqz v37, :cond_23

    iget-object v0, v7, Lcom/vkontakte/android/api/NotificationEntry;->parent:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/vkontakte/android/NewsEntry;->displayableRetweetText:Ljava/lang/CharSequence;

    move-object/from16 v37, v0

    invoke-interface/range {v37 .. v37}, Ljava/lang/CharSequence;->length()I

    move-result v37

    if-lez v37, :cond_23

    .line 693
    invoke-static {}, Landroid/text/Spannable$Factory;->getInstance()Landroid/text/Spannable$Factory;

    move-result-object v37

    iget-object v0, v7, Lcom/vkontakte/android/api/NotificationEntry;->parent:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/vkontakte/android/NewsEntry;->displayableRetweetText:Ljava/lang/CharSequence;

    move-object/from16 v38, v0

    invoke-virtual/range {v37 .. v38}, Landroid/text/Spannable$Factory;->newSpannable(Ljava/lang/CharSequence;)Landroid/text/Spannable;

    move-result-object v18

    goto/16 :goto_14

    .line 694
    :cond_23
    iget-object v0, v7, Lcom/vkontakte/android/api/NotificationEntry;->parent:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/vkontakte/android/NewsEntry;->displayablePreviewText:Ljava/lang/CharSequence;

    move-object/from16 v37, v0

    if-eqz v37, :cond_24

    iget-object v0, v7, Lcom/vkontakte/android/api/NotificationEntry;->parent:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/vkontakte/android/NewsEntry;->displayablePreviewText:Ljava/lang/CharSequence;

    move-object/from16 v37, v0

    invoke-interface/range {v37 .. v37}, Ljava/lang/CharSequence;->length()I

    move-result v37

    if-lez v37, :cond_24

    .line 695
    invoke-static {}, Landroid/text/Spannable$Factory;->getInstance()Landroid/text/Spannable$Factory;

    move-result-object v37

    iget-object v0, v7, Lcom/vkontakte/android/api/NotificationEntry;->parent:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/vkontakte/android/NewsEntry;->displayablePreviewText:Ljava/lang/CharSequence;

    move-object/from16 v38, v0

    invoke-virtual/range {v37 .. v38}, Landroid/text/Spannable$Factory;->newSpannable(Ljava/lang/CharSequence;)Landroid/text/Spannable;

    move-result-object v18

    goto/16 :goto_14

    .line 697
    :cond_24
    invoke-static {}, Landroid/text/Spannable$Factory;->getInstance()Landroid/text/Spannable$Factory;

    move-result-object v37

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NotificationsView$NotificationsAdapter;->this$0:Lcom/vkontakte/android/NotificationsView;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Lcom/vkontakte/android/NotificationsView;->getResources()Landroid/content/res/Resources;

    move-result-object v38

    iget-object v0, v7, Lcom/vkontakte/android/api/NotificationEntry;->parent:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    iget v0, v0, Lcom/vkontakte/android/NewsEntry;->time:I

    move/from16 v39, v0

    invoke-static/range {v38 .. v39}, Lcom/vkontakte/android/Global;->langDate(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Landroid/text/Spannable$Factory;->newSpannable(Ljava/lang/CharSequence;)Landroid/text/Spannable;

    move-result-object v18

    goto/16 :goto_14

    .line 703
    .restart local v20    # "n":I
    :cond_25
    const/16 v37, 0x8

    goto/16 :goto_15

    .line 705
    :cond_26
    invoke-interface/range {v37 .. v37}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/vkontakte/android/UserProfile;

    .line 706
    .local v26, "p":Lcom/vkontakte/android/UserProfile;
    if-nez v20, :cond_28

    .line 707
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NotificationsView$NotificationsAdapter;->this$0:Lcom/vkontakte/android/NotificationsView;

    move-object/from16 v38, v0

    invoke-static/range {v38 .. v38}, Lcom/vkontakte/android/NotificationsView;->access$1(Lcom/vkontakte/android/NotificationsView;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    move-result-object v38

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    move-object/from16 v39, v0

    invoke-virtual/range {v38 .. v39}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->isAlreadyLoaded(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_27

    .line 708
    iget-object v0, v9, Lcom/vkontakte/android/NotificationsView$ViewHolder;->userPhoto:Landroid/widget/ImageView;

    move-object/from16 v38, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NotificationsView$NotificationsAdapter;->this$0:Lcom/vkontakte/android/NotificationsView;

    move-object/from16 v39, v0

    invoke-static/range {v39 .. v39}, Lcom/vkontakte/android/NotificationsView;->access$1(Lcom/vkontakte/android/NotificationsView;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    move-result-object v39

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    move-object/from16 v40, v0

    invoke-virtual/range {v39 .. v40}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 711
    :goto_17
    iget-object v0, v9, Lcom/vkontakte/android/NotificationsView$ViewHolder;->userPhoto:Landroid/widget/ImageView;

    move-object/from16 v38, v0

    move-object/from16 v0, v26

    iget v0, v0, Lcom/vkontakte/android/UserProfile;->uid:I

    move/from16 v39, v0

    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 720
    :goto_18
    add-int/lit8 v20, v20, 0x1

    .line 721
    const/16 v38, 0x6

    move/from16 v0, v20

    move/from16 v1, v38

    if-lt v0, v1, :cond_1b

    goto/16 :goto_16

    .line 710
    :cond_27
    iget-object v0, v9, Lcom/vkontakte/android/NotificationsView$ViewHolder;->userPhoto:Landroid/widget/ImageView;

    move-object/from16 v38, v0

    const v39, 0x7f02027c

    invoke-virtual/range {v38 .. v39}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_17

    .line 713
    :cond_28
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NotificationsView$NotificationsAdapter;->this$0:Lcom/vkontakte/android/NotificationsView;

    move-object/from16 v38, v0

    invoke-static/range {v38 .. v38}, Lcom/vkontakte/android/NotificationsView;->access$1(Lcom/vkontakte/android/NotificationsView;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    move-result-object v38

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    move-object/from16 v39, v0

    invoke-virtual/range {v38 .. v39}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->isAlreadyLoaded(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_29

    .line 714
    iget-object v0, v9, Lcom/vkontakte/android/NotificationsView$ViewHolder;->photoStrip:Lcom/vkontakte/android/ui/PhotoStripView;

    move-object/from16 v38, v0

    add-int/lit8 v39, v20, -0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NotificationsView$NotificationsAdapter;->this$0:Lcom/vkontakte/android/NotificationsView;

    move-object/from16 v40, v0

    invoke-static/range {v40 .. v40}, Lcom/vkontakte/android/NotificationsView;->access$1(Lcom/vkontakte/android/NotificationsView;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    move-result-object v40

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    move-object/from16 v41, v0

    invoke-virtual/range {v40 .. v41}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v40

    invoke-virtual/range {v38 .. v40}, Lcom/vkontakte/android/ui/PhotoStripView;->setBitmap(ILandroid/graphics/Bitmap;)V

    goto :goto_18

    .line 716
    :cond_29
    iget-object v0, v9, Lcom/vkontakte/android/NotificationsView$ViewHolder;->photoStrip:Lcom/vkontakte/android/ui/PhotoStripView;

    move-object/from16 v38, v0

    add-int/lit8 v39, v20, -0x1

    const/16 v40, 0x0

    invoke-virtual/range {v38 .. v40}, Lcom/vkontakte/android/ui/PhotoStripView;->setBitmap(ILandroid/graphics/Bitmap;)V

    goto :goto_18

    .line 736
    .end local v9    # "holder":Lcom/vkontakte/android/NotificationsView$ViewHolder;
    .end local v12    # "idx1":I
    .end local v13    # "idx2":I
    .end local v14    # "idx3":I
    .end local v18    # "link":Landroid/text/Spannable;
    .end local v20    # "n":I
    .end local v21    # "nameLength":I
    .end local v24    # "num":I
    .end local v26    # "p":Lcom/vkontakte/android/UserProfile;
    .end local v32    # "title":Landroid/text/SpannableStringBuilder;
    :cond_2a
    iget v0, v7, Lcom/vkontakte/android/api/NotificationEntry;->action:I

    move/from16 v37, v0

    const/16 v38, 0x4

    move/from16 v0, v37

    move/from16 v1, v38

    if-ne v0, v1, :cond_2b

    iget-object v0, v7, Lcom/vkontakte/android/api/NotificationEntry;->ppost:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v37, v0

    if-eqz v37, :cond_2c

    :cond_2b
    iget v0, v7, Lcom/vkontakte/android/api/NotificationEntry;->action:I

    move/from16 v37, v0

    const/16 v38, 0x5

    move/from16 v0, v37

    move/from16 v1, v38

    if-ne v0, v1, :cond_3a

    .line 737
    :cond_2c
    const/16 v25, 0x0

    .line 738
    .local v25, "nv":Lcom/vkontakte/android/NewsItemView;
    if-eqz v34, :cond_2d

    move-object/from16 v0, v34

    check-cast v0, Lcom/vkontakte/android/NewsItemView;

    move-object/from16 v25, v0

    .line 739
    :cond_2d
    if-nez v25, :cond_2e

    .line 740
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NotificationsView$NotificationsAdapter;->this$0:Lcom/vkontakte/android/NotificationsView;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Lcom/vkontakte/android/NotificationsView;->getContext()Landroid/content/Context;

    move-result-object v37

    const v38, 0x7f03005f

    const/16 v39, 0x0

    invoke-static/range {v37 .. v39}, Lcom/vkontakte/android/NotificationsView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v25

    .end local v25    # "nv":Lcom/vkontakte/android/NewsItemView;
    check-cast v25, Lcom/vkontakte/android/NewsItemView;

    .line 741
    .restart local v25    # "nv":Lcom/vkontakte/android/NewsItemView;
    new-instance v37, Lcom/vkontakte/android/NotificationsView$NotificationsAdapter$1;

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/vkontakte/android/NotificationsView$NotificationsAdapter$1;-><init>(Lcom/vkontakte/android/NotificationsView$NotificationsAdapter;)V

    move-object/from16 v0, v25

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/NewsItemView;->setOnInfoUpdateListener(Lcom/vkontakte/android/NewsItemView$OnInfoUpdateListener;)V

    .line 772
    :cond_2e
    invoke-virtual/range {v25 .. v25}, Lcom/vkontakte/android/NewsItemView;->reset()V

    .line 774
    iget-object v0, v7, Lcom/vkontakte/android/api/NotificationEntry;->parent:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v37, v0

    const/16 v38, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NotificationsView$NotificationsAdapter;->this$0:Lcom/vkontakte/android/NotificationsView;

    move-object/from16 v39, v0

    invoke-static/range {v39 .. v39}, Lcom/vkontakte/android/NotificationsView;->access$1(Lcom/vkontakte/android/NotificationsView;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    move-result-object v39

    move-object/from16 v0, v25

    move-object/from16 v1, v37

    move/from16 v2, v38

    move-object/from16 v3, v39

    invoke-virtual {v0, v1, v2, v3}, Lcom/vkontakte/android/NewsItemView;->setData(Lcom/vkontakte/android/NewsEntry;ZLcom/vkontakte/android/ui/ListImageLoaderWrapper;)V

    .line 776
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NotificationsView$NotificationsAdapter;->this$0:Lcom/vkontakte/android/NotificationsView;

    move-object/from16 v37, v0

    invoke-static/range {v37 .. v37}, Lcom/vkontakte/android/NotificationsView;->access$1(Lcom/vkontakte/android/NotificationsView;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    move-result-object v37

    iget-object v0, v7, Lcom/vkontakte/android/api/NotificationEntry;->parent:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/vkontakte/android/NewsEntry;->userPhotoURL:Ljava/lang/String;

    move-object/from16 v38, v0

    invoke-virtual/range {v37 .. v38}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->isAlreadyLoaded(Ljava/lang/String;)Z

    move-result v37

    if-eqz v37, :cond_30

    .line 777
    const v37, 0x7f09010c

    move-object/from16 v0, v25

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/NewsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v37

    check-cast v37, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NotificationsView$NotificationsAdapter;->this$0:Lcom/vkontakte/android/NotificationsView;

    move-object/from16 v38, v0

    invoke-static/range {v38 .. v38}, Lcom/vkontakte/android/NotificationsView;->access$1(Lcom/vkontakte/android/NotificationsView;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    move-result-object v38

    iget-object v0, v7, Lcom/vkontakte/android/api/NotificationEntry;->parent:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/vkontakte/android/NewsEntry;->userPhotoURL:Ljava/lang/String;

    move-object/from16 v39, v0

    invoke-virtual/range {v38 .. v39}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 781
    :goto_19
    iget-object v0, v7, Lcom/vkontakte/android/api/NotificationEntry;->parent:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v37, v0

    const/16 v38, 0x20

    invoke-virtual/range {v37 .. v38}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v37

    if-eqz v37, :cond_2f

    .line 782
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NotificationsView$NotificationsAdapter;->this$0:Lcom/vkontakte/android/NotificationsView;

    move-object/from16 v37, v0

    invoke-static/range {v37 .. v37}, Lcom/vkontakte/android/NotificationsView;->access$1(Lcom/vkontakte/android/NotificationsView;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    move-result-object v37

    iget-object v0, v7, Lcom/vkontakte/android/api/NotificationEntry;->parent:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/vkontakte/android/NewsEntry;->retweetUserPhoto:Ljava/lang/String;

    move-object/from16 v38, v0

    invoke-virtual/range {v37 .. v38}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->isAlreadyLoaded(Ljava/lang/String;)Z

    move-result v37

    if-eqz v37, :cond_32

    .line 783
    const v37, 0x7f09010a

    move-object/from16 v0, v25

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/NewsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v37

    check-cast v37, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NotificationsView$NotificationsAdapter;->this$0:Lcom/vkontakte/android/NotificationsView;

    move-object/from16 v38, v0

    invoke-static/range {v38 .. v38}, Lcom/vkontakte/android/NotificationsView;->access$1(Lcom/vkontakte/android/NotificationsView;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    move-result-object v38

    iget-object v0, v7, Lcom/vkontakte/android/api/NotificationEntry;->parent:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/vkontakte/android/NewsEntry;->retweetUserPhoto:Ljava/lang/String;

    move-object/from16 v39, v0

    invoke-virtual/range {v38 .. v39}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 788
    :cond_2f
    :goto_1a
    const/4 v10, 0x0

    .line 789
    .local v10, "i":I
    const v37, 0x7f09010d

    move-object/from16 v0, v25

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/NewsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    .line 790
    .local v5, "ac":Landroid/view/ViewGroup;
    iget-object v0, v7, Lcom/vkontakte/android/api/NotificationEntry;->parent:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/vkontakte/android/NewsEntry;->repostAttachments:Ljava/util/ArrayList;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v37

    :goto_1b
    invoke-interface/range {v37 .. v37}, Ljava/util/Iterator;->hasNext()Z

    move-result v38

    if-nez v38, :cond_34

    .line 800
    const/4 v10, 0x0

    .line 801
    const v37, 0x7f09009a

    move-object/from16 v0, v25

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/NewsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .end local v5    # "ac":Landroid/view/ViewGroup;
    check-cast v5, Landroid/view/ViewGroup;

    .line 802
    .restart local v5    # "ac":Landroid/view/ViewGroup;
    iget-object v0, v7, Lcom/vkontakte/android/api/NotificationEntry;->parent:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v37

    :goto_1c
    invoke-interface/range {v37 .. v37}, Ljava/util/Iterator;->hasNext()Z

    move-result v38

    if-nez v38, :cond_37

    .line 813
    move-object/from16 v34, v25

    .line 814
    goto/16 :goto_5

    .line 779
    .end local v5    # "ac":Landroid/view/ViewGroup;
    .end local v10    # "i":I
    :cond_30
    const v37, 0x7f09010c

    move-object/from16 v0, v25

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/NewsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v37

    check-cast v37, Landroid/widget/ImageView;

    iget-object v0, v7, Lcom/vkontakte/android/api/NotificationEntry;->parent:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget v0, v0, Lcom/vkontakte/android/NewsEntry;->userID:I

    move/from16 v38, v0

    if-lez v38, :cond_31

    const v38, 0x7f02027c

    :goto_1d
    invoke-virtual/range {v37 .. v38}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_19

    :cond_31
    const v38, 0x7f0200e3

    goto :goto_1d

    .line 785
    :cond_32
    const v37, 0x7f09010a

    move-object/from16 v0, v25

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/NewsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v37

    check-cast v37, Landroid/widget/ImageView;

    iget-object v0, v7, Lcom/vkontakte/android/api/NotificationEntry;->parent:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget v0, v0, Lcom/vkontakte/android/NewsEntry;->userID:I

    move/from16 v38, v0

    if-lez v38, :cond_33

    const v38, 0x7f02027c

    :goto_1e
    invoke-virtual/range {v37 .. v38}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1a

    :cond_33
    const v38, 0x7f0200e3

    goto :goto_1e

    .line 790
    .restart local v5    # "ac":Landroid/view/ViewGroup;
    .restart local v10    # "i":I
    :cond_34
    invoke-interface/range {v37 .. v37}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vkontakte/android/Attachment;

    .line 791
    .local v6, "att":Lcom/vkontakte/android/Attachment;
    instance-of v0, v6, Lcom/vkontakte/android/ImageAttachment;

    move/from16 v38, v0

    if-eqz v38, :cond_35

    .line 792
    move-object v0, v6

    check-cast v0, Lcom/vkontakte/android/ImageAttachment;

    move-object v11, v0

    .line 793
    .local v11, "ia":Lcom/vkontakte/android/ImageAttachment;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NotificationsView$NotificationsAdapter;->this$0:Lcom/vkontakte/android/NotificationsView;

    move-object/from16 v38, v0

    invoke-static/range {v38 .. v38}, Lcom/vkontakte/android/NotificationsView;->access$1(Lcom/vkontakte/android/NotificationsView;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    move-result-object v38

    invoke-interface {v11}, Lcom/vkontakte/android/ImageAttachment;->getImageURL()Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->isAlreadyLoaded(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_36

    .line 794
    invoke-virtual {v5, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v38

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NotificationsView$NotificationsAdapter;->this$0:Lcom/vkontakte/android/NotificationsView;

    move-object/from16 v39, v0

    invoke-static/range {v39 .. v39}, Lcom/vkontakte/android/NotificationsView;->access$1(Lcom/vkontakte/android/NotificationsView;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    move-result-object v39

    invoke-interface {v11}, Lcom/vkontakte/android/ImageAttachment;->getImageURL()Ljava/lang/String;

    move-result-object v40

    invoke-virtual/range {v39 .. v40}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v39

    const/16 v40, 0x1

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    move/from16 v2, v40

    invoke-interface {v11, v0, v1, v2}, Lcom/vkontakte/android/ImageAttachment;->setImage(Landroid/view/View;Landroid/graphics/Bitmap;Z)V

    .line 798
    .end local v11    # "ia":Lcom/vkontakte/android/ImageAttachment;
    :cond_35
    :goto_1f
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_1b

    .line 796
    .restart local v11    # "ia":Lcom/vkontakte/android/ImageAttachment;
    :cond_36
    invoke-virtual {v5, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-interface {v11, v0}, Lcom/vkontakte/android/ImageAttachment;->clearImage(Landroid/view/View;)V

    goto :goto_1f

    .line 802
    .end local v6    # "att":Lcom/vkontakte/android/Attachment;
    .end local v11    # "ia":Lcom/vkontakte/android/ImageAttachment;
    :cond_37
    invoke-interface/range {v37 .. v37}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vkontakte/android/Attachment;

    .line 803
    .restart local v6    # "att":Lcom/vkontakte/android/Attachment;
    instance-of v0, v6, Lcom/vkontakte/android/ImageAttachment;

    move/from16 v38, v0

    if-eqz v38, :cond_38

    .line 804
    move-object v0, v6

    check-cast v0, Lcom/vkontakte/android/ImageAttachment;

    move-object v11, v0

    .line 805
    .restart local v11    # "ia":Lcom/vkontakte/android/ImageAttachment;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NotificationsView$NotificationsAdapter;->this$0:Lcom/vkontakte/android/NotificationsView;

    move-object/from16 v38, v0

    invoke-static/range {v38 .. v38}, Lcom/vkontakte/android/NotificationsView;->access$1(Lcom/vkontakte/android/NotificationsView;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    move-result-object v38

    invoke-interface {v11}, Lcom/vkontakte/android/ImageAttachment;->getImageURL()Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->isAlreadyLoaded(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_39

    .line 806
    invoke-virtual {v5, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v38

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NotificationsView$NotificationsAdapter;->this$0:Lcom/vkontakte/android/NotificationsView;

    move-object/from16 v39, v0

    invoke-static/range {v39 .. v39}, Lcom/vkontakte/android/NotificationsView;->access$1(Lcom/vkontakte/android/NotificationsView;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    move-result-object v39

    invoke-interface {v11}, Lcom/vkontakte/android/ImageAttachment;->getImageURL()Ljava/lang/String;

    move-result-object v40

    invoke-virtual/range {v39 .. v40}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v39

    const/16 v40, 0x1

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    move/from16 v2, v40

    invoke-interface {v11, v0, v1, v2}, Lcom/vkontakte/android/ImageAttachment;->setImage(Landroid/view/View;Landroid/graphics/Bitmap;Z)V

    .line 810
    .end local v11    # "ia":Lcom/vkontakte/android/ImageAttachment;
    :cond_38
    :goto_20
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_1c

    .line 808
    .restart local v11    # "ia":Lcom/vkontakte/android/ImageAttachment;
    :cond_39
    invoke-virtual {v5, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-interface {v11, v0}, Lcom/vkontakte/android/ImageAttachment;->clearImage(Landroid/view/View;)V

    goto :goto_20

    .line 816
    .end local v5    # "ac":Landroid/view/ViewGroup;
    .end local v6    # "att":Lcom/vkontakte/android/Attachment;
    .end local v10    # "i":I
    .end local v11    # "ia":Lcom/vkontakte/android/ImageAttachment;
    .end local v25    # "nv":Lcom/vkontakte/android/NewsItemView;
    :cond_3a
    if-nez v34, :cond_6

    .line 817
    new-instance v35, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NotificationsView$NotificationsAdapter;->this$0:Lcom/vkontakte/android/NotificationsView;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Lcom/vkontakte/android/NotificationsView;->getContext()Landroid/content/Context;

    move-result-object v37

    move-object/from16 v0, v35

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 818
    .end local v34    # "v":Landroid/view/View;
    .local v35, "v":Landroid/view/View;
    :try_start_2
    move-object/from16 v0, v35

    check-cast v0, Landroid/widget/TextView;

    move-object/from16 v37, v0

    const-string v38, "UNKNOWN!!"

    invoke-virtual/range {v37 .. v38}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-object/from16 v34, v35

    .end local v35    # "v":Landroid/view/View;
    .restart local v34    # "v":Landroid/view/View;
    goto/16 :goto_5

    .line 824
    .restart local v9    # "holder":Lcom/vkontakte/android/NotificationsView$ViewHolder;
    :cond_3b
    const/16 v23, 0x0

    goto/16 :goto_6

    .line 829
    .local v18, "link":Ljava/lang/CharSequence;
    .restart local v23    # "ni":Z
    :pswitch_9
    if-eqz v23, :cond_3c

    :try_start_3
    new-instance v37, Ljava/lang/StringBuilder;

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v38

    invoke-direct/range {v37 .. v38}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v38, " "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NotificationsView$NotificationsAdapter;->this$0:Lcom/vkontakte/android/NotificationsView;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Lcom/vkontakte/android/NotificationsView;->getResources()Landroid/content/res/Resources;

    move-result-object v38

    const v39, 0x7f08011b

    invoke-virtual/range {v38 .. v39}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 830
    :cond_3c
    iget-object v0, v7, Lcom/vkontakte/android/api/NotificationEntry;->parent:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/vkontakte/android/NewsEntry;->displayablePreviewText:Ljava/lang/CharSequence;

    move-object/from16 v18, v0

    .line 831
    goto/16 :goto_7

    .line 833
    :pswitch_a
    if-eqz v23, :cond_8

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v38

    invoke-direct/range {v37 .. v38}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v38, " "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NotificationsView$NotificationsAdapter;->this$0:Lcom/vkontakte/android/NotificationsView;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Lcom/vkontakte/android/NotificationsView;->getResources()Landroid/content/res/Resources;

    move-result-object v38

    const v39, 0x7f08011c

    invoke-virtual/range {v38 .. v39}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 834
    goto/16 :goto_7

    .line 836
    :pswitch_b
    if-eqz v23, :cond_3d

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v38

    invoke-direct/range {v37 .. v38}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v38, " "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NotificationsView$NotificationsAdapter;->this$0:Lcom/vkontakte/android/NotificationsView;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Lcom/vkontakte/android/NotificationsView;->getResources()Landroid/content/res/Resources;

    move-result-object v38

    const v39, 0x7f08011d

    invoke-virtual/range {v38 .. v39}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 837
    :cond_3d
    iget-object v0, v7, Lcom/vkontakte/android/api/NotificationEntry;->parent:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    move-object/from16 v37, v0

    const/16 v38, 0x0

    invoke-virtual/range {v37 .. v38}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Lcom/vkontakte/android/VideoAttachment;

    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/vkontakte/android/VideoAttachment;->title:Ljava/lang/String;

    move-object/from16 v18, v0

    .line 838
    goto/16 :goto_7

    .line 840
    :pswitch_c
    if-eqz v23, :cond_3e

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v38

    invoke-direct/range {v37 .. v38}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v38, " "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NotificationsView$NotificationsAdapter;->this$0:Lcom/vkontakte/android/NotificationsView;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Lcom/vkontakte/android/NotificationsView;->getResources()Landroid/content/res/Resources;

    move-result-object v38

    const v39, 0x7f08011e

    invoke-virtual/range {v38 .. v39}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 841
    :cond_3e
    iget-object v0, v7, Lcom/vkontakte/android/api/NotificationEntry;->parent:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/vkontakte/android/NewsEntry;->displayablePreviewText:Ljava/lang/CharSequence;

    move-object/from16 v18, v0

    .line 842
    goto/16 :goto_7

    .line 844
    :pswitch_d
    if-eqz v23, :cond_3f

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v38

    invoke-direct/range {v37 .. v38}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v38, " "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NotificationsView$NotificationsAdapter;->this$0:Lcom/vkontakte/android/NotificationsView;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Lcom/vkontakte/android/NotificationsView;->getResources()Landroid/content/res/Resources;

    move-result-object v38

    const v39, 0x7f08011f

    invoke-virtual/range {v38 .. v39}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 845
    :cond_3f
    iget-object v0, v7, Lcom/vkontakte/android/api/NotificationEntry;->parent:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/vkontakte/android/NewsEntry;->displayablePreviewText:Ljava/lang/CharSequence;

    move-object/from16 v18, v0

    goto/16 :goto_7

    .line 853
    :cond_40
    const-string v37, ""

    goto/16 :goto_8

    .line 854
    :cond_41
    const/16 v37, 0x0

    goto/16 :goto_9

    .line 861
    .restart local v27    # "postphoto":Ljava/lang/String;
    :cond_42
    invoke-interface/range {v37 .. v37}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vkontakte/android/Attachment;

    .line 862
    .restart local v6    # "att":Lcom/vkontakte/android/Attachment;
    instance-of v0, v6, Lcom/vkontakte/android/ImageAttachment;

    move/from16 v38, v0

    if-eqz v38, :cond_c

    .line 863
    check-cast v6, Lcom/vkontakte/android/ImageAttachment;

    .end local v6    # "att":Lcom/vkontakte/android/Attachment;
    invoke-interface {v6}, Lcom/vkontakte/android/ImageAttachment;->getImageURL()Ljava/lang/String;

    move-result-object v27

    .line 864
    goto/16 :goto_a

    .line 870
    :cond_43
    iget-object v0, v9, Lcom/vkontakte/android/NotificationsView$ViewHolder;->postPhoto:Landroid/widget/ImageView;

    move-object/from16 v37, v0

    const/16 v38, 0x0

    invoke-virtual/range {v37 .. v38}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 871
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NotificationsView$NotificationsAdapter;->this$0:Lcom/vkontakte/android/NotificationsView;

    move-object/from16 v37, v0

    invoke-static/range {v37 .. v37}, Lcom/vkontakte/android/NotificationsView;->access$1(Lcom/vkontakte/android/NotificationsView;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->isAlreadyLoaded(Ljava/lang/String;)Z

    move-result v37

    if-eqz v37, :cond_44

    .line 872
    iget-object v0, v9, Lcom/vkontakte/android/NotificationsView$ViewHolder;->postPhoto:Landroid/widget/ImageView;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NotificationsView$NotificationsAdapter;->this$0:Lcom/vkontakte/android/NotificationsView;

    move-object/from16 v38, v0

    invoke-static/range {v38 .. v38}, Lcom/vkontakte/android/NotificationsView;->access$1(Lcom/vkontakte/android/NotificationsView;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_b

    .line 874
    :cond_44
    iget-object v0, v9, Lcom/vkontakte/android/NotificationsView$ViewHolder;->postPhoto:Landroid/widget/ImageView;

    move-object/from16 v37, v0

    const v38, 0x7f020237

    invoke-virtual/range {v37 .. v38}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_b

    .line 882
    .end local v18    # "link":Ljava/lang/CharSequence;
    .end local v23    # "ni":Z
    .end local v27    # "postphoto":Ljava/lang/String;
    :cond_45
    iget v0, v7, Lcom/vkontakte/android/api/NotificationEntry;->action:I

    move/from16 v37, v0

    const/16 v38, 0x4

    move/from16 v0, v37

    move/from16 v1, v38

    if-ne v0, v1, :cond_46

    iget-object v0, v7, Lcom/vkontakte/android/api/NotificationEntry;->ppost:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v37, v0

    if-eqz v37, :cond_d

    :cond_46
    iget v0, v7, Lcom/vkontakte/android/api/NotificationEntry;->action:I

    move/from16 v37, v0

    const/16 v38, 0x5

    move/from16 v0, v37

    move/from16 v1, v38

    if-eq v0, v1, :cond_d

    .line 883
    iget-object v0, v9, Lcom/vkontakte/android/NotificationsView$ViewHolder;->link:Landroid/widget/TextView;

    move-object/from16 v37, v0

    if-eqz v37, :cond_47

    iget-object v0, v9, Lcom/vkontakte/android/NotificationsView$ViewHolder;->link:Landroid/widget/TextView;

    move-object/from16 v37, v0

    const/16 v38, 0x8

    invoke-virtual/range {v37 .. v38}, Landroid/widget/TextView;->setVisibility(I)V

    .line 884
    :cond_47
    iget-object v0, v9, Lcom/vkontakte/android/NotificationsView$ViewHolder;->postPhoto:Landroid/widget/ImageView;

    move-object/from16 v37, v0

    if-eqz v37, :cond_48

    iget-object v0, v9, Lcom/vkontakte/android/NotificationsView$ViewHolder;->postPhoto:Landroid/widget/ImageView;

    move-object/from16 v37, v0

    const/16 v38, 0x8

    invoke-virtual/range {v37 .. v38}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 885
    :cond_48
    iget-object v0, v9, Lcom/vkontakte/android/NotificationsView$ViewHolder;->postPhoto:Landroid/widget/ImageView;

    move-object/from16 v37, v0

    if-eqz v37, :cond_d

    .line 886
    iget-object v0, v9, Lcom/vkontakte/android/NotificationsView$ViewHolder;->postPhoto:Landroid/widget/ImageView;

    move-object/from16 v37, v0

    const/16 v38, 0x0

    invoke-virtual/range {v37 .. v38}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 887
    iget-object v0, v9, Lcom/vkontakte/android/NotificationsView$ViewHolder;->info:Landroid/widget/TextView;

    move-object/from16 v37, v0

    const/16 v38, 0x0

    invoke-virtual/range {v37 .. v38}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 888
    iget-object v0, v9, Lcom/vkontakte/android/NotificationsView$ViewHolder;->link:Landroid/widget/TextView;

    move-object/from16 v37, v0

    if-eqz v37, :cond_d

    .line 889
    iget-object v0, v9, Lcom/vkontakte/android/NotificationsView$ViewHolder;->link:Landroid/widget/TextView;

    move-object/from16 v37, v0

    const/16 v38, 0x0

    invoke-virtual/range {v37 .. v38}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_c

    .line 909
    .restart local v16    # "iv":Landroid/widget/ImageView;
    :cond_49
    const/16 v37, 0x1f4

    move-object/from16 v0, v34

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    .end local v16    # "iv":Landroid/widget/ImageView;
    check-cast v16, Landroid/widget/ImageView;

    .restart local v16    # "iv":Landroid/widget/ImageView;
    goto/16 :goto_d

    .line 911
    :cond_4a
    const v37, 0x7f0201cd

    goto/16 :goto_e

    .line 915
    .end local v16    # "iv":Landroid/widget/ImageView;
    :cond_4b
    const/16 v28, 0x0

    goto/16 :goto_f

    .line 916
    .restart local v28    # "prevIsDivider":Z
    :cond_4c
    const/16 v22, 0x0

    goto/16 :goto_10

    .line 919
    .restart local v22    # "nextIsDivider":Z
    :cond_4d
    if-eqz p1, :cond_4e

    if-eqz v28, :cond_4f

    .line 920
    :cond_4e
    const v37, 0x7f0200b1

    move-object/from16 v0, v34

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_2

    .line 921
    :cond_4f
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/NotificationsView$NotificationsAdapter;->getCount()I

    move-result v37

    add-int/lit8 v37, v37, -0x1

    move/from16 v0, p1

    move/from16 v1, v37

    if-eq v0, v1, :cond_50

    if-eqz v22, :cond_51

    .line 922
    :cond_50
    const v37, 0x7f0200ad

    move-object/from16 v0, v34

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_2

    .line 924
    :cond_51
    const v37, 0x7f0200af

    move-object/from16 v0, v34

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_2

    .line 926
    .end local v9    # "holder":Lcom/vkontakte/android/NotificationsView$ViewHolder;
    .end local v22    # "nextIsDivider":Z
    .end local v28    # "prevIsDivider":Z
    .end local v34    # "v":Landroid/view/View;
    .restart local v35    # "v":Landroid/view/View;
    :catch_1
    move-exception v36

    move-object/from16 v34, v35

    .end local v35    # "v":Landroid/view/View;
    .restart local v34    # "v":Landroid/view/View;
    goto/16 :goto_1

    .line 827
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch

    .line 644
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch

    .line 662
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
    .line 531
    const/16 v0, 0xa

    return v0
.end method

.method public isEnabled(I)Z
    .locals 2
    .param p1, "pos"    # I

    .prologue
    .line 556
    sget-object v0, Lcom/vkontakte/android/NotificationsView;->notifications:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/api/NotificationEntry;

    iget v0, v0, Lcom/vkontakte/android/api/NotificationEntry;->feedbackType:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/vkontakte/android/NotificationsView;->notifications:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/api/NotificationEntry;

    iget v0, v0, Lcom/vkontakte/android/api/NotificationEntry;->action:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
