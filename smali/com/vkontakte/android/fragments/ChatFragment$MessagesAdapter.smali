.class Lcom/vkontakte/android/fragments/ChatFragment$MessagesAdapter;
.super Landroid/widget/BaseAdapter;
.source "ChatFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/fragments/ChatFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MessagesAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/ChatFragment;


# direct methods
.method private constructor <init>(Lcom/vkontakte/android/fragments/ChatFragment;)V
    .locals 0

    .prologue
    .line 2422
    iput-object p1, p0, Lcom/vkontakte/android/fragments/ChatFragment$MessagesAdapter;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkontakte/android/fragments/ChatFragment;Lcom/vkontakte/android/fragments/ChatFragment$MessagesAdapter;)V
    .locals 0

    .prologue
    .line 2422
    invoke-direct {p0, p1}, Lcom/vkontakte/android/fragments/ChatFragment$MessagesAdapter;-><init>(Lcom/vkontakte/android/fragments/ChatFragment;)V

    return-void
.end method

.method static synthetic access$1(Lcom/vkontakte/android/fragments/ChatFragment$MessagesAdapter;)Lcom/vkontakte/android/fragments/ChatFragment;
    .locals 1

    .prologue
    .line 2422
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment$MessagesAdapter;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    return-object v0
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 2425
    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 2435
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment$MessagesAdapter;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/ChatFragment;->access$1(Lcom/vkontakte/android/fragments/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 2440
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 2445
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 4
    .param p1, "position"    # I

    .prologue
    const/4 v1, 0x5

    .line 2455
    iget-object v2, p0, Lcom/vkontakte/android/fragments/ChatFragment$MessagesAdapter;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/ChatFragment;->access$1(Lcom/vkontakte/android/fragments/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;

    .line 2456
    .local v0, "item":Lcom/vkontakte/android/fragments/ChatFragment$ListItem;
    iget v2, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->type:I

    if-ne v2, v1, :cond_1

    const/4 v1, 0x4

    .line 2461
    :cond_0
    :goto_0
    return v1

    .line 2457
    :cond_1
    iget v2, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->type:I

    const/4 v3, 0x6

    if-eq v2, v3, :cond_0

    .line 2458
    iget v1, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->fwdLevel:I

    if-lez v1, :cond_3

    .line 2459
    iget-boolean v1, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->isOut:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    goto :goto_0

    :cond_2
    const/4 v1, 0x3

    goto :goto_0

    .line 2461
    :cond_3
    iget-object v1, p0, Lcom/vkontakte/android/fragments/ChatFragment$MessagesAdapter;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/ChatFragment;->access$1(Lcom/vkontakte/android/fragments/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;

    iget-boolean v1, v1, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->isOut:Z

    if-eqz v1, :cond_4

    const/4 v1, 0x0

    goto :goto_0

    :cond_4
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 36
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 2466
    move-object/from16 v29, p2

    .line 2467
    .local v29, "view":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment$MessagesAdapter;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/vkontakte/android/fragments/ChatFragment;->access$1(Lcom/vkontakte/android/fragments/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;

    .line 2468
    .local v18, "item":Lcom/vkontakte/android/fragments/ChatFragment$ListItem;
    if-nez v29, :cond_0

    .line 2469
    move-object/from16 v0, v18

    iget v0, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->type:I

    move/from16 v32, v0

    const/16 v33, 0x5

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_2

    .line 2470
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment$MessagesAdapter;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/vkontakte/android/fragments/ChatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v32

    const v33, 0x7f030056

    const/16 v34, 0x0

    invoke-static/range {v32 .. v34}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v29

    .line 2472
    const v32, 0x7f0900ee

    move-object/from16 v0, v29

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v32

    check-cast v32, Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 2488
    :cond_0
    :goto_0
    move-object/from16 v0, v18

    iget v0, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->type:I

    move/from16 v32, v0

    const/16 v33, 0x6

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_8

    .line 2727
    :cond_1
    :goto_1
    return-object v29

    .line 2473
    :cond_2
    move-object/from16 v0, v18

    iget v0, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->type:I

    move/from16 v32, v0

    const/16 v33, 0x6

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_3

    .line 2474
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment$MessagesAdapter;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/vkontakte/android/fragments/ChatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v32

    const v33, 0x7f030031

    const/16 v34, 0x0

    invoke-static/range {v32 .. v34}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v29

    .line 2476
    goto :goto_0

    .line 2477
    :cond_3
    move-object/from16 v0, v18

    iget v0, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->fwdLevel:I

    move/from16 v32, v0

    if-nez v32, :cond_5

    .line 2478
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment$MessagesAdapter;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/vkontakte/android/fragments/ChatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v33

    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->isOut:Z

    move/from16 v32, v0

    if-eqz v32, :cond_4

    const v32, 0x7f030054

    :goto_2
    const/16 v34, 0x0

    move-object/from16 v0, v33

    move/from16 v1, v32

    move-object/from16 v2, v34

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v29

    .line 2481
    :goto_3
    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->isOut:Z

    move/from16 v32, v0

    if-nez v32, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment$MessagesAdapter;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/vkontakte/android/fragments/ChatFragment;->access$4(Lcom/vkontakte/android/fragments/ChatFragment;)I

    move-result v32

    const v33, 0x77359400

    move/from16 v0, v32

    move/from16 v1, v33

    if-ge v0, v1, :cond_7

    .line 2482
    const v32, 0x7f0900f0

    move-object/from16 v0, v29

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v32

    const/16 v33, 0x8

    invoke-virtual/range {v32 .. v33}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 2478
    :cond_4
    const v32, 0x7f030052

    goto :goto_2

    .line 2480
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment$MessagesAdapter;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/vkontakte/android/fragments/ChatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v33

    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->isOut:Z

    move/from16 v32, v0

    if-eqz v32, :cond_6

    const v32, 0x7f030055

    :goto_4
    const/16 v34, 0x0

    move-object/from16 v0, v33

    move/from16 v1, v32

    move-object/from16 v2, v34

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v29

    goto :goto_3

    :cond_6
    const v32, 0x7f030053

    goto :goto_4

    .line 2483
    :cond_7
    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->isOut:Z

    move/from16 v32, v0

    if-nez v32, :cond_0

    .line 2484
    const v32, 0x7f0900f0

    move-object/from16 v0, v29

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment$MessagesAdapter;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Lcom/vkontakte/android/fragments/ChatFragment;->access$37(Lcom/vkontakte/android/fragments/ChatFragment;)Landroid/view/View$OnClickListener;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 2492
    :cond_8
    const v32, 0x7f0900ef

    move-object/from16 v0, v29

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    .line 2493
    .local v7, "att":Landroid/view/ViewGroup;
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_5
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v32

    move/from16 v0, v32

    if-lt v14, v0, :cond_c

    .line 2499
    const/4 v13, 0x0

    .line 2500
    .local v13, "hasPhotos":Z
    invoke-virtual {v7}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 2501
    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    .line 2502
    .local v24, "photos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Photo;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 2503
    .local v8, "audios":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/AudioFile;>;"
    const/16 v22, 0x0

    .line 2504
    .local v22, "ph":I
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->attachments:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v33

    :cond_9
    :goto_6
    invoke-interface/range {v33 .. v33}, Ljava/util/Iterator;->hasNext()Z

    move-result v32

    if-nez v32, :cond_e

    .line 2541
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v32

    if-lez v32, :cond_b

    .line 2542
    const/4 v14, 0x0

    .line 2543
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->attachments:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v34

    :cond_a
    :goto_7
    invoke-interface/range {v34 .. v34}, Ljava/util/Iterator;->hasNext()Z

    move-result v32

    if-nez v32, :cond_12

    .line 2552
    :cond_b
    const/16 v17, 0x0

    .line 2553
    .local v17, "isSticker":Z
    const/4 v15, 0x0

    .line 2554
    .local v15, "idx":I
    const/16 v26, 0x0

    .line 2555
    .local v26, "stickerView":Landroid/view/View;
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->attachments:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v33

    :goto_8
    invoke-interface/range {v33 .. v33}, Ljava/util/Iterator;->hasNext()Z

    move-result v32

    if-nez v32, :cond_13

    .line 2568
    move-object/from16 v0, v18

    iget v0, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->type:I

    move/from16 v32, v0

    const/16 v33, 0x5

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_18

    .line 2569
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->text:Ljava/lang/CharSequence;

    move-object/from16 v32, v0

    if-eqz v32, :cond_16

    .line 2570
    const v32, 0x7f0900ee

    move-object/from16 v0, v29

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v32

    check-cast v32, Landroid/widget/TextView;

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->text:Ljava/lang/CharSequence;

    move-object/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2574
    :goto_9
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->attachments:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Ljava/util/ArrayList;->size()I

    move-result v32

    if-lez v32, :cond_17

    const/16 v32, 0x0

    :goto_a
    move/from16 v0, v32

    invoke-virtual {v7, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2575
    const/4 v14, 0x0

    :goto_b
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v32

    move/from16 v0, v32

    if-ge v14, v0, :cond_1

    .line 2576
    invoke-virtual {v7, v14}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v19

    check-cast v19, Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;

    .line 2577
    .local v19, "lp":Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;
    const/16 v32, 0x0

    move/from16 v0, v32

    move-object/from16 v1, v19

    iput v0, v1, Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;->vertical_spacing:I

    .line 2578
    invoke-virtual {v7, v14}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2575
    add-int/lit8 v14, v14, 0x1

    goto :goto_b

    .line 2494
    .end local v8    # "audios":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/AudioFile;>;"
    .end local v13    # "hasPhotos":Z
    .end local v15    # "idx":I
    .end local v17    # "isSticker":Z
    .end local v19    # "lp":Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;
    .end local v22    # "ph":I
    .end local v24    # "photos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Photo;>;"
    .end local v26    # "stickerView":Landroid/view/View;
    :cond_c
    invoke-virtual {v7, v14}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 2495
    .local v9, "av":Landroid/view/View;
    invoke-virtual {v9}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v32

    if-eqz v32, :cond_d

    invoke-virtual {v9}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v32

    move-object/from16 v0, v32

    instance-of v0, v0, Ljava/lang/String;

    move/from16 v32, v0

    if-eqz v32, :cond_d

    .line 2496
    invoke-virtual {v9}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-static {v9, v0}, Lcom/vkontakte/android/Attachment;->reuseView(Landroid/view/View;Ljava/lang/String;)V

    .line 2493
    :cond_d
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_5

    .line 2504
    .end local v9    # "av":Landroid/view/View;
    .restart local v8    # "audios":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/AudioFile;>;"
    .restart local v13    # "hasPhotos":Z
    .restart local v22    # "ph":I
    .restart local v24    # "photos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Photo;>;"
    :cond_e
    invoke-interface/range {v33 .. v33}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vkontakte/android/Attachment;

    .line 2505
    .local v5, "a":Lcom/vkontakte/android/Attachment;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment$MessagesAdapter;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/vkontakte/android/fragments/ChatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v5, v0}, Lcom/vkontakte/android/Attachment;->getFullView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v28

    .line 2506
    .local v28, "v":Landroid/view/View;
    move-object/from16 v0, v28

    invoke-virtual {v7, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 2507
    instance-of v0, v5, Lcom/vkontakte/android/ThumbAttachment;

    move/from16 v32, v0

    if-eqz v32, :cond_f

    const/4 v13, 0x1

    .line 2508
    :cond_f
    instance-of v0, v5, Lcom/vkontakte/android/PhotoAttachment;

    move/from16 v32, v0

    if-eqz v32, :cond_10

    instance-of v0, v5, Lcom/vkontakte/android/AlbumAttachment;

    move/from16 v32, v0

    if-nez v32, :cond_10

    .line 2509
    move/from16 v23, v22

    .line 2510
    .local v23, "photoIdx":I
    add-int/lit8 v22, v22, 0x1

    .line 2511
    new-instance v34, Lcom/vkontakte/android/Photo;

    move-object/from16 v32, v5

    check-cast v32, Lcom/vkontakte/android/PhotoAttachment;

    move-object/from16 v0, v34

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Lcom/vkontakte/android/Photo;-><init>(Lcom/vkontakte/android/PhotoAttachment;)V

    move-object/from16 v0, v24

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2512
    new-instance v32, Lcom/vkontakte/android/fragments/ChatFragment$MessagesAdapter$1;

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    move-object/from16 v2, v24

    move/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Lcom/vkontakte/android/fragments/ChatFragment$MessagesAdapter$1;-><init>(Lcom/vkontakte/android/fragments/ChatFragment$MessagesAdapter;Ljava/util/ArrayList;I)V

    move-object/from16 v0, v28

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2534
    .end local v23    # "photoIdx":I
    :cond_10
    instance-of v0, v5, Lcom/vkontakte/android/AudioAttachment;

    move/from16 v32, v0

    if-eqz v32, :cond_11

    .line 2535
    new-instance v34, Lcom/vkontakte/android/AudioFile;

    move-object/from16 v32, v5

    check-cast v32, Lcom/vkontakte/android/AudioAttachment;

    move-object/from16 v0, v34

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Lcom/vkontakte/android/AudioFile;-><init>(Lcom/vkontakte/android/AudioAttachment;)V

    move-object/from16 v0, v34

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2537
    :cond_11
    instance-of v0, v5, Lcom/vkontakte/android/VideoAttachment;

    move/from16 v32, v0

    if-eqz v32, :cond_9

    .line 2538
    check-cast v5, Lcom/vkontakte/android/VideoAttachment;

    .end local v5    # "a":Lcom/vkontakte/android/Attachment;
    const-string v32, "messages"

    move-object/from16 v0, v32

    iput-object v0, v5, Lcom/vkontakte/android/VideoAttachment;->referer:Ljava/lang/String;

    goto/16 :goto_6

    .line 2543
    .end local v28    # "v":Landroid/view/View;
    :cond_12
    invoke-interface/range {v34 .. v34}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vkontakte/android/Attachment;

    .line 2544
    .restart local v5    # "a":Lcom/vkontakte/android/Attachment;
    instance-of v0, v5, Lcom/vkontakte/android/AudioAttachment;

    move/from16 v32, v0

    if-eqz v32, :cond_a

    move-object/from16 v32, v5

    .line 2545
    check-cast v32, Lcom/vkontakte/android/AudioAttachment;

    move-object/from16 v0, v32

    iput v14, v0, Lcom/vkontakte/android/AudioAttachment;->playlistPos:I

    move-object/from16 v32, v5

    .line 2546
    check-cast v32, Lcom/vkontakte/android/AudioAttachment;

    const/16 v33, 0x0

    move/from16 v0, v33

    new-array v0, v0, [Lcom/vkontakte/android/AudioFile;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v33

    check-cast v33, [Lcom/vkontakte/android/AudioFile;

    move-object/from16 v0, v33

    move-object/from16 v1, v32

    iput-object v0, v1, Lcom/vkontakte/android/AudioAttachment;->playlist:[Lcom/vkontakte/android/AudioFile;

    .line 2547
    check-cast v5, Lcom/vkontakte/android/AudioAttachment;

    .end local v5    # "a":Lcom/vkontakte/android/Attachment;
    const-string v32, "messages"

    move-object/from16 v0, v32

    iput-object v0, v5, Lcom/vkontakte/android/AudioAttachment;->referer:Ljava/lang/String;

    .line 2548
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_7

    .line 2555
    .restart local v15    # "idx":I
    .restart local v17    # "isSticker":Z
    .restart local v26    # "stickerView":Landroid/view/View;
    :cond_13
    invoke-interface/range {v33 .. v33}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vkontakte/android/Attachment;

    .line 2556
    .restart local v5    # "a":Lcom/vkontakte/android/Attachment;
    instance-of v0, v5, Lcom/vkontakte/android/ImageAttachment;

    move/from16 v32, v0

    if-eqz v32, :cond_14

    .line 2557
    const v32, 0x7f0900ef

    move-object/from16 v0, v29

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v32

    check-cast v32, Landroid/view/ViewGroup;

    move-object/from16 v0, v32

    invoke-virtual {v0, v15}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .restart local v9    # "av":Landroid/view/View;
    move-object/from16 v32, v5

    .line 2558
    check-cast v32, Lcom/vkontakte/android/ImageAttachment;

    invoke-interface/range {v32 .. v32}, Lcom/vkontakte/android/ImageAttachment;->getImageURL()Ljava/lang/String;

    move-result-object v27

    .line 2559
    .local v27, "url":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment$MessagesAdapter;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/vkontakte/android/fragments/ChatFragment;->access$38(Lcom/vkontakte/android/fragments/ChatFragment;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->isAlreadyLoaded(Ljava/lang/String;)Z

    move-result v32

    if-eqz v32, :cond_15

    move-object/from16 v32, v5

    .line 2560
    check-cast v32, Lcom/vkontakte/android/ImageAttachment;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment$MessagesAdapter;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    move-object/from16 v34, v0

    invoke-static/range {v34 .. v34}, Lcom/vkontakte/android/fragments/ChatFragment;->access$38(Lcom/vkontakte/android/fragments/ChatFragment;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v34

    const/16 v35, 0x1

    move-object/from16 v0, v32

    move-object/from16 v1, v34

    move/from16 v2, v35

    invoke-interface {v0, v9, v1, v2}, Lcom/vkontakte/android/ImageAttachment;->setImage(Landroid/view/View;Landroid/graphics/Bitmap;Z)V

    .line 2563
    :goto_c
    instance-of v0, v5, Lcom/vkontakte/android/StickerAttachment;

    move/from16 v32, v0

    if-eqz v32, :cond_14

    move-object/from16 v26, v9

    .line 2565
    .end local v9    # "av":Landroid/view/View;
    .end local v27    # "url":Ljava/lang/String;
    :cond_14
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_8

    .restart local v9    # "av":Landroid/view/View;
    .restart local v27    # "url":Ljava/lang/String;
    :cond_15
    move-object/from16 v32, v5

    .line 2562
    check-cast v32, Lcom/vkontakte/android/ImageAttachment;

    move-object/from16 v0, v32

    invoke-interface {v0, v9}, Lcom/vkontakte/android/ImageAttachment;->clearImage(Landroid/view/View;)V

    goto :goto_c

    .line 2572
    .end local v5    # "a":Lcom/vkontakte/android/Attachment;
    .end local v9    # "av":Landroid/view/View;
    .end local v27    # "url":Ljava/lang/String;
    :cond_16
    const v32, 0x7f0900ee

    move-object/from16 v0, v29

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v32

    check-cast v32, Landroid/widget/TextView;

    move-object/from16 v0, v18

    iget v0, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->time:I

    move/from16 v33, v0

    invoke-static/range {v33 .. v33}, Lcom/vkontakte/android/Global;->langDateDay(I)Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_9

    .line 2574
    :cond_17
    const/16 v32, 0x8

    goto/16 :goto_a

    .line 2581
    :cond_18
    const v32, 0x7f0900ee

    move-object/from16 v0, v29

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v32

    check-cast v32, Landroid/widget/TextView;

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->text:Ljava/lang/CharSequence;

    move-object/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2582
    const v32, 0x7f0900ee

    move-object/from16 v0, v29

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v32

    check-cast v32, Landroid/widget/TextView;

    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->hasLinks:Z

    move/from16 v33, v0

    if-eqz v33, :cond_20

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v33

    :goto_d
    invoke-virtual/range {v32 .. v33}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 2583
    const v32, 0x7f0900ee

    move-object/from16 v0, v29

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v32

    const/16 v33, 0x0

    invoke-virtual/range {v32 .. v33}, Landroid/view/View;->setFocusable(Z)V

    .line 2584
    const v32, 0x7f0900f2

    move-object/from16 v0, v29

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v32

    check-cast v32, Landroid/widget/TextView;

    move-object/from16 v0, v18

    iget v0, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->time:I

    move/from16 v33, v0

    invoke-static/range {v33 .. v33}, Lcom/vkontakte/android/Global;->time(I)Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2585
    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->isOut:Z

    move/from16 v32, v0

    if-eqz v32, :cond_24

    .line 2586
    move-object/from16 v0, v18

    iget v0, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->time:I

    move/from16 v32, v0

    if-lez v32, :cond_23

    .line 2587
    move-object/from16 v0, v18

    iget v0, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->msgId:I

    move/from16 v32, v0

    if-gez v32, :cond_21

    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->isFailed:Z

    move/from16 v32, v0

    if-nez v32, :cond_21

    .line 2588
    const v32, 0x7f0900f2

    move-object/from16 v0, v29

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v32

    const/16 v33, 0x8

    invoke-virtual/range {v32 .. v33}, Landroid/view/View;->setVisibility(I)V

    .line 2589
    const v32, 0x7f0900f4

    move-object/from16 v0, v29

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v32

    const/16 v33, 0x8

    invoke-virtual/range {v32 .. v33}, Landroid/view/View;->setVisibility(I)V

    .line 2590
    const v32, 0x7f0900f3

    move-object/from16 v0, v29

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v32

    const/16 v33, 0x0

    invoke-virtual/range {v32 .. v33}, Landroid/view/View;->setVisibility(I)V

    .line 2608
    :goto_e
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 2609
    .local v6, "ap":Landroid/view/ViewGroup$MarginLayoutParams;
    if-eqz v13, :cond_27

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->text:Ljava/lang/CharSequence;

    move-object/from16 v32, v0

    invoke-interface/range {v32 .. v32}, Ljava/lang/CharSequence;->length()I

    move-result v32

    if-nez v32, :cond_27

    const/16 v32, 0x0

    :goto_f
    move/from16 v0, v32

    iput v0, v6, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 2612
    const v32, 0x7f0900ee

    move-object/from16 v0, v29

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v33

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->text:Ljava/lang/CharSequence;

    move-object/from16 v32, v0

    invoke-interface/range {v32 .. v32}, Ljava/lang/CharSequence;->length()I

    move-result v32

    if-lez v32, :cond_28

    const/16 v32, 0x0

    :goto_10
    move-object/from16 v0, v33

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2613
    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->isOut:Z

    move/from16 v32, v0

    if-nez v32, :cond_19

    const v32, 0x7f0900f0

    move-object/from16 v0, v29

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v32

    move-object/from16 v0, v18

    iget v0, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->msgId:I

    move/from16 v33, v0

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 2615
    :cond_19
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->images:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v33

    :goto_11
    invoke-interface/range {v33 .. v33}, Ljava/util/Iterator;->hasNext()Z

    move-result v32

    if-nez v32, :cond_29

    .line 2623
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->attachments:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Ljava/util/ArrayList;->size()I

    move-result v32

    const/16 v33, 0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_1a

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->attachments:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    invoke-virtual/range {v32 .. v33}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v32

    move-object/from16 v0, v32

    instance-of v0, v0, Lcom/vkontakte/android/StickerAttachment;

    move/from16 v32, v0

    if-eqz v32, :cond_1a

    .line 2624
    const/16 v17, 0x1

    .line 2625
    :cond_1a
    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->readState:Z

    move/from16 v32, v0

    if-eqz v32, :cond_2b

    const/16 v32, 0x0

    :goto_12
    move-object/from16 v0, v29

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 2626
    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->isOut:Z

    move/from16 v32, v0

    if-eqz v32, :cond_33

    .line 2627
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment$MessagesAdapter;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    move-object/from16 v32, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->msgId:I

    move/from16 v33, v0

    invoke-static/range {v32 .. v33}, Lcom/vkontakte/android/fragments/ChatFragment;->access$39(Lcom/vkontakte/android/fragments/ChatFragment;I)Z

    move-result v32

    if-eqz v32, :cond_2c

    const v10, 0x7f0200a5

    .line 2628
    .local v10, "bgRes":I
    :goto_13
    const/high16 v32, 0x40800000    # 4.0f

    invoke-static/range {v32 .. v32}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v21

    .local v21, "padTop":I
    const/high16 v32, 0x40800000    # 4.0f

    invoke-static/range {v32 .. v32}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v20

    .line 2629
    .local v20, "padBtm":I
    const/16 v31, -0x1

    .line 2630
    .local v31, "wrapPadBtm":I
    move-object/from16 v0, v18

    iget v0, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->type:I

    move/from16 v32, v0

    packed-switch v32, :pswitch_data_0

    .line 2645
    :goto_14
    const v32, 0x7f0900f1

    move-object/from16 v0, v29

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v30

    .line 2646
    .local v30, "wrap":Landroid/view/View;
    move-object/from16 v0, v30

    invoke-virtual {v0, v10}, Landroid/view/View;->setBackgroundResource(I)V

    .line 2647
    invoke-virtual/range {v30 .. v30}, Landroid/view/View;->getPaddingLeft()I

    move-result v33

    invoke-virtual/range {v30 .. v30}, Landroid/view/View;->getPaddingTop()I

    move-result v34

    invoke-virtual/range {v30 .. v30}, Landroid/view/View;->getPaddingRight()I

    move-result v35

    const/16 v32, -0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_31

    invoke-virtual/range {v30 .. v30}, Landroid/view/View;->getPaddingBottom()I

    move-result v32

    :goto_15
    move-object/from16 v0, v30

    move/from16 v1, v33

    move/from16 v2, v34

    move/from16 v3, v35

    move/from16 v4, v32

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 2648
    const/16 v32, 0x0

    const/16 v33, 0x0

    move-object/from16 v0, v29

    move/from16 v1, v32

    move/from16 v2, v21

    move/from16 v3, v33

    move/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 2649
    const v32, 0x7f0900f1

    move-object/from16 v0, v29

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v19

    check-cast v19, Landroid/widget/LinearLayout$LayoutParams;

    .line 2650
    .local v19, "lp":Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, v18

    iget v0, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->type:I

    move/from16 v32, v0

    const/16 v33, 0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-eq v0, v1, :cond_32

    const/16 v32, 0x1

    :goto_16
    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    move/from16 v0, v32

    move-object/from16 v1, v19

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 2651
    const v32, 0x7f0900f1

    move-object/from16 v0, v29

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2679
    :goto_17
    if-eqz v17, :cond_1b

    move-object/from16 v0, v18

    iget v0, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->fwdLevel:I

    move/from16 v32, v0

    if-nez v32, :cond_1b

    .line 2680
    const v32, 0x7f0900f1

    move-object/from16 v0, v29

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v32

    new-instance v33, Landroid/graphics/drawable/ColorDrawable;

    const/16 v34, 0x0

    invoke-direct/range {v33 .. v34}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual/range {v32 .. v33}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2681
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment$MessagesAdapter;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    move-object/from16 v32, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->msgId:I

    move/from16 v33, v0

    invoke-static/range {v32 .. v33}, Lcom/vkontakte/android/fragments/ChatFragment;->access$39(Lcom/vkontakte/android/fragments/ChatFragment;I)Z

    move-result v32

    if-eqz v32, :cond_3b

    .line 2682
    check-cast v26, Landroid/widget/ImageView;

    .end local v26    # "stickerView":Landroid/view/View;
    const/high16 v32, 0x33000000

    move-object/from16 v0, v26

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 2688
    :cond_1b
    :goto_18
    move-object/from16 v0, v18

    iget v0, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->fwdLevel:I

    move/from16 v32, v0

    if-lez v32, :cond_1d

    .line 2689
    const v32, 0x7f0900ec

    move-object/from16 v0, v29

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v32

    check-cast v32, Landroid/widget/TextView;

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->fwdName:Ljava/lang/String;

    move-object/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2690
    const v32, 0x7f0900ed

    move-object/from16 v0, v29

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v32

    check-cast v32, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment$MessagesAdapter;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lcom/vkontakte/android/fragments/ChatFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v33

    move-object/from16 v0, v18

    iget v0, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->fwdTime:I

    move/from16 v34, v0

    invoke-static/range {v33 .. v34}, Lcom/vkontakte/android/Global;->langDate(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2691
    const v32, 0x7f0900ea

    move-object/from16 v0, v29

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v32

    check-cast v32, Lcom/vkontakte/android/ui/FwdMessageLevelView;

    move-object/from16 v0, v18

    iget v0, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->fwdLevel:I

    move/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Lcom/vkontakte/android/ui/FwdMessageLevelView;->setLevel(I)V

    .line 2692
    const v32, 0x7f0900e9

    move-object/from16 v0, v29

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v32

    move-object/from16 v0, v18

    iget v0, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->fwdUid:I

    move/from16 v33, v0

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 2693
    const v32, 0x7f0900e9

    move-object/from16 v0, v29

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment$MessagesAdapter;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Lcom/vkontakte/android/fragments/ChatFragment;->access$40(Lcom/vkontakte/android/fragments/ChatFragment;)Landroid/view/View$OnClickListener;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2694
    const v32, 0x7f0900ea

    move-object/from16 v0, v29

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroid/widget/RelativeLayout$LayoutParams;

    .line 2695
    .local v11, "fp":Landroid/widget/RelativeLayout$LayoutParams;
    move-object/from16 v0, v18

    iget v0, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->type:I

    move/from16 v32, v0

    const/16 v33, 0x4

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_3c

    .line 2696
    const/16 v32, 0x0

    move/from16 v0, v32

    iput v0, v11, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 2697
    const/high16 v32, 0x40400000    # 3.0f

    invoke-static/range {v32 .. v32}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v32

    move/from16 v0, v32

    iput v0, v11, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 2714
    :cond_1c
    :goto_19
    const v32, 0x7f0900ea

    move-object/from16 v0, v29

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v11}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2715
    const v32, 0x7f0900e9

    move-object/from16 v0, v29

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Landroid/widget/RelativeLayout$LayoutParams;

    .line 2716
    .local v12, "fp2":Landroid/widget/RelativeLayout$LayoutParams;
    iget v0, v11, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    move/from16 v32, v0

    move/from16 v0, v32

    iput v0, v12, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 2717
    const v32, 0x7f0900e9

    move-object/from16 v0, v29

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v12}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2719
    .end local v11    # "fp":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v12    # "fp2":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_1d
    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->isOut:Z

    move/from16 v32, v0

    if-nez v32, :cond_1f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment$MessagesAdapter;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/vkontakte/android/fragments/ChatFragment;->access$4(Lcom/vkontakte/android/fragments/ChatFragment;)I

    move-result v32

    const v33, 0x77359400

    move/from16 v0, v32

    move/from16 v1, v33

    if-le v0, v1, :cond_1f

    .line 2720
    const v32, 0x7f0900f0

    move-object/from16 v0, v29

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v33

    move-object/from16 v0, v18

    iget v0, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->type:I

    move/from16 v32, v0

    const/16 v34, 0x4

    move/from16 v0, v32

    move/from16 v1, v34

    if-eq v0, v1, :cond_1e

    move-object/from16 v0, v18

    iget v0, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->type:I

    move/from16 v32, v0

    const/16 v34, 0x1

    move/from16 v0, v32

    move/from16 v1, v34

    if-ne v0, v1, :cond_40

    :cond_1e
    const/16 v32, 0x0

    :goto_1a
    move-object/from16 v0, v33

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2722
    :cond_1f
    const v32, 0x7f0900f1

    move-object/from16 v0, v29

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v32

    if-eqz v32, :cond_1

    .line 2723
    const v32, 0x7f0900f1

    move-object/from16 v0, v29

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment$MessagesAdapter;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/vkontakte/android/fragments/ChatFragment;->access$41(Lcom/vkontakte/android/fragments/ChatFragment;)Lcom/actionbarsherlock/view/ActionMode;

    move-result-object v32

    if-nez v32, :cond_41

    const/16 v32, 0x1

    :goto_1b
    move-object/from16 v0, v33

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    goto/16 :goto_1

    .line 2582
    .end local v6    # "ap":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v10    # "bgRes":I
    .end local v19    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v20    # "padBtm":I
    .end local v21    # "padTop":I
    .end local v30    # "wrap":Landroid/view/View;
    .end local v31    # "wrapPadBtm":I
    .restart local v26    # "stickerView":Landroid/view/View;
    :cond_20
    const/16 v33, 0x0

    goto/16 :goto_d

    .line 2591
    :cond_21
    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->isFailed:Z

    move/from16 v32, v0

    if-nez v32, :cond_22

    .line 2592
    const v32, 0x7f0900f2

    move-object/from16 v0, v29

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v32

    const/16 v33, 0x0

    invoke-virtual/range {v32 .. v33}, Landroid/view/View;->setVisibility(I)V

    .line 2593
    const v32, 0x7f0900f4

    move-object/from16 v0, v29

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v32

    const/16 v33, 0x8

    invoke-virtual/range {v32 .. v33}, Landroid/view/View;->setVisibility(I)V

    .line 2594
    const v32, 0x7f0900f3

    move-object/from16 v0, v29

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v32

    const/16 v33, 0x8

    invoke-virtual/range {v32 .. v33}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_e

    .line 2596
    :cond_22
    const v32, 0x7f0900f2

    move-object/from16 v0, v29

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v32

    const/16 v33, 0x8

    invoke-virtual/range {v32 .. v33}, Landroid/view/View;->setVisibility(I)V

    .line 2597
    const v32, 0x7f0900f4

    move-object/from16 v0, v29

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v32

    const/16 v33, 0x0

    invoke-virtual/range {v32 .. v33}, Landroid/view/View;->setVisibility(I)V

    .line 2598
    const v32, 0x7f0900f3

    move-object/from16 v0, v29

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v32

    const/16 v33, 0x8

    invoke-virtual/range {v32 .. v33}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_e

    .line 2601
    :cond_23
    const v32, 0x7f0900f2

    move-object/from16 v0, v29

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v32

    const/16 v33, 0x4

    invoke-virtual/range {v32 .. v33}, Landroid/view/View;->setVisibility(I)V

    .line 2602
    const v32, 0x7f0900f4

    move-object/from16 v0, v29

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v32

    const/16 v33, 0x8

    invoke-virtual/range {v32 .. v33}, Landroid/view/View;->setVisibility(I)V

    .line 2603
    const v32, 0x7f0900f3

    move-object/from16 v0, v29

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v32

    const/16 v33, 0x8

    invoke-virtual/range {v32 .. v33}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_e

    .line 2606
    :cond_24
    const v32, 0x7f0900f2

    move-object/from16 v0, v29

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v33

    move-object/from16 v0, v18

    iget v0, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->time:I

    move/from16 v32, v0

    if-lez v32, :cond_26

    move-object/from16 v0, v18

    iget v0, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->type:I

    move/from16 v32, v0

    const/16 v34, 0x4

    move/from16 v0, v32

    move/from16 v1, v34

    if-eq v0, v1, :cond_25

    move-object/from16 v0, v18

    iget v0, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->type:I

    move/from16 v32, v0

    const/16 v34, 0x1

    move/from16 v0, v32

    move/from16 v1, v34

    if-ne v0, v1, :cond_26

    :cond_25
    const/16 v32, 0x0

    :goto_1c
    move-object/from16 v0, v33

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_e

    :cond_26
    const/16 v32, 0x4

    goto :goto_1c

    .line 2609
    .restart local v6    # "ap":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_27
    const/high16 v32, 0x40400000    # 3.0f

    invoke-static/range {v32 .. v32}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v32

    goto/16 :goto_f

    .line 2612
    :cond_28
    const/16 v32, 0x8

    goto/16 :goto_10

    .line 2615
    :cond_29
    invoke-interface/range {v33 .. v33}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/vkontakte/android/fragments/ChatFragment$Image;

    .line 2617
    .local v16, "img":Lcom/vkontakte/android/fragments/ChatFragment$Image;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment$MessagesAdapter;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/vkontakte/android/fragments/ChatFragment;->access$38(Lcom/vkontakte/android/fragments/ChatFragment;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    move-result-object v32

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment$Image;->url:Ljava/lang/String;

    move-object/from16 v34, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->isAlreadyLoaded(Ljava/lang/String;)Z

    move-result v32

    if-eqz v32, :cond_2a

    .line 2618
    move-object/from16 v0, v16

    iget v0, v0, Lcom/vkontakte/android/fragments/ChatFragment$Image;->viewId:I

    move/from16 v32, v0

    move-object/from16 v0, v29

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v32

    check-cast v32, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment$MessagesAdapter;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    move-object/from16 v34, v0

    invoke-static/range {v34 .. v34}, Lcom/vkontakte/android/fragments/ChatFragment;->access$38(Lcom/vkontakte/android/fragments/ChatFragment;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    move-result-object v34

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment$Image;->url:Ljava/lang/String;

    move-object/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v34

    move-object/from16 v0, v32

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_11

    .line 2620
    :cond_2a
    move-object/from16 v0, v16

    iget v0, v0, Lcom/vkontakte/android/fragments/ChatFragment$Image;->viewId:I

    move/from16 v32, v0

    move-object/from16 v0, v29

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v32

    check-cast v32, Landroid/widget/ImageView;

    const v34, 0x7f02027d

    move-object/from16 v0, v32

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_11

    .line 2625
    .end local v16    # "img":Lcom/vkontakte/android/fragments/ChatFragment$Image;
    :cond_2b
    const v32, -0x291f18

    goto/16 :goto_12

    .line 2627
    :cond_2c
    const v10, 0x7f0200a4

    goto/16 :goto_13

    .line 2632
    .restart local v10    # "bgRes":I
    .restart local v20    # "padBtm":I
    .restart local v21    # "padTop":I
    .restart local v31    # "wrapPadBtm":I
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment$MessagesAdapter;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    move-object/from16 v32, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->msgId:I

    move/from16 v33, v0

    invoke-static/range {v32 .. v33}, Lcom/vkontakte/android/fragments/ChatFragment;->access$39(Lcom/vkontakte/android/fragments/ChatFragment;I)Z

    move-result v32

    if-eqz v32, :cond_2d

    const v10, 0x7f0200a9

    .line 2633
    :goto_1d
    const/16 v20, 0x0

    .line 2634
    move-object/from16 v0, v18

    iget v0, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->fwdLevel:I

    move/from16 v32, v0

    if-nez v32, :cond_2e

    const/high16 v32, 0x40a00000    # 5.0f

    invoke-static/range {v32 .. v32}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v31

    .line 2635
    :goto_1e
    goto/16 :goto_14

    .line 2632
    :cond_2d
    const v10, 0x7f0200a8

    goto :goto_1d

    .line 2634
    :cond_2e
    const/16 v31, 0x0

    goto :goto_1e

    .line 2637
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment$MessagesAdapter;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    move-object/from16 v32, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->msgId:I

    move/from16 v33, v0

    invoke-static/range {v32 .. v33}, Lcom/vkontakte/android/fragments/ChatFragment;->access$39(Lcom/vkontakte/android/fragments/ChatFragment;I)Z

    move-result v32

    if-eqz v32, :cond_2f

    const v10, 0x7f0200a3

    .line 2638
    :goto_1f
    const/16 v21, 0x0

    .line 2639
    goto/16 :goto_14

    .line 2637
    :cond_2f
    const v10, 0x7f0200a2

    goto :goto_1f

    .line 2641
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment$MessagesAdapter;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    move-object/from16 v32, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->msgId:I

    move/from16 v33, v0

    invoke-static/range {v32 .. v33}, Lcom/vkontakte/android/fragments/ChatFragment;->access$39(Lcom/vkontakte/android/fragments/ChatFragment;I)Z

    move-result v32

    if-eqz v32, :cond_30

    const v10, 0x7f0200a7

    .line 2642
    :goto_20
    const/16 v20, 0x0

    move/from16 v21, v20

    goto/16 :goto_14

    .line 2641
    :cond_30
    const v10, 0x7f0200a6

    goto :goto_20

    .restart local v30    # "wrap":Landroid/view/View;
    :cond_31
    move/from16 v32, v31

    .line 2647
    goto/16 :goto_15

    .line 2650
    .restart local v19    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_32
    const/16 v32, 0x0

    goto/16 :goto_16

    .line 2653
    .end local v10    # "bgRes":I
    .end local v19    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v20    # "padBtm":I
    .end local v21    # "padTop":I
    .end local v30    # "wrap":Landroid/view/View;
    .end local v31    # "wrapPadBtm":I
    :cond_33
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment$MessagesAdapter;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    move-object/from16 v32, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->msgId:I

    move/from16 v33, v0

    invoke-static/range {v32 .. v33}, Lcom/vkontakte/android/fragments/ChatFragment;->access$39(Lcom/vkontakte/android/fragments/ChatFragment;I)Z

    move-result v32

    if-eqz v32, :cond_34

    const v10, 0x7f02009d

    .line 2654
    .restart local v10    # "bgRes":I
    :goto_21
    const/high16 v32, 0x40800000    # 4.0f

    invoke-static/range {v32 .. v32}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v21

    .restart local v21    # "padTop":I
    const/high16 v32, 0x40800000    # 4.0f

    invoke-static/range {v32 .. v32}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v20

    .line 2655
    .restart local v20    # "padBtm":I
    const/16 v31, -0x1

    .line 2656
    .restart local v31    # "wrapPadBtm":I
    move-object/from16 v0, v18

    iget v0, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->type:I

    move/from16 v32, v0

    packed-switch v32, :pswitch_data_1

    .line 2671
    :goto_22
    const v32, 0x7f0900f1

    move-object/from16 v0, v29

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v30

    .line 2672
    .restart local v30    # "wrap":Landroid/view/View;
    move-object/from16 v0, v30

    invoke-virtual {v0, v10}, Landroid/view/View;->setBackgroundResource(I)V

    .line 2673
    invoke-virtual/range {v30 .. v30}, Landroid/view/View;->getPaddingLeft()I

    move-result v33

    invoke-virtual/range {v30 .. v30}, Landroid/view/View;->getPaddingTop()I

    move-result v34

    invoke-virtual/range {v30 .. v30}, Landroid/view/View;->getPaddingRight()I

    move-result v35

    const/16 v32, -0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_39

    invoke-virtual/range {v30 .. v30}, Landroid/view/View;->getPaddingBottom()I

    move-result v32

    :goto_23
    move-object/from16 v0, v30

    move/from16 v1, v33

    move/from16 v2, v34

    move/from16 v3, v35

    move/from16 v4, v32

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 2674
    const/16 v32, 0x0

    const/16 v33, 0x0

    move-object/from16 v0, v29

    move/from16 v1, v32

    move/from16 v2, v21

    move/from16 v3, v33

    move/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 2675
    const v32, 0x7f0900f1

    move-object/from16 v0, v29

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v19

    check-cast v19, Landroid/widget/LinearLayout$LayoutParams;

    .line 2676
    .restart local v19    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, v18

    iget v0, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->type:I

    move/from16 v32, v0

    const/16 v33, 0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-eq v0, v1, :cond_3a

    const/16 v32, 0x1

    :goto_24
    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    move/from16 v0, v32

    move-object/from16 v1, v19

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 2677
    const v32, 0x7f0900f1

    move-object/from16 v0, v29

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_17

    .line 2653
    .end local v10    # "bgRes":I
    .end local v19    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v20    # "padBtm":I
    .end local v21    # "padTop":I
    .end local v30    # "wrap":Landroid/view/View;
    .end local v31    # "wrapPadBtm":I
    :cond_34
    const v10, 0x7f02009c

    goto/16 :goto_21

    .line 2658
    .restart local v10    # "bgRes":I
    .restart local v20    # "padBtm":I
    .restart local v21    # "padTop":I
    .restart local v31    # "wrapPadBtm":I
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment$MessagesAdapter;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    move-object/from16 v32, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->msgId:I

    move/from16 v33, v0

    invoke-static/range {v32 .. v33}, Lcom/vkontakte/android/fragments/ChatFragment;->access$39(Lcom/vkontakte/android/fragments/ChatFragment;I)Z

    move-result v32

    if-eqz v32, :cond_35

    const v10, 0x7f0200a1

    .line 2659
    :goto_25
    const/16 v20, 0x0

    .line 2660
    move-object/from16 v0, v18

    iget v0, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->fwdLevel:I

    move/from16 v32, v0

    if-nez v32, :cond_36

    const/high16 v32, 0x40a00000    # 5.0f

    invoke-static/range {v32 .. v32}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v31

    .line 2661
    :goto_26
    goto/16 :goto_22

    .line 2658
    :cond_35
    const v10, 0x7f0200a0

    goto :goto_25

    .line 2660
    :cond_36
    const/16 v31, 0x0

    goto :goto_26

    .line 2663
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment$MessagesAdapter;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    move-object/from16 v32, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->msgId:I

    move/from16 v33, v0

    invoke-static/range {v32 .. v33}, Lcom/vkontakte/android/fragments/ChatFragment;->access$39(Lcom/vkontakte/android/fragments/ChatFragment;I)Z

    move-result v32

    if-eqz v32, :cond_37

    const v10, 0x7f02009b

    .line 2664
    :goto_27
    const/16 v21, 0x0

    .line 2665
    goto/16 :goto_22

    .line 2663
    :cond_37
    const v10, 0x7f02009a

    goto :goto_27

    .line 2667
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment$MessagesAdapter;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    move-object/from16 v32, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->msgId:I

    move/from16 v33, v0

    invoke-static/range {v32 .. v33}, Lcom/vkontakte/android/fragments/ChatFragment;->access$39(Lcom/vkontakte/android/fragments/ChatFragment;I)Z

    move-result v32

    if-eqz v32, :cond_38

    const v10, 0x7f02009f

    .line 2668
    :goto_28
    const/16 v20, 0x0

    move/from16 v21, v20

    goto/16 :goto_22

    .line 2667
    :cond_38
    const v10, 0x7f02009e

    goto :goto_28

    .restart local v30    # "wrap":Landroid/view/View;
    :cond_39
    move/from16 v32, v31

    .line 2673
    goto/16 :goto_23

    .line 2676
    .restart local v19    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_3a
    const/16 v32, 0x0

    goto/16 :goto_24

    .line 2684
    :cond_3b
    check-cast v26, Landroid/widget/ImageView;

    .end local v26    # "stickerView":Landroid/view/View;
    const/16 v32, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    goto/16 :goto_18

    .line 2698
    .restart local v11    # "fp":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_3c
    move-object/from16 v0, v18

    iget v0, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->type:I

    move/from16 v32, v0

    const/16 v33, 0x2

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_3d

    .line 2699
    const/high16 v32, 0x40400000    # 3.0f

    invoke-static/range {v32 .. v32}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v32

    move/from16 v0, v32

    iput v0, v11, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 2700
    const/16 v32, 0x0

    move/from16 v0, v32

    iput v0, v11, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    goto/16 :goto_19

    .line 2701
    :cond_3d
    move-object/from16 v0, v18

    iget v0, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->type:I

    move/from16 v32, v0

    const/16 v33, 0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_3e

    .line 2702
    const/high16 v32, 0x40400000    # 3.0f

    invoke-static/range {v32 .. v32}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v32

    move/from16 v0, v32

    iput v0, v11, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 2703
    const/high16 v32, 0x40400000    # 3.0f

    invoke-static/range {v32 .. v32}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v32

    move/from16 v0, v32

    iput v0, v11, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    goto/16 :goto_19

    .line 2704
    :cond_3e
    move-object/from16 v0, v18

    iget v0, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->type:I

    move/from16 v32, v0

    const/16 v33, 0x3

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_1c

    if-lez p1, :cond_1c

    .line 2705
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment$MessagesAdapter;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/vkontakte/android/fragments/ChatFragment;->access$1(Lcom/vkontakte/android/fragments/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v32

    add-int/lit8 v33, p1, -0x1

    invoke-virtual/range {v32 .. v33}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;

    .line 2706
    .local v25, "prevItem":Lcom/vkontakte/android/fragments/ChatFragment$ListItem;
    move-object/from16 v0, v25

    iget v0, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->fwdLevel:I

    move/from16 v32, v0

    if-nez v32, :cond_3f

    .line 2707
    const/16 v32, 0x0

    move/from16 v0, v32

    iput v0, v11, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 2708
    const/high16 v32, 0x40400000    # 3.0f

    invoke-static/range {v32 .. v32}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v32

    move/from16 v0, v32

    iput v0, v11, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto/16 :goto_19

    .line 2710
    :cond_3f
    const/16 v32, 0x0

    move/from16 v0, v32

    iput v0, v11, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 2711
    const/16 v32, 0x0

    move/from16 v0, v32

    iput v0, v11, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    goto/16 :goto_19

    .line 2720
    .end local v11    # "fp":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v25    # "prevItem":Lcom/vkontakte/android/fragments/ChatFragment$ListItem;
    :cond_40
    const/16 v32, 0x4

    goto/16 :goto_1a

    .line 2723
    :cond_41
    const/16 v32, 0x0

    goto/16 :goto_1b

    .line 2630
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch

    .line 2656
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_3
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 2450
    const/4 v0, 0x6

    return v0
.end method

.method public isEnabled(I)Z
    .locals 2
    .param p1, "pos"    # I

    .prologue
    .line 2429
    iget-object v1, p0, Lcom/vkontakte/android/fragments/ChatFragment$MessagesAdapter;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/ChatFragment;->access$1(Lcom/vkontakte/android/fragments/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;

    iget v0, v1, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->type:I

    .line 2430
    .local v0, "type":I
    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
