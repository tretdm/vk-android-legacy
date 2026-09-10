.class Lcom/vkontakte/android/fragments/NotificationsFragment$NotificationsAdapter;
.super Landroid/widget/BaseAdapter;
.source "NotificationsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/fragments/NotificationsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NotificationsAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/NotificationsFragment;


# direct methods
.method private constructor <init>(Lcom/vkontakte/android/fragments/NotificationsFragment;)V
    .locals 0

    .prologue
    .line 302
    iput-object p1, p0, Lcom/vkontakte/android/fragments/NotificationsFragment$NotificationsAdapter;->this$0:Lcom/vkontakte/android/fragments/NotificationsFragment;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkontakte/android/fragments/NotificationsFragment;Lcom/vkontakte/android/fragments/NotificationsFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/vkontakte/android/fragments/NotificationsFragment;
    .param p2, "x1"    # Lcom/vkontakte/android/fragments/NotificationsFragment$1;

    .prologue
    .line 302
    invoke-direct {p0, p1}, Lcom/vkontakte/android/fragments/NotificationsFragment$NotificationsAdapter;-><init>(Lcom/vkontakte/android/fragments/NotificationsFragment;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Lcom/vkontakte/android/fragments/NotificationsFragment$NotificationsAdapter;->this$0:Lcom/vkontakte/android/fragments/NotificationsFragment;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/NotificationsFragment;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 311
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 316
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "pos"    # I

    .prologue
    .line 326
    iget-object v0, p0, Lcom/vkontakte/android/fragments/NotificationsFragment$NotificationsAdapter;->this$0:Lcom/vkontakte/android/fragments/NotificationsFragment;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/NotificationsFragment;->data:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/api/NotificationEntry;

    iget v0, v0, Lcom/vkontakte/android/api/NotificationEntry;->feedbackType:I

    packed-switch v0, :pswitch_data_0

    .line 340
    const/4 v0, 0x5

    :goto_0
    return v0

    .line 329
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 331
    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 333
    :pswitch_2
    const/4 v0, 0x0

    goto :goto_0

    .line 335
    :pswitch_3
    const/4 v0, 0x3

    goto :goto_0

    .line 337
    :pswitch_4
    const/4 v0, 0x4

    goto :goto_0

    .line 326
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
    .locals 43
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 351
    move-object/from16 v35, p2

    .line 353
    .local v35, "v":Landroid/view/View;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/NotificationsFragment$NotificationsAdapter;->this$0:Lcom/vkontakte/android/fragments/NotificationsFragment;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/vkontakte/android/fragments/NotificationsFragment;->data:Ljava/util/ArrayList;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/vkontakte/android/api/NotificationEntry;

    .line 354
    .local v7, "e":Lcom/vkontakte/android/api/NotificationEntry;
    iget v0, v7, Lcom/vkontakte/android/api/NotificationEntry;->feedbackType:I

    move/from16 v38, v0

    const/16 v39, 0x5

    move/from16 v0, v38

    move/from16 v1, v39

    if-ne v0, v1, :cond_2

    .line 355
    if-eqz v35, :cond_1

    move-object/from16 v34, v35

    .line 717
    .end local v7    # "e":Lcom/vkontakte/android/api/NotificationEntry;
    :cond_0
    :goto_0
    return-object v34

    .line 356
    .restart local v7    # "e":Lcom/vkontakte/android/api/NotificationEntry;
    :cond_1
    new-instance v34, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/NotificationsFragment$NotificationsAdapter;->this$0:Lcom/vkontakte/android/fragments/NotificationsFragment;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Lcom/vkontakte/android/fragments/NotificationsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v38

    move-object/from16 v0, v34

    move-object/from16 v1, v38

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 357
    .local v34, "tv":Landroid/widget/TextView;
    const v38, -0x7a7a7b

    move-object/from16 v0, v34

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 358
    sget-object v38, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    move-object/from16 v0, v34

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 359
    const/high16 v38, 0x41880000    # 17.0f

    invoke-static/range {v38 .. v38}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v38

    const/high16 v39, 0x41200000    # 10.0f

    invoke-static/range {v39 .. v39}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v39

    const/16 v40, 0x0

    const/16 v41, 0x0

    move-object/from16 v0, v34

    move/from16 v1, v38

    move/from16 v2, v39

    move/from16 v3, v40

    move/from16 v4, v41

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 360
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/NotificationsFragment$NotificationsAdapter;->this$0:Lcom/vkontakte/android/fragments/NotificationsFragment;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Lcom/vkontakte/android/fragments/NotificationsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v38

    const v39, 0x7f0d0365

    invoke-virtual/range {v38 .. v39}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v34

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 361
    const/16 v38, 0x1

    const/high16 v39, 0x41600000    # 14.0f

    move-object/from16 v0, v34

    move/from16 v1, v38

    move/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 716
    .end local v7    # "e":Lcom/vkontakte/android/api/NotificationEntry;
    .end local v34    # "tv":Landroid/widget/TextView;
    :catch_0
    move-exception v37

    .local v37, "x":Ljava/lang/Exception;
    :goto_1
    const-string v38, "vk"

    move-object/from16 v0, v38

    move-object/from16 v1, v37

    invoke-static {v0, v1}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v37    # "x":Ljava/lang/Exception;
    :goto_2
    move-object/from16 v34, v35

    .line 717
    goto :goto_0

    .line 364
    .restart local v7    # "e":Lcom/vkontakte/android/api/NotificationEntry;
    :cond_2
    :try_start_1
    iget v0, v7, Lcom/vkontakte/android/api/NotificationEntry;->feedbackType:I

    move/from16 v38, v0

    const/16 v39, 0x6

    move/from16 v0, v38

    move/from16 v1, v39

    if-ne v0, v1, :cond_4

    .line 365
    if-eqz v35, :cond_3

    move-object/from16 v0, v35

    check-cast v0, Landroid/widget/TextView;

    move-object/from16 v38, v0

    move-object/from16 v34, v38

    .line 366
    .restart local v34    # "tv":Landroid/widget/TextView;
    :goto_3
    const v39, 0x7f070066

    iget-object v0, v7, Lcom/vkontakte/android/api/NotificationEntry;->extra:Ljava/lang/Object;

    move-object/from16 v38, v0

    check-cast v38, Ljava/util/ArrayList;

    invoke-virtual/range {v38 .. v38}, Ljava/util/ArrayList;->size()I

    move-result v38

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/NotificationsFragment$NotificationsAdapter;->this$0:Lcom/vkontakte/android/fragments/NotificationsFragment;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Lcom/vkontakte/android/fragments/NotificationsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v40

    move/from16 v0, v39

    move/from16 v1, v38

    move-object/from16 v2, v40

    invoke-static {v0, v1, v2}, Lcom/vkontakte/android/Global;->langPlural(IILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v34

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 367
    if-nez v35, :cond_0

    .line 368
    const v38, 0x7f020041

    move-object/from16 v0, v34

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 369
    move-object/from16 v0, v34

    check-cast v0, Lcom/vkontakte/android/ui/OverlayTextView;

    move-object/from16 v38, v0

    const v39, 0x7f020077

    invoke-virtual/range {v38 .. v39}, Lcom/vkontakte/android/ui/OverlayTextView;->setOverlay(I)V

    .line 370
    move-object/from16 v0, v34

    check-cast v0, Lcom/vkontakte/android/ui/OverlayTextView;

    move-object/from16 v38, v0

    invoke-virtual/range {v34 .. v34}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v39

    const/16 v40, 0x0

    invoke-virtual/range {v34 .. v34}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v41

    const/16 v42, 0x0

    invoke-virtual/range {v38 .. v42}, Lcom/vkontakte/android/ui/OverlayTextView;->setOverlayPadding(IIII)V

    .line 371
    invoke-virtual/range {v34 .. v34}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v38

    const/high16 v39, 0x41200000    # 10.0f

    invoke-static/range {v39 .. v39}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v39

    invoke-virtual/range {v34 .. v34}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v40

    const/high16 v41, 0x41200000    # 10.0f

    invoke-static/range {v41 .. v41}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v41

    move-object/from16 v0, v34

    move/from16 v1, v38

    move/from16 v2, v39

    move/from16 v3, v40

    move/from16 v4, v41

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 372
    const/16 v38, 0x11

    move-object/from16 v0, v34

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 373
    const v38, -0xcc7337

    move-object/from16 v0, v34

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 374
    const/16 v38, 0x1

    const/high16 v39, 0x41700000    # 15.0f

    move-object/from16 v0, v34

    move/from16 v1, v38

    move/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    goto/16 :goto_0

    .line 365
    .end local v34    # "tv":Landroid/widget/TextView;
    :cond_3
    new-instance v34, Lcom/vkontakte/android/ui/OverlayTextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/NotificationsFragment$NotificationsAdapter;->this$0:Lcom/vkontakte/android/fragments/NotificationsFragment;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Lcom/vkontakte/android/fragments/NotificationsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v38

    move-object/from16 v0, v34

    move-object/from16 v1, v38

    invoke-direct {v0, v1}, Lcom/vkontakte/android/ui/OverlayTextView;-><init>(Landroid/content/Context;)V

    goto/16 :goto_3

    .line 377
    :cond_4
    const/16 v16, 0x0

    .line 378
    .local v16, "info":Ljava/lang/String;
    iget v0, v7, Lcom/vkontakte/android/api/NotificationEntry;->feedbackType:I

    move/from16 v38, v0

    const/16 v39, 0x3

    move/from16 v0, v38

    move/from16 v1, v39

    if-ne v0, v1, :cond_16

    .line 379
    if-nez v35, :cond_5

    .line 380
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/NotificationsFragment$NotificationsAdapter;->this$0:Lcom/vkontakte/android/fragments/NotificationsFragment;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Lcom/vkontakte/android/fragments/NotificationsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v38

    const v39, 0x7f030059

    const/16 v40, 0x0

    invoke-static/range {v38 .. v40}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v35

    .line 381
    new-instance v9, Lcom/vkontakte/android/fragments/NotificationsFragment$ViewHolder;

    move-object/from16 v0, v35

    invoke-direct {v9, v0}, Lcom/vkontakte/android/fragments/NotificationsFragment$ViewHolder;-><init>(Landroid/view/View;)V

    .line 383
    .local v9, "holder":Lcom/vkontakte/android/fragments/NotificationsFragment$ViewHolder;
    move-object/from16 v0, v35

    invoke-virtual {v0, v9}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 384
    iget-object v0, v9, Lcom/vkontakte/android/fragments/NotificationsFragment$ViewHolder;->userPhoto:Landroid/widget/ImageView;

    move-object/from16 v38, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/NotificationsFragment$NotificationsAdapter;->this$0:Lcom/vkontakte/android/fragments/NotificationsFragment;

    move-object/from16 v39, v0

    invoke-static/range {v39 .. v39}, Lcom/vkontakte/android/fragments/NotificationsFragment;->access$500(Lcom/vkontakte/android/fragments/NotificationsFragment;)Landroid/view/View$OnClickListener;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 388
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/NotificationsFragment$NotificationsAdapter;->this$0:Lcom/vkontakte/android/fragments/NotificationsFragment;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Lcom/vkontakte/android/fragments/NotificationsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v38

    invoke-static/range {v38 .. v38}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v38

    const-string v39, "fontSize"

    const-string v40, "0"

    invoke-interface/range {v38 .. v40}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    .line 389
    .local v18, "k":I
    iget-object v0, v9, Lcom/vkontakte/android/fragments/NotificationsFragment$ViewHolder;->text:Landroid/widget/TextView;

    move-object/from16 v38, v0

    const/16 v39, 0x1

    const/high16 v40, 0x41800000    # 16.0f

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v41, v0

    const/high16 v42, 0x40000000    # 2.0f

    mul-float v41, v41, v42

    add-float v40, v40, v41

    invoke-virtual/range {v38 .. v40}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 391
    .end local v9    # "holder":Lcom/vkontakte/android/fragments/NotificationsFragment$ViewHolder;
    .end local v18    # "k":I
    :cond_5
    invoke-virtual/range {v35 .. v35}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/vkontakte/android/fragments/NotificationsFragment$ViewHolder;

    .line 392
    .restart local v9    # "holder":Lcom/vkontakte/android/fragments/NotificationsFragment$ViewHolder;
    iget-object v0, v9, Lcom/vkontakte/android/fragments/NotificationsFragment$ViewHolder;->name:Landroid/widget/TextView;

    move-object/from16 v38, v0

    iget-object v0, v7, Lcom/vkontakte/android/api/NotificationEntry;->commentUser:Lcom/vkontakte/android/UserProfile;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    move-object/from16 v39, v0

    invoke-virtual/range {v38 .. v39}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 394
    iget-object v0, v9, Lcom/vkontakte/android/fragments/NotificationsFragment$ViewHolder;->text:Landroid/widget/TextView;

    move-object/from16 v38, v0

    iget-object v0, v7, Lcom/vkontakte/android/api/NotificationEntry;->displayableText:Ljava/lang/CharSequence;

    move-object/from16 v39, v0

    invoke-virtual/range {v38 .. v39}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 396
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/NotificationsFragment$NotificationsAdapter;->this$0:Lcom/vkontakte/android/fragments/NotificationsFragment;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/vkontakte/android/fragments/NotificationsFragment;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    move-object/from16 v38, v0

    iget-object v0, v7, Lcom/vkontakte/android/api/NotificationEntry;->commentUser:Lcom/vkontakte/android/UserProfile;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    move-object/from16 v39, v0

    invoke-virtual/range {v38 .. v39}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->isAlreadyLoaded(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_15

    .line 397
    iget-object v0, v9, Lcom/vkontakte/android/fragments/NotificationsFragment$ViewHolder;->userPhoto:Landroid/widget/ImageView;

    move-object/from16 v38, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/NotificationsFragment$NotificationsAdapter;->this$0:Lcom/vkontakte/android/fragments/NotificationsFragment;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/vkontakte/android/fragments/NotificationsFragment;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    move-object/from16 v39, v0

    iget-object v0, v7, Lcom/vkontakte/android/api/NotificationEntry;->commentUser:Lcom/vkontakte/android/UserProfile;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    move-object/from16 v40, v0

    invoke-virtual/range {v39 .. v40}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 401
    :goto_4
    iget-object v0, v9, Lcom/vkontakte/android/fragments/NotificationsFragment$ViewHolder;->userPhoto:Landroid/widget/ImageView;

    move-object/from16 v38, v0

    iget-object v0, v7, Lcom/vkontakte/android/api/NotificationEntry;->commentUser:Lcom/vkontakte/android/UserProfile;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    iget v0, v0, Lcom/vkontakte/android/UserProfile;->uid:I

    move/from16 v39, v0

    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 611
    .end local v9    # "holder":Lcom/vkontakte/android/fragments/NotificationsFragment$ViewHolder;
    :cond_6
    :goto_5
    invoke-virtual/range {v35 .. v35}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/vkontakte/android/fragments/NotificationsFragment$ViewHolder;

    .line 613
    .restart local v9    # "holder":Lcom/vkontakte/android/fragments/NotificationsFragment$ViewHolder;
    iget v0, v7, Lcom/vkontakte/android/api/NotificationEntry;->parentType:I

    move/from16 v38, v0

    if-lez v38, :cond_45

    .line 614
    if-nez v16, :cond_3c

    const/16 v24, 0x1

    .line 615
    .local v24, "ni":Z
    :goto_6
    if-eqz v24, :cond_7

    iget v0, v7, Lcom/vkontakte/android/api/NotificationEntry;->time:I

    move/from16 v38, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/NotificationsFragment$NotificationsAdapter;->this$0:Lcom/vkontakte/android/fragments/NotificationsFragment;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Lcom/vkontakte/android/fragments/NotificationsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Lcom/vkontakte/android/Global;->langDateRelative(ILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v16

    .line 616
    :cond_7
    const-string v19, ""

    .line 617
    .local v19, "link":Ljava/lang/CharSequence;
    iget v0, v7, Lcom/vkontakte/android/api/NotificationEntry;->parentType:I

    move/from16 v38, v0

    packed-switch v38, :pswitch_data_0

    .line 638
    :cond_8
    :goto_7
    iget v0, v7, Lcom/vkontakte/android/api/NotificationEntry;->feedbackType:I

    move/from16 v38, v0

    const/16 v39, 0x1

    move/from16 v0, v38

    move/from16 v1, v39

    if-eq v0, v1, :cond_9

    iget v0, v7, Lcom/vkontakte/android/api/NotificationEntry;->feedbackType:I

    move/from16 v38, v0

    const/16 v39, 0x4

    move/from16 v0, v38

    move/from16 v1, v39

    if-ne v0, v1, :cond_a

    .line 639
    :cond_9
    const/16 v19, 0x0

    .line 642
    :cond_a
    iget-object v0, v9, Lcom/vkontakte/android/fragments/NotificationsFragment$ViewHolder;->link:Landroid/widget/TextView;

    move-object/from16 v38, v0

    if-eqz v38, :cond_b

    .line 643
    iget-object v0, v9, Lcom/vkontakte/android/fragments/NotificationsFragment$ViewHolder;->link:Landroid/widget/TextView;

    move-object/from16 v39, v0

    if-eqz v19, :cond_41

    move-object/from16 v38, v19

    :goto_8
    move-object/from16 v0, v39

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 644
    iget-object v0, v9, Lcom/vkontakte/android/fragments/NotificationsFragment$ViewHolder;->link:Landroid/widget/TextView;

    move-object/from16 v39, v0

    if-eqz v19, :cond_42

    invoke-interface/range {v19 .. v19}, Ljava/lang/CharSequence;->length()I

    move-result v38

    if-lez v38, :cond_42

    const/16 v38, 0x3e7

    :goto_9
    move-object/from16 v0, v39

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxHeight(I)V

    .line 650
    :cond_b
    const/16 v28, 0x0

    .line 651
    .local v28, "postphoto":Ljava/lang/String;
    iget-object v0, v7, Lcom/vkontakte/android/api/NotificationEntry;->parent:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :cond_c
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v38

    if-eqz v38, :cond_d

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vkontakte/android/Attachment;

    .line 652
    .local v6, "att":Lcom/vkontakte/android/Attachment;
    instance-of v0, v6, Lcom/vkontakte/android/ImageAttachment;

    move/from16 v38, v0

    if-eqz v38, :cond_c

    .line 653
    check-cast v6, Lcom/vkontakte/android/ImageAttachment;

    .end local v6    # "att":Lcom/vkontakte/android/Attachment;
    invoke-interface {v6}, Lcom/vkontakte/android/ImageAttachment;->getImageURL()Ljava/lang/String;

    move-result-object v28

    .line 657
    :cond_d
    if-nez v28, :cond_43

    .line 658
    iget-object v0, v9, Lcom/vkontakte/android/fragments/NotificationsFragment$ViewHolder;->postPhoto:Landroid/widget/ImageView;

    move-object/from16 v38, v0

    const/16 v39, 0x8

    invoke-virtual/range {v38 .. v39}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 666
    :goto_a
    iget-object v0, v9, Lcom/vkontakte/android/fragments/NotificationsFragment$ViewHolder;->postPhoto:Landroid/widget/ImageView;

    move-object/from16 v38, v0

    if-eqz v38, :cond_e

    .line 667
    iget-object v0, v9, Lcom/vkontakte/android/fragments/NotificationsFragment$ViewHolder;->postPhoto:Landroid/widget/ImageView;

    move-object/from16 v38, v0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 668
    iget-object v0, v9, Lcom/vkontakte/android/fragments/NotificationsFragment$ViewHolder;->info:Landroid/widget/TextView;

    move-object/from16 v38, v0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 669
    iget-object v0, v9, Lcom/vkontakte/android/fragments/NotificationsFragment$ViewHolder;->link:Landroid/widget/TextView;

    move-object/from16 v38, v0

    if-eqz v38, :cond_e

    .line 670
    iget-object v0, v9, Lcom/vkontakte/android/fragments/NotificationsFragment$ViewHolder;->link:Landroid/widget/TextView;

    move-object/from16 v38, v0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 682
    .end local v11    # "i$":Ljava/util/Iterator;
    .end local v19    # "link":Ljava/lang/CharSequence;
    .end local v24    # "ni":Z
    .end local v28    # "postphoto":Ljava/lang/String;
    :cond_e
    :goto_b
    if-eqz v9, :cond_f

    iget-object v0, v9, Lcom/vkontakte/android/fragments/NotificationsFragment$ViewHolder;->info:Landroid/widget/TextView;

    move-object/from16 v38, v0

    if-eqz v38, :cond_f

    iget-object v0, v9, Lcom/vkontakte/android/fragments/NotificationsFragment$ViewHolder;->info:Landroid/widget/TextView;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 683
    :cond_f
    const/16 v38, 0x1f4

    move-object/from16 v0, v35

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v38

    if-eqz v38, :cond_10

    const/16 v38, 0x1f4

    move-object/from16 v0, v35

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v38

    const/16 v39, 0x8

    invoke-virtual/range {v38 .. v39}, Landroid/view/View;->setVisibility(I)V

    .line 685
    :cond_10
    iget v0, v7, Lcom/vkontakte/android/api/NotificationEntry;->replyID:I

    move/from16 v38, v0

    if-gtz v38, :cond_11

    iget-boolean v0, v7, Lcom/vkontakte/android/api/NotificationEntry;->isLiked:Z

    move/from16 v38, v0

    if-eqz v38, :cond_12

    .line 686
    :cond_11
    const/16 v17, 0x0

    .line 687
    .local v17, "iv":Landroid/widget/ImageView;
    const/16 v38, 0x1f4

    move-object/from16 v0, v35

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v38

    if-nez v38, :cond_49

    .line 688
    new-instance v17, Landroid/widget/ImageView;

    .end local v17    # "iv":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/NotificationsFragment$NotificationsAdapter;->this$0:Lcom/vkontakte/android/fragments/NotificationsFragment;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Lcom/vkontakte/android/fragments/NotificationsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v38

    move-object/from16 v0, v17

    move-object/from16 v1, v38

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 689
    .restart local v17    # "iv":Landroid/widget/ImageView;
    sget-object v38, Landroid/widget/ImageView$ScaleType;->FIT_END:Landroid/widget/ImageView$ScaleType;

    move-object/from16 v0, v17

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 690
    new-instance v20, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v38, -0x2

    const/16 v39, -0x1

    move-object/from16 v0, v20

    move/from16 v1, v38

    move/from16 v2, v39

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 691
    .local v20, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v38, 0xb

    move-object/from16 v0, v20

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 692
    const/16 v38, 0xc

    move-object/from16 v0, v20

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 693
    const/16 v38, 0xa

    move-object/from16 v0, v20

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 694
    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 695
    const/16 v38, 0x1f4

    move-object/from16 v0, v17

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setId(I)V

    .line 696
    move-object/from16 v0, v35

    check-cast v0, Landroid/view/ViewGroup;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 701
    .end local v20    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    :goto_c
    iget v0, v7, Lcom/vkontakte/android/api/NotificationEntry;->replyID:I

    move/from16 v38, v0

    if-lez v38, :cond_4a

    const v38, 0x7f020149

    :goto_d
    move-object/from16 v0, v17

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 702
    const/16 v38, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 705
    .end local v17    # "iv":Landroid/widget/ImageView;
    :cond_12
    if-lez p1, :cond_4b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/NotificationsFragment$NotificationsAdapter;->this$0:Lcom/vkontakte/android/fragments/NotificationsFragment;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/vkontakte/android/fragments/NotificationsFragment;->data:Ljava/util/ArrayList;

    move-object/from16 v38, v0

    add-int/lit8 v39, p1, -0x1

    invoke-virtual/range {v38 .. v39}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Lcom/vkontakte/android/api/NotificationEntry;

    move-object/from16 v0, v38

    iget v0, v0, Lcom/vkontakte/android/api/NotificationEntry;->feedbackType:I

    move/from16 v38, v0

    const/16 v39, 0x5

    move/from16 v0, v38

    move/from16 v1, v39

    if-ne v0, v1, :cond_4b

    const/16 v29, 0x1

    .line 706
    .local v29, "prevIsDivider":Z
    :goto_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/NotificationsFragment$NotificationsAdapter;->this$0:Lcom/vkontakte/android/fragments/NotificationsFragment;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/vkontakte/android/fragments/NotificationsFragment;->data:Ljava/util/ArrayList;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Ljava/util/ArrayList;->size()I

    move-result v38

    add-int/lit8 v38, v38, -0x1

    move/from16 v0, p1

    move/from16 v1, v38

    if-ge v0, v1, :cond_4c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/NotificationsFragment$NotificationsAdapter;->this$0:Lcom/vkontakte/android/fragments/NotificationsFragment;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/vkontakte/android/fragments/NotificationsFragment;->data:Ljava/util/ArrayList;

    move-object/from16 v38, v0

    add-int/lit8 v39, p1, 0x1

    invoke-virtual/range {v38 .. v39}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Lcom/vkontakte/android/api/NotificationEntry;

    move-object/from16 v0, v38

    iget v0, v0, Lcom/vkontakte/android/api/NotificationEntry;->feedbackType:I

    move/from16 v38, v0

    const/16 v39, 0x5

    move/from16 v0, v38

    move/from16 v1, v39

    if-ne v0, v1, :cond_4c

    const/16 v23, 0x1

    .line 707
    .local v23, "nextIsDivider":Z
    :goto_f
    if-eqz p1, :cond_13

    if-eqz v29, :cond_4d

    :cond_13
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/fragments/NotificationsFragment$NotificationsAdapter;->getCount()I

    move-result v38

    add-int/lit8 v38, v38, -0x1

    move/from16 v0, p1

    move/from16 v1, v38

    if-eq v0, v1, :cond_14

    if-eqz v23, :cond_4d

    .line 708
    :cond_14
    const v38, 0x7f02003d

    move-object/from16 v0, v35

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_2

    .line 399
    .end local v23    # "nextIsDivider":Z
    .end local v29    # "prevIsDivider":Z
    :cond_15
    iget-object v0, v9, Lcom/vkontakte/android/fragments/NotificationsFragment$ViewHolder;->userPhoto:Landroid/widget/ImageView;

    move-object/from16 v38, v0

    const v39, 0x7f0201ec

    invoke-virtual/range {v38 .. v39}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_4

    .line 402
    .end local v9    # "holder":Lcom/vkontakte/android/fragments/NotificationsFragment$ViewHolder;
    :cond_16
    iget v0, v7, Lcom/vkontakte/android/api/NotificationEntry;->feedbackType:I

    move/from16 v38, v0

    const/16 v39, 0x1

    move/from16 v0, v38

    move/from16 v1, v39

    if-eq v0, v1, :cond_17

    iget v0, v7, Lcom/vkontakte/android/api/NotificationEntry;->feedbackType:I

    move/from16 v38, v0

    const/16 v39, 0x4

    move/from16 v0, v38

    move/from16 v1, v39

    if-ne v0, v1, :cond_2b

    .line 403
    :cond_17
    if-nez v35, :cond_18

    .line 404
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/NotificationsFragment$NotificationsAdapter;->this$0:Lcom/vkontakte/android/fragments/NotificationsFragment;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Lcom/vkontakte/android/fragments/NotificationsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v38

    const v39, 0x7f03005a

    const/16 v40, 0x0

    invoke-static/range {v38 .. v40}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v35

    .line 405
    new-instance v9, Lcom/vkontakte/android/fragments/NotificationsFragment$ViewHolder;

    move-object/from16 v0, v35

    invoke-direct {v9, v0}, Lcom/vkontakte/android/fragments/NotificationsFragment$ViewHolder;-><init>(Landroid/view/View;)V

    .line 406
    .restart local v9    # "holder":Lcom/vkontakte/android/fragments/NotificationsFragment$ViewHolder;
    move-object/from16 v0, v35

    invoke-virtual {v0, v9}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 410
    iget-object v0, v9, Lcom/vkontakte/android/fragments/NotificationsFragment$ViewHolder;->userPhoto:Landroid/widget/ImageView;

    move-object/from16 v38, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/NotificationsFragment$NotificationsAdapter;->this$0:Lcom/vkontakte/android/fragments/NotificationsFragment;

    move-object/from16 v39, v0

    invoke-static/range {v39 .. v39}, Lcom/vkontakte/android/fragments/NotificationsFragment;->access$500(Lcom/vkontakte/android/fragments/NotificationsFragment;)Landroid/view/View$OnClickListener;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 411
    iget-object v0, v9, Lcom/vkontakte/android/fragments/NotificationsFragment$ViewHolder;->photoStrip:Lcom/vkontakte/android/ui/PhotoStripView;

    move-object/from16 v38, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/NotificationsFragment$NotificationsAdapter;->this$0:Lcom/vkontakte/android/fragments/NotificationsFragment;

    move-object/from16 v39, v0

    invoke-static/range {v39 .. v39}, Lcom/vkontakte/android/fragments/NotificationsFragment;->access$600(Lcom/vkontakte/android/fragments/NotificationsFragment;)Lcom/vkontakte/android/ui/PhotoStripView$OnPhotoClickListener;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Lcom/vkontakte/android/ui/PhotoStripView;->setListener(Lcom/vkontakte/android/ui/PhotoStripView$OnPhotoClickListener;)V

    .line 413
    .end local v9    # "holder":Lcom/vkontakte/android/fragments/NotificationsFragment$ViewHolder;
    :cond_18
    invoke-virtual/range {v35 .. v35}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/vkontakte/android/fragments/NotificationsFragment$ViewHolder;

    .line 414
    .restart local v9    # "holder":Lcom/vkontakte/android/fragments/NotificationsFragment$ViewHolder;
    iget v0, v7, Lcom/vkontakte/android/api/NotificationEntry;->time:I

    move/from16 v38, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/NotificationsFragment$NotificationsAdapter;->this$0:Lcom/vkontakte/android/fragments/NotificationsFragment;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Lcom/vkontakte/android/fragments/NotificationsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Lcom/vkontakte/android/Global;->langDateRelative(ILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v16

    .line 415
    iget-object v0, v7, Lcom/vkontakte/android/api/NotificationEntry;->users:Ljava/util/Vector;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Ljava/util/Vector;->size()I

    move-result v25

    .line 416
    .local v25, "num":I
    new-instance v33, Landroid/text/SpannableStringBuilder;

    iget-object v0, v7, Lcom/vkontakte/android/api/NotificationEntry;->users:Ljava/util/Vector;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    invoke-virtual/range {v38 .. v39}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Lcom/vkontakte/android/UserProfile;

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    move-object/from16 v38, v0

    move-object/from16 v0, v33

    move-object/from16 v1, v38

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 417
    .local v33, "title":Landroid/text/SpannableStringBuilder;
    invoke-virtual/range {v33 .. v33}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v22

    .line 418
    .local v22, "nameLength":I
    iget-object v0, v7, Lcom/vkontakte/android/api/NotificationEntry;->users:Ljava/util/Vector;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Ljava/util/Vector;->size()I

    move-result v38

    const/16 v39, 0x1

    move/from16 v0, v38

    move/from16 v1, v39

    if-le v0, v1, :cond_19

    .line 420
    const-string v38, " "

    move-object/from16 v0, v33

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 422
    const v38, 0x7f070031

    iget-object v0, v7, Lcom/vkontakte/android/api/NotificationEntry;->users:Ljava/util/Vector;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Ljava/util/Vector;->size()I

    move-result v39

    add-int/lit8 v39, v39, -0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/NotificationsFragment$NotificationsAdapter;->this$0:Lcom/vkontakte/android/fragments/NotificationsFragment;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Lcom/vkontakte/android/fragments/NotificationsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v40

    invoke-static/range {v38 .. v40}, Lcom/vkontakte/android/Global;->langPlural(IILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v30

    .line 423
    .local v30, "qty":Ljava/lang/String;
    const-string v38, "<b>"

    move-object/from16 v0, v30

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v32

    .line 424
    .local v32, "start":I
    const-string v38, "<b>"

    const-string v39, ""

    move-object/from16 v0, v30

    move-object/from16 v1, v38

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v30

    .line 425
    const-string v38, "</b>"

    move-object/from16 v0, v30

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    .line 426
    .local v8, "end":I
    const-string v38, "</b>"

    const-string v39, ""

    move-object/from16 v0, v30

    move-object/from16 v1, v38

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v30

    .line 427
    invoke-static {}, Landroid/text/Spannable$Factory;->getInstance()Landroid/text/Spannable$Factory;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/text/Spannable$Factory;->newSpannable(Ljava/lang/CharSequence;)Landroid/text/Spannable;

    move-result-object v31

    .line 428
    .local v31, "qtys":Landroid/text/Spannable;
    new-instance v38, Landroid/text/style/StyleSpan;

    const/16 v39, 0x1

    invoke-direct/range {v38 .. v39}, Landroid/text/style/StyleSpan;-><init>(I)V

    const/16 v39, 0x0

    move-object/from16 v0, v31

    move-object/from16 v1, v38

    move/from16 v2, v32

    move/from16 v3, v39

    invoke-interface {v0, v1, v2, v8, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 429
    move-object/from16 v0, v33

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 432
    .end local v8    # "end":I
    .end local v30    # "qty":Ljava/lang/String;
    .end local v31    # "qtys":Landroid/text/Spannable;
    .end local v32    # "start":I
    :cond_19
    const/4 v13, 0x0

    .local v13, "idx1":I
    const/4 v14, 0x0

    .local v14, "idx2":I
    const/4 v15, 0x0

    .line 434
    .local v15, "idx3":I
    iget v0, v7, Lcom/vkontakte/android/api/NotificationEntry;->action:I

    move/from16 v38, v0

    packed-switch v38, :pswitch_data_1

    .line 452
    :goto_10
    :pswitch_0
    iget v0, v7, Lcom/vkontakte/android/api/NotificationEntry;->parentType:I

    move/from16 v38, v0

    packed-switch v38, :pswitch_data_2

    .line 467
    :goto_11
    const/16 v38, 0x1

    move/from16 v0, v25

    move/from16 v1, v38

    if-ne v0, v1, :cond_22

    .line 468
    iget-object v0, v7, Lcom/vkontakte/android/api/NotificationEntry;->users:Ljava/util/Vector;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    invoke-virtual/range {v38 .. v39}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Lcom/vkontakte/android/UserProfile;

    move-object/from16 v0, v38

    iget-boolean v0, v0, Lcom/vkontakte/android/UserProfile;->f:Z

    move/from16 v38, v0

    if-eqz v38, :cond_21

    const/4 v14, 0x1

    .line 473
    :goto_12
    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, " "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/NotificationsFragment$NotificationsAdapter;->this$0:Lcom/vkontakte/android/fragments/NotificationsFragment;

    move-object/from16 v39, v0

    invoke-static/range {v39 .. v39}, Lcom/vkontakte/android/fragments/NotificationsFragment;->access$700(Lcom/vkontakte/android/fragments/NotificationsFragment;)[[[Ljava/lang/String;

    move-result-object v39

    aget-object v39, v39, v13

    aget-object v39, v39, v14

    aget-object v39, v39, v15

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v33

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 475
    const/16 v19, 0x0

    .line 476
    .local v19, "link":Landroid/text/Spannable;
    iget v0, v7, Lcom/vkontakte/android/api/NotificationEntry;->action:I

    move/from16 v38, v0

    const/16 v39, 0x1

    move/from16 v0, v38

    move/from16 v1, v39

    if-eq v0, v1, :cond_1a

    iget v0, v7, Lcom/vkontakte/android/api/NotificationEntry;->action:I

    move/from16 v38, v0

    const/16 v39, 0x2

    move/from16 v0, v38

    move/from16 v1, v39

    if-ne v0, v1, :cond_1b

    .line 477
    :cond_1a
    iget v0, v7, Lcom/vkontakte/android/api/NotificationEntry;->parentType:I

    move/from16 v38, v0

    const/16 v39, 0x3

    move/from16 v0, v38

    move/from16 v1, v39

    if-ne v0, v1, :cond_23

    .line 478
    invoke-static {}, Landroid/text/Spannable$Factory;->getInstance()Landroid/text/Spannable$Factory;

    move-result-object v39

    iget-object v0, v7, Lcom/vkontakte/android/api/NotificationEntry;->parent:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    move-object/from16 v38, v0

    const/16 v40, 0x0

    move-object/from16 v0, v38

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Lcom/vkontakte/android/VideoAttachment;

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/vkontakte/android/VideoAttachment;->title:Ljava/lang/String;

    move-object/from16 v38, v0

    move-object/from16 v0, v39

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/text/Spannable$Factory;->newSpannable(Ljava/lang/CharSequence;)Landroid/text/Spannable;

    move-result-object v19

    .line 491
    :cond_1b
    :goto_13
    const/16 v21, 0x0

    .line 492
    .local v21, "n":I
    iget-object v0, v9, Lcom/vkontakte/android/fragments/NotificationsFragment$ViewHolder;->photoStrip:Lcom/vkontakte/android/ui/PhotoStripView;

    move-object/from16 v38, v0

    const/16 v39, 0x6

    iget-object v0, v7, Lcom/vkontakte/android/api/NotificationEntry;->users:Ljava/util/Vector;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Ljava/util/Vector;->size()I

    move-result v40

    invoke-static/range {v39 .. v40}, Ljava/lang/Math;->min(II)I

    move-result v39

    add-int/lit8 v39, v39, -0x1

    invoke-virtual/range {v38 .. v39}, Lcom/vkontakte/android/ui/PhotoStripView;->setCount(I)V

    .line 493
    iget-object v0, v9, Lcom/vkontakte/android/fragments/NotificationsFragment$ViewHolder;->photoStrip:Lcom/vkontakte/android/ui/PhotoStripView;

    move-object/from16 v39, v0

    iget-object v0, v7, Lcom/vkontakte/android/api/NotificationEntry;->users:Ljava/util/Vector;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Ljava/util/Vector;->size()I

    move-result v38

    const/16 v40, 0x1

    move/from16 v0, v38

    move/from16 v1, v40

    if-le v0, v1, :cond_27

    const/16 v38, 0x0

    :goto_14
    move-object/from16 v0, v39

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/PhotoStripView;->setVisibility(I)V

    .line 495
    iget-object v0, v7, Lcom/vkontakte/android/api/NotificationEntry;->users:Ljava/util/Vector;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .restart local v11    # "i$":Ljava/util/Iterator;
    :cond_1c
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v38

    if-eqz v38, :cond_1d

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/vkontakte/android/UserProfile;

    .line 496
    .local v27, "p":Lcom/vkontakte/android/UserProfile;
    if-nez v21, :cond_29

    .line 497
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/NotificationsFragment$NotificationsAdapter;->this$0:Lcom/vkontakte/android/fragments/NotificationsFragment;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/vkontakte/android/fragments/NotificationsFragment;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    move-object/from16 v38, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    move-object/from16 v39, v0

    invoke-virtual/range {v38 .. v39}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->isAlreadyLoaded(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_28

    .line 498
    iget-object v0, v9, Lcom/vkontakte/android/fragments/NotificationsFragment$ViewHolder;->userPhoto:Landroid/widget/ImageView;

    move-object/from16 v38, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/NotificationsFragment$NotificationsAdapter;->this$0:Lcom/vkontakte/android/fragments/NotificationsFragment;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/vkontakte/android/fragments/NotificationsFragment;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    move-object/from16 v39, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    move-object/from16 v40, v0

    invoke-virtual/range {v39 .. v40}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 501
    :goto_15
    iget-object v0, v9, Lcom/vkontakte/android/fragments/NotificationsFragment$ViewHolder;->userPhoto:Landroid/widget/ImageView;

    move-object/from16 v38, v0

    move-object/from16 v0, v27

    iget v0, v0, Lcom/vkontakte/android/UserProfile;->uid:I

    move/from16 v39, v0

    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 510
    :goto_16
    add-int/lit8 v21, v21, 0x1

    .line 511
    const/16 v38, 0x6

    move/from16 v0, v21

    move/from16 v1, v38

    if-lt v0, v1, :cond_1c

    .line 513
    .end local v27    # "p":Lcom/vkontakte/android/UserProfile;
    :cond_1d
    iget-object v0, v7, Lcom/vkontakte/android/api/NotificationEntry;->users:Ljava/util/Vector;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Ljava/util/Vector;->size()I

    move-result v38

    const/16 v39, 0x1

    move/from16 v0, v38

    move/from16 v1, v39

    if-le v0, v1, :cond_1e

    .line 514
    iget-object v0, v9, Lcom/vkontakte/android/fragments/NotificationsFragment$ViewHolder;->photoStrip:Lcom/vkontakte/android/ui/PhotoStripView;

    move-object/from16 v38, v0

    iget-object v0, v7, Lcom/vkontakte/android/api/NotificationEntry;->users:Ljava/util/Vector;

    move-object/from16 v39, v0

    const/16 v40, 0x1

    iget-object v0, v7, Lcom/vkontakte/android/api/NotificationEntry;->users:Ljava/util/Vector;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Ljava/util/Vector;->size()I

    move-result v41

    invoke-virtual/range {v39 .. v41}, Ljava/util/Vector;->subList(II)Ljava/util/List;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Lcom/vkontakte/android/ui/PhotoStripView;->setTag(Ljava/lang/Object;)V

    .line 517
    :cond_1e
    if-eqz v19, :cond_1f

    const-string v38, " "

    move-object/from16 v0, v33

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 518
    :cond_1f
    new-instance v38, Landroid/text/style/ForegroundColorSpan;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/NotificationsFragment$NotificationsAdapter;->this$0:Lcom/vkontakte/android/fragments/NotificationsFragment;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Lcom/vkontakte/android/fragments/NotificationsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v39

    const v40, 0x7f0a001f

    invoke-virtual/range {v39 .. v40}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v39

    invoke-direct/range {v38 .. v39}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual/range {v33 .. v33}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v39

    const/16 v40, 0x0

    move-object/from16 v0, v33

    move-object/from16 v1, v38

    move/from16 v2, v22

    move/from16 v3, v39

    move/from16 v4, v40

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 519
    if-eqz v19, :cond_20

    .line 520
    new-instance v38, Landroid/text/style/ForegroundColorSpan;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/NotificationsFragment$NotificationsAdapter;->this$0:Lcom/vkontakte/android/fragments/NotificationsFragment;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Lcom/vkontakte/android/fragments/NotificationsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v39

    const v40, 0x7f0a0021

    invoke-virtual/range {v39 .. v40}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v39

    invoke-direct/range {v38 .. v39}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v39, 0x0

    invoke-interface/range {v19 .. v19}, Landroid/text/Spannable;->length()I

    move-result v40

    const/16 v41, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v38

    move/from16 v2, v39

    move/from16 v3, v40

    move/from16 v4, v41

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 521
    move-object/from16 v0, v33

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 525
    :cond_20
    iget-object v0, v9, Lcom/vkontakte/android/fragments/NotificationsFragment$ViewHolder;->name:Landroid/widget/TextView;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 436
    .end local v11    # "i$":Ljava/util/Iterator;
    .end local v19    # "link":Landroid/text/Spannable;
    .end local v21    # "n":I
    :pswitch_1
    const/4 v13, 0x0

    .line 437
    iget-object v0, v9, Lcom/vkontakte/android/fragments/NotificationsFragment$ViewHolder;->actionIcon:Landroid/widget/ImageView;

    move-object/from16 v38, v0

    const v39, 0x7f0200df

    invoke-virtual/range {v38 .. v39}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_10

    .line 440
    :pswitch_2
    const/4 v13, 0x1

    .line 441
    iget-object v0, v9, Lcom/vkontakte/android/fragments/NotificationsFragment$ViewHolder;->actionIcon:Landroid/widget/ImageView;

    move-object/from16 v38, v0

    const v39, 0x7f0200e0

    invoke-virtual/range {v38 .. v39}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_10

    .line 444
    :pswitch_3
    const/4 v13, 0x2

    .line 445
    iget-object v0, v9, Lcom/vkontakte/android/fragments/NotificationsFragment$ViewHolder;->actionIcon:Landroid/widget/ImageView;

    move-object/from16 v38, v0

    const v39, 0x7f0200dd

    invoke-virtual/range {v38 .. v39}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_10

    .line 448
    :pswitch_4
    const/4 v13, 0x3

    .line 449
    iget-object v0, v9, Lcom/vkontakte/android/fragments/NotificationsFragment$ViewHolder;->actionIcon:Landroid/widget/ImageView;

    move-object/from16 v38, v0

    const v39, 0x7f0200de

    invoke-virtual/range {v38 .. v39}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_10

    .line 454
    :pswitch_5
    const/4 v15, 0x0

    .line 455
    goto/16 :goto_11

    .line 457
    :pswitch_6
    const/4 v15, 0x1

    .line 458
    goto/16 :goto_11

    .line 460
    :pswitch_7
    const/4 v15, 0x2

    .line 461
    goto/16 :goto_11

    .line 463
    :pswitch_8
    const/4 v15, 0x3

    goto/16 :goto_11

    .line 468
    :cond_21
    const/4 v14, 0x0

    goto/16 :goto_12

    .line 470
    :cond_22
    const/4 v14, 0x2

    goto/16 :goto_12

    .line 479
    .restart local v19    # "link":Landroid/text/Spannable;
    :cond_23
    iget v0, v7, Lcom/vkontakte/android/api/NotificationEntry;->parentType:I

    move/from16 v38, v0

    const/16 v39, 0x2

    move/from16 v0, v38

    move/from16 v1, v39

    if-ne v0, v1, :cond_24

    .line 480
    const/16 v19, 0x0

    goto/16 :goto_13

    .line 482
    :cond_24
    iget-object v0, v7, Lcom/vkontakte/android/api/NotificationEntry;->parent:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/vkontakte/android/NewsEntry;->displayableRetweetText:Ljava/lang/CharSequence;

    move-object/from16 v38, v0

    if-eqz v38, :cond_25

    iget-object v0, v7, Lcom/vkontakte/android/api/NotificationEntry;->parent:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/vkontakte/android/NewsEntry;->displayableRetweetText:Ljava/lang/CharSequence;

    move-object/from16 v38, v0

    invoke-interface/range {v38 .. v38}, Ljava/lang/CharSequence;->length()I

    move-result v38

    if-lez v38, :cond_25

    .line 483
    invoke-static {}, Landroid/text/Spannable$Factory;->getInstance()Landroid/text/Spannable$Factory;

    move-result-object v38

    iget-object v0, v7, Lcom/vkontakte/android/api/NotificationEntry;->parent:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/vkontakte/android/NewsEntry;->displayableRetweetText:Ljava/lang/CharSequence;

    move-object/from16 v39, v0

    invoke-virtual/range {v38 .. v39}, Landroid/text/Spannable$Factory;->newSpannable(Ljava/lang/CharSequence;)Landroid/text/Spannable;

    move-result-object v19

    goto/16 :goto_13

    .line 484
    :cond_25
    iget-object v0, v7, Lcom/vkontakte/android/api/NotificationEntry;->parent:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/vkontakte/android/NewsEntry;->displayablePreviewText:Ljava/lang/CharSequence;

    move-object/from16 v38, v0

    if-eqz v38, :cond_26

    iget-object v0, v7, Lcom/vkontakte/android/api/NotificationEntry;->parent:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/vkontakte/android/NewsEntry;->displayablePreviewText:Ljava/lang/CharSequence;

    move-object/from16 v38, v0

    invoke-interface/range {v38 .. v38}, Ljava/lang/CharSequence;->length()I

    move-result v38

    if-lez v38, :cond_26

    .line 485
    invoke-static {}, Landroid/text/Spannable$Factory;->getInstance()Landroid/text/Spannable$Factory;

    move-result-object v38

    iget-object v0, v7, Lcom/vkontakte/android/api/NotificationEntry;->parent:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/vkontakte/android/NewsEntry;->displayablePreviewText:Ljava/lang/CharSequence;

    move-object/from16 v39, v0

    invoke-virtual/range {v38 .. v39}, Landroid/text/Spannable$Factory;->newSpannable(Ljava/lang/CharSequence;)Landroid/text/Spannable;

    move-result-object v19

    goto/16 :goto_13

    .line 487
    :cond_26
    invoke-static {}, Landroid/text/Spannable$Factory;->getInstance()Landroid/text/Spannable$Factory;

    move-result-object v38

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/NotificationsFragment$NotificationsAdapter;->this$0:Lcom/vkontakte/android/fragments/NotificationsFragment;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Lcom/vkontakte/android/fragments/NotificationsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v39

    iget-object v0, v7, Lcom/vkontakte/android/api/NotificationEntry;->parent:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    iget v0, v0, Lcom/vkontakte/android/NewsEntry;->time:I

    move/from16 v40, v0

    invoke-static/range {v39 .. v40}, Lcom/vkontakte/android/Global;->langDate(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Landroid/text/Spannable$Factory;->newSpannable(Ljava/lang/CharSequence;)Landroid/text/Spannable;

    move-result-object v19

    goto/16 :goto_13

    .line 493
    .restart local v21    # "n":I
    :cond_27
    const/16 v38, 0x8

    goto/16 :goto_14

    .line 500
    .restart local v11    # "i$":Ljava/util/Iterator;
    .restart local v27    # "p":Lcom/vkontakte/android/UserProfile;
    :cond_28
    iget-object v0, v9, Lcom/vkontakte/android/fragments/NotificationsFragment$ViewHolder;->userPhoto:Landroid/widget/ImageView;

    move-object/from16 v38, v0

    const v39, 0x7f0201ec

    invoke-virtual/range {v38 .. v39}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_15

    .line 503
    :cond_29
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/NotificationsFragment$NotificationsAdapter;->this$0:Lcom/vkontakte/android/fragments/NotificationsFragment;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/vkontakte/android/fragments/NotificationsFragment;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    move-object/from16 v38, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    move-object/from16 v39, v0

    invoke-virtual/range {v38 .. v39}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->isAlreadyLoaded(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_2a

    .line 504
    iget-object v0, v9, Lcom/vkontakte/android/fragments/NotificationsFragment$ViewHolder;->photoStrip:Lcom/vkontakte/android/ui/PhotoStripView;

    move-object/from16 v38, v0

    add-int/lit8 v39, v21, -0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/NotificationsFragment$NotificationsAdapter;->this$0:Lcom/vkontakte/android/fragments/NotificationsFragment;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/vkontakte/android/fragments/NotificationsFragment;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    move-object/from16 v40, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    move-object/from16 v41, v0

    invoke-virtual/range {v40 .. v41}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v40

    invoke-virtual/range {v38 .. v40}, Lcom/vkontakte/android/ui/PhotoStripView;->setBitmap(ILandroid/graphics/Bitmap;)V

    goto/16 :goto_16

    .line 506
    :cond_2a
    iget-object v0, v9, Lcom/vkontakte/android/fragments/NotificationsFragment$ViewHolder;->photoStrip:Lcom/vkontakte/android/ui/PhotoStripView;

    move-object/from16 v38, v0

    add-int/lit8 v39, v21, -0x1

    const/16 v40, 0x0

    invoke-virtual/range {v38 .. v40}, Lcom/vkontakte/android/ui/PhotoStripView;->setBitmap(ILandroid/graphics/Bitmap;)V

    goto/16 :goto_16

    .line 526
    .end local v9    # "holder":Lcom/vkontakte/android/fragments/NotificationsFragment$ViewHolder;
    .end local v11    # "i$":Ljava/util/Iterator;
    .end local v13    # "idx1":I
    .end local v14    # "idx2":I
    .end local v15    # "idx3":I
    .end local v19    # "link":Landroid/text/Spannable;
    .end local v21    # "n":I
    .end local v22    # "nameLength":I
    .end local v25    # "num":I
    .end local v27    # "p":Lcom/vkontakte/android/UserProfile;
    .end local v33    # "title":Landroid/text/SpannableStringBuilder;
    :cond_2b
    iget v0, v7, Lcom/vkontakte/android/api/NotificationEntry;->action:I

    move/from16 v38, v0

    const/16 v39, 0x4

    move/from16 v0, v38

    move/from16 v1, v39

    if-ne v0, v1, :cond_2c

    iget-object v0, v7, Lcom/vkontakte/android/api/NotificationEntry;->ppost:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v38, v0

    if-eqz v38, :cond_2d

    :cond_2c
    iget v0, v7, Lcom/vkontakte/android/api/NotificationEntry;->action:I

    move/from16 v38, v0

    const/16 v39, 0x5

    move/from16 v0, v38

    move/from16 v1, v39

    if-ne v0, v1, :cond_3b

    .line 527
    :cond_2d
    const/16 v26, 0x0

    .line 528
    .local v26, "nv":Lcom/vkontakte/android/NewsItemView;
    if-eqz v35, :cond_2e

    move-object/from16 v0, v35

    check-cast v0, Lcom/vkontakte/android/NewsItemView;

    move-object/from16 v26, v0

    .line 529
    :cond_2e
    if-nez v26, :cond_2f

    .line 530
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/NotificationsFragment$NotificationsAdapter;->this$0:Lcom/vkontakte/android/fragments/NotificationsFragment;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Lcom/vkontakte/android/fragments/NotificationsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v38

    const v39, 0x7f030051

    const/16 v40, 0x0

    invoke-static/range {v38 .. v40}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v26

    .end local v26    # "nv":Lcom/vkontakte/android/NewsItemView;
    check-cast v26, Lcom/vkontakte/android/NewsItemView;

    .line 531
    .restart local v26    # "nv":Lcom/vkontakte/android/NewsItemView;
    new-instance v38, Lcom/vkontakte/android/fragments/NotificationsFragment$NotificationsAdapter$1;

    move-object/from16 v0, v38

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/vkontakte/android/fragments/NotificationsFragment$NotificationsAdapter$1;-><init>(Lcom/vkontakte/android/fragments/NotificationsFragment$NotificationsAdapter;)V

    move-object/from16 v0, v26

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/NewsItemView;->setOnInfoUpdateListener(Lcom/vkontakte/android/NewsItemView$OnInfoUpdateListener;)V

    .line 562
    :cond_2f
    invoke-virtual/range {v26 .. v26}, Lcom/vkontakte/android/NewsItemView;->reset()V

    .line 564
    iget-object v0, v7, Lcom/vkontakte/android/api/NotificationEntry;->parent:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/NotificationsFragment$NotificationsAdapter;->this$0:Lcom/vkontakte/android/fragments/NotificationsFragment;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/vkontakte/android/fragments/NotificationsFragment;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    move-object/from16 v40, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v38

    move/from16 v2, v39

    move-object/from16 v3, v40

    invoke-virtual {v0, v1, v2, v3}, Lcom/vkontakte/android/NewsItemView;->setData(Lcom/vkontakte/android/NewsEntry;ZLcom/vkontakte/android/ui/ListImageLoaderWrapper;)V

    .line 566
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/NotificationsFragment$NotificationsAdapter;->this$0:Lcom/vkontakte/android/fragments/NotificationsFragment;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/vkontakte/android/fragments/NotificationsFragment;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    move-object/from16 v38, v0

    iget-object v0, v7, Lcom/vkontakte/android/api/NotificationEntry;->parent:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/vkontakte/android/NewsEntry;->userPhotoURL:Ljava/lang/String;

    move-object/from16 v39, v0

    invoke-virtual/range {v38 .. v39}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->isAlreadyLoaded(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_32

    .line 567
    const v38, 0x7f0800f1

    move-object/from16 v0, v26

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/NewsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v38

    check-cast v38, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/NotificationsFragment$NotificationsAdapter;->this$0:Lcom/vkontakte/android/fragments/NotificationsFragment;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/vkontakte/android/fragments/NotificationsFragment;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    move-object/from16 v39, v0

    iget-object v0, v7, Lcom/vkontakte/android/api/NotificationEntry;->parent:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/vkontakte/android/NewsEntry;->userPhotoURL:Ljava/lang/String;

    move-object/from16 v40, v0

    invoke-virtual/range {v39 .. v40}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 571
    :goto_17
    iget-object v0, v7, Lcom/vkontakte/android/api/NotificationEntry;->parent:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v38, v0

    const/16 v39, 0x20

    invoke-virtual/range {v38 .. v39}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v38

    if-eqz v38, :cond_30

    .line 572
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/NotificationsFragment$NotificationsAdapter;->this$0:Lcom/vkontakte/android/fragments/NotificationsFragment;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/vkontakte/android/fragments/NotificationsFragment;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    move-object/from16 v38, v0

    iget-object v0, v7, Lcom/vkontakte/android/api/NotificationEntry;->parent:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/vkontakte/android/NewsEntry;->retweetUserPhoto:Ljava/lang/String;

    move-object/from16 v39, v0

    invoke-virtual/range {v38 .. v39}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->isAlreadyLoaded(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_34

    .line 573
    const v38, 0x7f0800ef

    move-object/from16 v0, v26

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/NewsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v38

    check-cast v38, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/NotificationsFragment$NotificationsAdapter;->this$0:Lcom/vkontakte/android/fragments/NotificationsFragment;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/vkontakte/android/fragments/NotificationsFragment;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    move-object/from16 v39, v0

    iget-object v0, v7, Lcom/vkontakte/android/api/NotificationEntry;->parent:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/vkontakte/android/NewsEntry;->retweetUserPhoto:Ljava/lang/String;

    move-object/from16 v40, v0

    invoke-virtual/range {v39 .. v40}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 578
    :cond_30
    :goto_18
    const/4 v10, 0x0

    .line 579
    .local v10, "i":I
    const v38, 0x7f0800f2

    move-object/from16 v0, v26

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/NewsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    .line 580
    .local v5, "ac":Landroid/view/ViewGroup;
    iget-object v0, v7, Lcom/vkontakte/android/api/NotificationEntry;->parent:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/vkontakte/android/NewsEntry;->repostAttachments:Ljava/util/ArrayList;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .restart local v11    # "i$":Ljava/util/Iterator;
    :goto_19
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v38

    if-eqz v38, :cond_37

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vkontakte/android/Attachment;

    .line 581
    .restart local v6    # "att":Lcom/vkontakte/android/Attachment;
    instance-of v0, v6, Lcom/vkontakte/android/ImageAttachment;

    move/from16 v38, v0

    if-eqz v38, :cond_31

    .line 582
    move-object v0, v6

    check-cast v0, Lcom/vkontakte/android/ImageAttachment;

    move-object v12, v0

    .line 583
    .local v12, "ia":Lcom/vkontakte/android/ImageAttachment;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/NotificationsFragment$NotificationsAdapter;->this$0:Lcom/vkontakte/android/fragments/NotificationsFragment;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/vkontakte/android/fragments/NotificationsFragment;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    move-object/from16 v38, v0

    invoke-interface {v12}, Lcom/vkontakte/android/ImageAttachment;->getImageURL()Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->isAlreadyLoaded(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_36

    .line 584
    invoke-virtual {v5, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v38

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/NotificationsFragment$NotificationsAdapter;->this$0:Lcom/vkontakte/android/fragments/NotificationsFragment;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/vkontakte/android/fragments/NotificationsFragment;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    move-object/from16 v39, v0

    invoke-interface {v12}, Lcom/vkontakte/android/ImageAttachment;->getImageURL()Ljava/lang/String;

    move-result-object v40

    invoke-virtual/range {v39 .. v40}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v39

    const/16 v40, 0x1

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    move/from16 v2, v40

    invoke-interface {v12, v0, v1, v2}, Lcom/vkontakte/android/ImageAttachment;->setImage(Landroid/view/View;Landroid/graphics/Bitmap;Z)V

    .line 588
    .end local v12    # "ia":Lcom/vkontakte/android/ImageAttachment;
    :cond_31
    :goto_1a
    add-int/lit8 v10, v10, 0x1

    goto :goto_19

    .line 569
    .end local v5    # "ac":Landroid/view/ViewGroup;
    .end local v6    # "att":Lcom/vkontakte/android/Attachment;
    .end local v10    # "i":I
    .end local v11    # "i$":Ljava/util/Iterator;
    :cond_32
    const v38, 0x7f0800f1

    move-object/from16 v0, v26

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/NewsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v38

    check-cast v38, Landroid/widget/ImageView;

    iget-object v0, v7, Lcom/vkontakte/android/api/NotificationEntry;->parent:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    iget v0, v0, Lcom/vkontakte/android/NewsEntry;->userID:I

    move/from16 v39, v0

    if-lez v39, :cond_33

    const v39, 0x7f0201ec

    :goto_1b
    invoke-virtual/range {v38 .. v39}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_17

    :cond_33
    const v39, 0x7f020074

    goto :goto_1b

    .line 575
    :cond_34
    const v38, 0x7f0800ef

    move-object/from16 v0, v26

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/NewsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v38

    check-cast v38, Landroid/widget/ImageView;

    iget-object v0, v7, Lcom/vkontakte/android/api/NotificationEntry;->parent:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    iget v0, v0, Lcom/vkontakte/android/NewsEntry;->userID:I

    move/from16 v39, v0

    if-lez v39, :cond_35

    const v39, 0x7f0201ec

    :goto_1c
    invoke-virtual/range {v38 .. v39}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_18

    :cond_35
    const v39, 0x7f020074

    goto :goto_1c

    .line 586
    .restart local v5    # "ac":Landroid/view/ViewGroup;
    .restart local v6    # "att":Lcom/vkontakte/android/Attachment;
    .restart local v10    # "i":I
    .restart local v11    # "i$":Ljava/util/Iterator;
    .restart local v12    # "ia":Lcom/vkontakte/android/ImageAttachment;
    :cond_36
    invoke-virtual {v5, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-interface {v12, v0}, Lcom/vkontakte/android/ImageAttachment;->clearImage(Landroid/view/View;)V

    goto :goto_1a

    .line 590
    .end local v6    # "att":Lcom/vkontakte/android/Attachment;
    .end local v12    # "ia":Lcom/vkontakte/android/ImageAttachment;
    :cond_37
    const/4 v10, 0x0

    .line 591
    const v38, 0x7f080085

    move-object/from16 v0, v26

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/NewsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .end local v5    # "ac":Landroid/view/ViewGroup;
    check-cast v5, Landroid/view/ViewGroup;

    .line 592
    .restart local v5    # "ac":Landroid/view/ViewGroup;
    iget-object v0, v7, Lcom/vkontakte/android/api/NotificationEntry;->parent:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_1d
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v38

    if-eqz v38, :cond_3a

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vkontakte/android/Attachment;

    .line 593
    .restart local v6    # "att":Lcom/vkontakte/android/Attachment;
    instance-of v0, v6, Lcom/vkontakte/android/ImageAttachment;

    move/from16 v38, v0

    if-eqz v38, :cond_38

    .line 594
    move-object v0, v6

    check-cast v0, Lcom/vkontakte/android/ImageAttachment;

    move-object v12, v0

    .line 595
    .restart local v12    # "ia":Lcom/vkontakte/android/ImageAttachment;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/NotificationsFragment$NotificationsAdapter;->this$0:Lcom/vkontakte/android/fragments/NotificationsFragment;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/vkontakte/android/fragments/NotificationsFragment;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    move-object/from16 v38, v0

    invoke-interface {v12}, Lcom/vkontakte/android/ImageAttachment;->getImageURL()Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->isAlreadyLoaded(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_39

    .line 596
    invoke-virtual {v5, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v38

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/NotificationsFragment$NotificationsAdapter;->this$0:Lcom/vkontakte/android/fragments/NotificationsFragment;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/vkontakte/android/fragments/NotificationsFragment;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    move-object/from16 v39, v0

    invoke-interface {v12}, Lcom/vkontakte/android/ImageAttachment;->getImageURL()Ljava/lang/String;

    move-result-object v40

    invoke-virtual/range {v39 .. v40}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v39

    const/16 v40, 0x1

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    move/from16 v2, v40

    invoke-interface {v12, v0, v1, v2}, Lcom/vkontakte/android/ImageAttachment;->setImage(Landroid/view/View;Landroid/graphics/Bitmap;Z)V

    .line 600
    .end local v12    # "ia":Lcom/vkontakte/android/ImageAttachment;
    :cond_38
    :goto_1e
    add-int/lit8 v10, v10, 0x1

    goto :goto_1d

    .line 598
    .restart local v12    # "ia":Lcom/vkontakte/android/ImageAttachment;
    :cond_39
    invoke-virtual {v5, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-interface {v12, v0}, Lcom/vkontakte/android/ImageAttachment;->clearImage(Landroid/view/View;)V

    goto :goto_1e

    .line 603
    .end local v6    # "att":Lcom/vkontakte/android/Attachment;
    .end local v12    # "ia":Lcom/vkontakte/android/ImageAttachment;
    :cond_3a
    move-object/from16 v35, v26

    .line 604
    goto/16 :goto_5

    .line 606
    .end local v5    # "ac":Landroid/view/ViewGroup;
    .end local v10    # "i":I
    .end local v11    # "i$":Ljava/util/Iterator;
    .end local v26    # "nv":Lcom/vkontakte/android/NewsItemView;
    :cond_3b
    if-nez v35, :cond_6

    .line 607
    new-instance v36, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/NotificationsFragment$NotificationsAdapter;->this$0:Lcom/vkontakte/android/fragments/NotificationsFragment;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Lcom/vkontakte/android/fragments/NotificationsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v38

    move-object/from16 v0, v36

    move-object/from16 v1, v38

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 608
    .end local v35    # "v":Landroid/view/View;
    .local v36, "v":Landroid/view/View;
    :try_start_2
    move-object/from16 v0, v36

    check-cast v0, Landroid/widget/TextView;

    move-object/from16 v38, v0

    const-string v39, "UNKNOWN!!"

    invoke-virtual/range {v38 .. v39}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-object/from16 v35, v36

    .end local v36    # "v":Landroid/view/View;
    .restart local v35    # "v":Landroid/view/View;
    goto/16 :goto_5

    .line 614
    .restart local v9    # "holder":Lcom/vkontakte/android/fragments/NotificationsFragment$ViewHolder;
    :cond_3c
    const/16 v24, 0x0

    goto/16 :goto_6

    .line 619
    .local v19, "link":Ljava/lang/CharSequence;
    .restart local v24    # "ni":Z
    :pswitch_9
    if-eqz v24, :cond_3d

    :try_start_3
    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v38

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string v39, " "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/NotificationsFragment$NotificationsAdapter;->this$0:Lcom/vkontakte/android/fragments/NotificationsFragment;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Lcom/vkontakte/android/fragments/NotificationsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v39

    const v40, 0x7f0d01c4

    invoke-virtual/range {v39 .. v40}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 620
    :cond_3d
    iget-object v0, v7, Lcom/vkontakte/android/api/NotificationEntry;->parent:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/vkontakte/android/NewsEntry;->displayablePreviewText:Ljava/lang/CharSequence;

    move-object/from16 v19, v0

    .line 621
    goto/16 :goto_7

    .line 623
    :pswitch_a
    if-eqz v24, :cond_8

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v38

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string v39, " "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/NotificationsFragment$NotificationsAdapter;->this$0:Lcom/vkontakte/android/fragments/NotificationsFragment;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Lcom/vkontakte/android/fragments/NotificationsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v39

    const v40, 0x7f0d01c3

    invoke-virtual/range {v39 .. v40}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    goto/16 :goto_7

    .line 626
    :pswitch_b
    if-eqz v24, :cond_3e

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v38

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string v39, " "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/NotificationsFragment$NotificationsAdapter;->this$0:Lcom/vkontakte/android/fragments/NotificationsFragment;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Lcom/vkontakte/android/fragments/NotificationsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v39

    const v40, 0x7f0d01c6

    invoke-virtual/range {v39 .. v40}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 627
    :cond_3e
    iget-object v0, v7, Lcom/vkontakte/android/api/NotificationEntry;->parent:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    invoke-virtual/range {v38 .. v39}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Lcom/vkontakte/android/VideoAttachment;

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/vkontakte/android/VideoAttachment;->title:Ljava/lang/String;

    move-object/from16 v19, v0

    .line 628
    goto/16 :goto_7

    .line 630
    :pswitch_c
    if-eqz v24, :cond_3f

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v38

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string v39, " "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/NotificationsFragment$NotificationsAdapter;->this$0:Lcom/vkontakte/android/fragments/NotificationsFragment;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Lcom/vkontakte/android/fragments/NotificationsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v39

    const v40, 0x7f0d01c2

    invoke-virtual/range {v39 .. v40}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 631
    :cond_3f
    iget-object v0, v7, Lcom/vkontakte/android/api/NotificationEntry;->parent:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/vkontakte/android/NewsEntry;->displayablePreviewText:Ljava/lang/CharSequence;

    move-object/from16 v19, v0

    .line 632
    goto/16 :goto_7

    .line 634
    :pswitch_d
    if-eqz v24, :cond_40

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v38

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string v39, " "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/NotificationsFragment$NotificationsAdapter;->this$0:Lcom/vkontakte/android/fragments/NotificationsFragment;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Lcom/vkontakte/android/fragments/NotificationsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v39

    const v40, 0x7f0d01c5

    invoke-virtual/range {v39 .. v40}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 635
    :cond_40
    iget-object v0, v7, Lcom/vkontakte/android/api/NotificationEntry;->parent:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/vkontakte/android/NewsEntry;->displayablePreviewText:Ljava/lang/CharSequence;

    move-object/from16 v19, v0

    goto/16 :goto_7

    .line 643
    :cond_41
    const-string v38, ""

    goto/16 :goto_8

    .line 644
    :cond_42
    const/16 v38, 0x0

    goto/16 :goto_9

    .line 660
    .restart local v11    # "i$":Ljava/util/Iterator;
    .restart local v28    # "postphoto":Ljava/lang/String;
    :cond_43
    iget-object v0, v9, Lcom/vkontakte/android/fragments/NotificationsFragment$ViewHolder;->postPhoto:Landroid/widget/ImageView;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    invoke-virtual/range {v38 .. v39}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 661
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/NotificationsFragment$NotificationsAdapter;->this$0:Lcom/vkontakte/android/fragments/NotificationsFragment;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/vkontakte/android/fragments/NotificationsFragment;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->isAlreadyLoaded(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_44

    .line 662
    iget-object v0, v9, Lcom/vkontakte/android/fragments/NotificationsFragment$ViewHolder;->postPhoto:Landroid/widget/ImageView;

    move-object/from16 v38, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/NotificationsFragment$NotificationsAdapter;->this$0:Lcom/vkontakte/android/fragments/NotificationsFragment;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/vkontakte/android/fragments/NotificationsFragment;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_a

    .line 664
    :cond_44
    iget-object v0, v9, Lcom/vkontakte/android/fragments/NotificationsFragment$ViewHolder;->postPhoto:Landroid/widget/ImageView;

    move-object/from16 v38, v0

    const v39, 0x7f0201b9

    invoke-virtual/range {v38 .. v39}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_a

    .line 672
    .end local v11    # "i$":Ljava/util/Iterator;
    .end local v19    # "link":Ljava/lang/CharSequence;
    .end local v24    # "ni":Z
    .end local v28    # "postphoto":Ljava/lang/String;
    :cond_45
    iget v0, v7, Lcom/vkontakte/android/api/NotificationEntry;->action:I

    move/from16 v38, v0

    const/16 v39, 0x4

    move/from16 v0, v38

    move/from16 v1, v39

    if-ne v0, v1, :cond_46

    iget-object v0, v7, Lcom/vkontakte/android/api/NotificationEntry;->ppost:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v38, v0

    if-eqz v38, :cond_e

    :cond_46
    iget v0, v7, Lcom/vkontakte/android/api/NotificationEntry;->action:I

    move/from16 v38, v0

    const/16 v39, 0x5

    move/from16 v0, v38

    move/from16 v1, v39

    if-eq v0, v1, :cond_e

    .line 673
    iget-object v0, v9, Lcom/vkontakte/android/fragments/NotificationsFragment$ViewHolder;->link:Landroid/widget/TextView;

    move-object/from16 v38, v0

    if-eqz v38, :cond_47

    iget-object v0, v9, Lcom/vkontakte/android/fragments/NotificationsFragment$ViewHolder;->link:Landroid/widget/TextView;

    move-object/from16 v38, v0

    const/16 v39, 0x8

    invoke-virtual/range {v38 .. v39}, Landroid/widget/TextView;->setVisibility(I)V

    .line 674
    :cond_47
    iget-object v0, v9, Lcom/vkontakte/android/fragments/NotificationsFragment$ViewHolder;->postPhoto:Landroid/widget/ImageView;

    move-object/from16 v38, v0

    if-eqz v38, :cond_48

    iget-object v0, v9, Lcom/vkontakte/android/fragments/NotificationsFragment$ViewHolder;->postPhoto:Landroid/widget/ImageView;

    move-object/from16 v38, v0

    const/16 v39, 0x8

    invoke-virtual/range {v38 .. v39}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 675
    :cond_48
    iget-object v0, v9, Lcom/vkontakte/android/fragments/NotificationsFragment$ViewHolder;->postPhoto:Landroid/widget/ImageView;

    move-object/from16 v38, v0

    if-eqz v38, :cond_e

    .line 676
    iget-object v0, v9, Lcom/vkontakte/android/fragments/NotificationsFragment$ViewHolder;->postPhoto:Landroid/widget/ImageView;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    invoke-virtual/range {v38 .. v39}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 677
    iget-object v0, v9, Lcom/vkontakte/android/fragments/NotificationsFragment$ViewHolder;->info:Landroid/widget/TextView;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    invoke-virtual/range {v38 .. v39}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 678
    iget-object v0, v9, Lcom/vkontakte/android/fragments/NotificationsFragment$ViewHolder;->link:Landroid/widget/TextView;

    move-object/from16 v38, v0

    if-eqz v38, :cond_e

    .line 679
    iget-object v0, v9, Lcom/vkontakte/android/fragments/NotificationsFragment$ViewHolder;->link:Landroid/widget/TextView;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    invoke-virtual/range {v38 .. v39}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_b

    .line 699
    .restart local v17    # "iv":Landroid/widget/ImageView;
    :cond_49
    const/16 v38, 0x1f4

    move-object/from16 v0, v35

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    .end local v17    # "iv":Landroid/widget/ImageView;
    check-cast v17, Landroid/widget/ImageView;

    .restart local v17    # "iv":Landroid/widget/ImageView;
    goto/16 :goto_c

    .line 701
    :cond_4a
    const v38, 0x7f02014b

    goto/16 :goto_d

    .line 705
    .end local v17    # "iv":Landroid/widget/ImageView;
    :cond_4b
    const/16 v29, 0x0

    goto/16 :goto_e

    .line 706
    .restart local v29    # "prevIsDivider":Z
    :cond_4c
    const/16 v23, 0x0

    goto/16 :goto_f

    .line 709
    .restart local v23    # "nextIsDivider":Z
    :cond_4d
    if-eqz p1, :cond_4e

    if-eqz v29, :cond_4f

    .line 710
    :cond_4e
    const v38, 0x7f020043

    move-object/from16 v0, v35

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_2

    .line 711
    :cond_4f
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/fragments/NotificationsFragment$NotificationsAdapter;->getCount()I

    move-result v38

    add-int/lit8 v38, v38, -0x1

    move/from16 v0, p1

    move/from16 v1, v38

    if-eq v0, v1, :cond_50

    if-eqz v23, :cond_51

    .line 712
    :cond_50
    const v38, 0x7f02003f

    move-object/from16 v0, v35

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_2

    .line 714
    :cond_51
    const v38, 0x7f020041

    move-object/from16 v0, v35

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_2

    .line 716
    .end local v9    # "holder":Lcom/vkontakte/android/fragments/NotificationsFragment$ViewHolder;
    .end local v23    # "nextIsDivider":Z
    .end local v29    # "prevIsDivider":Z
    .end local v35    # "v":Landroid/view/View;
    .restart local v36    # "v":Landroid/view/View;
    :catch_1
    move-exception v37

    move-object/from16 v35, v36

    .end local v36    # "v":Landroid/view/View;
    .restart local v35    # "v":Landroid/view/View;
    goto/16 :goto_1

    .line 617
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch

    .line 434
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch

    .line 452
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
    .line 321
    const/16 v0, 0xa

    return v0
.end method

.method public isEnabled(I)Z
    .locals 2
    .param p1, "pos"    # I

    .prologue
    .line 346
    iget-object v0, p0, Lcom/vkontakte/android/fragments/NotificationsFragment$NotificationsAdapter;->this$0:Lcom/vkontakte/android/fragments/NotificationsFragment;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/NotificationsFragment;->data:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/api/NotificationEntry;

    iget v0, v0, Lcom/vkontakte/android/api/NotificationEntry;->feedbackType:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/fragments/NotificationsFragment$NotificationsAdapter;->this$0:Lcom/vkontakte/android/fragments/NotificationsFragment;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/NotificationsFragment;->data:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

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
