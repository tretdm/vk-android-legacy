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
    .line 2454
    iput-object p1, p0, Lcom/vkontakte/android/fragments/ChatFragment$MessagesAdapter;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkontakte/android/fragments/ChatFragment;Lcom/vkontakte/android/fragments/ChatFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/vkontakte/android/fragments/ChatFragment;
    .param p2, "x1"    # Lcom/vkontakte/android/fragments/ChatFragment$1;

    .prologue
    .line 2454
    invoke-direct {p0, p1}, Lcom/vkontakte/android/fragments/ChatFragment$MessagesAdapter;-><init>(Lcom/vkontakte/android/fragments/ChatFragment;)V

    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 2457
    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 2467
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment$MessagesAdapter;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/ChatFragment;->access$100(Lcom/vkontakte/android/fragments/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 2472
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 2477
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 4
    .param p1, "position"    # I

    .prologue
    const/4 v1, 0x5

    .line 2487
    iget-object v2, p0, Lcom/vkontakte/android/fragments/ChatFragment$MessagesAdapter;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/ChatFragment;->access$100(Lcom/vkontakte/android/fragments/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;

    .line 2488
    .local v0, "item":Lcom/vkontakte/android/fragments/ChatFragment$ListItem;
    iget v2, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->type:I

    if-ne v2, v1, :cond_1

    const/4 v1, 0x4

    .line 2493
    :cond_0
    :goto_0
    return v1

    .line 2489
    :cond_1
    iget v2, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->type:I

    const/4 v3, 0x6

    if-eq v2, v3, :cond_0

    .line 2490
    iget v1, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->fwdLevel:I

    if-lez v1, :cond_3

    .line 2491
    iget-boolean v1, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->isOut:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    goto :goto_0

    :cond_2
    const/4 v1, 0x3

    goto :goto_0

    .line 2493
    :cond_3
    iget-object v1, p0, Lcom/vkontakte/android/fragments/ChatFragment$MessagesAdapter;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/ChatFragment;->access$100(Lcom/vkontakte/android/fragments/ChatFragment;)Ljava/util/ArrayList;

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
    .locals 37
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 2498
    move-object/from16 v30, p2

    .line 2499
    .local v30, "view":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment$MessagesAdapter;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Lcom/vkontakte/android/fragments/ChatFragment;->access$100(Lcom/vkontakte/android/fragments/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v33

    move-object/from16 v0, v33

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;

    .line 2500
    .local v19, "item":Lcom/vkontakte/android/fragments/ChatFragment$ListItem;
    if-nez v30, :cond_0

    .line 2501
    move-object/from16 v0, v19

    iget v0, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->type:I

    move/from16 v33, v0

    const/16 v34, 0x5

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_2

    .line 2502
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment$MessagesAdapter;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lcom/vkontakte/android/fragments/ChatFragment;->getActivity()Landroid/app/Activity;

    move-result-object v33

    const v34, 0x7f030048

    const/16 v35, 0x0

    invoke-static/range {v33 .. v35}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v30

    .line 2504
    const v33, 0x7f0800d3

    move-object/from16 v0, v30

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v33

    check-cast v33, Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 2521
    :cond_0
    :goto_0
    move-object/from16 v0, v19

    iget v0, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->type:I

    move/from16 v33, v0

    const/16 v34, 0x6

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_8

    .line 2760
    :cond_1
    :goto_1
    return-object v30

    .line 2505
    :cond_2
    move-object/from16 v0, v19

    iget v0, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->type:I

    move/from16 v33, v0

    const/16 v34, 0x6

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_3

    .line 2506
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment$MessagesAdapter;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lcom/vkontakte/android/fragments/ChatFragment;->getActivity()Landroid/app/Activity;

    move-result-object v33

    const v34, 0x7f030021

    const/16 v35, 0x0

    invoke-static/range {v33 .. v35}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v30

    goto :goto_0

    .line 2509
    :cond_3
    move-object/from16 v0, v19

    iget v0, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->fwdLevel:I

    move/from16 v33, v0

    if-nez v33, :cond_5

    .line 2510
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment$MessagesAdapter;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lcom/vkontakte/android/fragments/ChatFragment;->getActivity()Landroid/app/Activity;

    move-result-object v34

    move-object/from16 v0, v19

    iget-boolean v0, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->isOut:Z

    move/from16 v33, v0

    if-eqz v33, :cond_4

    const v33, 0x7f030046

    :goto_2
    const/16 v35, 0x0

    move-object/from16 v0, v34

    move/from16 v1, v33

    move-object/from16 v2, v35

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v30

    .line 2513
    :goto_3
    move-object/from16 v0, v19

    iget-boolean v0, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->isOut:Z

    move/from16 v33, v0

    if-nez v33, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment$MessagesAdapter;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Lcom/vkontakte/android/fragments/ChatFragment;->access$400(Lcom/vkontakte/android/fragments/ChatFragment;)I

    move-result v33

    const v34, 0x77359400

    move/from16 v0, v33

    move/from16 v1, v34

    if-ge v0, v1, :cond_7

    .line 2514
    const v33, 0x7f0800d5

    move-object/from16 v0, v30

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v33

    const/16 v34, 0x8

    invoke-virtual/range {v33 .. v34}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 2510
    :cond_4
    const v33, 0x7f030044

    goto :goto_2

    .line 2512
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment$MessagesAdapter;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lcom/vkontakte/android/fragments/ChatFragment;->getActivity()Landroid/app/Activity;

    move-result-object v34

    move-object/from16 v0, v19

    iget-boolean v0, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->isOut:Z

    move/from16 v33, v0

    if-eqz v33, :cond_6

    const v33, 0x7f030047

    :goto_4
    const/16 v35, 0x0

    move-object/from16 v0, v34

    move/from16 v1, v33

    move-object/from16 v2, v35

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v30

    goto :goto_3

    :cond_6
    const v33, 0x7f030045

    goto :goto_4

    .line 2515
    :cond_7
    move-object/from16 v0, v19

    iget-boolean v0, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->isOut:Z

    move/from16 v33, v0

    if-nez v33, :cond_0

    .line 2516
    const v33, 0x7f0800d5

    move-object/from16 v0, v30

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment$MessagesAdapter;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    move-object/from16 v34, v0

    invoke-static/range {v34 .. v34}, Lcom/vkontakte/android/fragments/ChatFragment;->access$7000(Lcom/vkontakte/android/fragments/ChatFragment;)Landroid/view/View$OnClickListener;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2517
    const v33, 0x7f0800d5

    move-object/from16 v0, v30

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment$MessagesAdapter;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    move-object/from16 v34, v0

    invoke-static/range {v34 .. v34}, Lcom/vkontakte/android/fragments/ChatFragment;->access$7100(Lcom/vkontakte/android/fragments/ChatFragment;)Landroid/view/View$OnLongClickListener;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto/16 :goto_0

    .line 2525
    :cond_8
    const v33, 0x7f0800d4

    move-object/from16 v0, v30

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    .line 2526
    .local v7, "att":Landroid/view/ViewGroup;
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_5
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v33

    move/from16 v0, v33

    if-ge v14, v0, :cond_a

    .line 2527
    invoke-virtual {v7, v14}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 2528
    .local v9, "av":Landroid/view/View;
    invoke-virtual {v9}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v33

    if-eqz v33, :cond_9

    invoke-virtual {v9}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v33

    move-object/from16 v0, v33

    instance-of v0, v0, Ljava/lang/String;

    move/from16 v33, v0

    if-eqz v33, :cond_9

    .line 2529
    invoke-virtual {v9}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-static {v9, v0}, Lcom/vkontakte/android/Attachment;->reuseView(Landroid/view/View;Ljava/lang/String;)V

    .line 2526
    :cond_9
    add-int/lit8 v14, v14, 0x1

    goto :goto_5

    .line 2532
    .end local v9    # "av":Landroid/view/View;
    :cond_a
    const/4 v13, 0x0

    .line 2533
    .local v13, "hasPhotos":Z
    invoke-virtual {v7}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 2534
    new-instance v25, Ljava/util/ArrayList;

    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    .line 2535
    .local v25, "photos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Photo;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 2536
    .local v8, "audios":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/AudioFile;>;"
    const/16 v23, 0x0

    .line 2537
    .local v23, "ph":I
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->attachments:Ljava/util/ArrayList;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, "i$":Ljava/util/Iterator;
    :cond_b
    :goto_6
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v33

    if-eqz v33, :cond_f

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vkontakte/android/Attachment;

    .line 2538
    .local v5, "a":Lcom/vkontakte/android/Attachment;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment$MessagesAdapter;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lcom/vkontakte/android/fragments/ChatFragment;->getActivity()Landroid/app/Activity;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v5, v0}, Lcom/vkontakte/android/Attachment;->getFullView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v29

    .line 2539
    .local v29, "v":Landroid/view/View;
    move-object/from16 v0, v29

    invoke-virtual {v7, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 2540
    instance-of v0, v5, Lcom/vkontakte/android/ThumbAttachment;

    move/from16 v33, v0

    if-eqz v33, :cond_c

    const/4 v13, 0x1

    .line 2541
    :cond_c
    instance-of v0, v5, Lcom/vkontakte/android/PhotoAttachment;

    move/from16 v33, v0

    if-eqz v33, :cond_d

    instance-of v0, v5, Lcom/vkontakte/android/AlbumAttachment;

    move/from16 v33, v0

    if-nez v33, :cond_d

    .line 2542
    move/from16 v24, v23

    .line 2543
    .local v24, "photoIdx":I
    add-int/lit8 v23, v23, 0x1

    .line 2544
    new-instance v34, Lcom/vkontakte/android/Photo;

    move-object/from16 v33, v5

    check-cast v33, Lcom/vkontakte/android/PhotoAttachment;

    move-object/from16 v0, v34

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Lcom/vkontakte/android/Photo;-><init>(Lcom/vkontakte/android/PhotoAttachment;)V

    move-object/from16 v0, v25

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2545
    new-instance v33, Lcom/vkontakte/android/fragments/ChatFragment$MessagesAdapter$1;

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    move-object/from16 v2, v25

    move/from16 v3, v24

    invoke-direct {v0, v1, v2, v3}, Lcom/vkontakte/android/fragments/ChatFragment$MessagesAdapter$1;-><init>(Lcom/vkontakte/android/fragments/ChatFragment$MessagesAdapter;Ljava/util/ArrayList;I)V

    move-object/from16 v0, v29

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2567
    .end local v24    # "photoIdx":I
    :cond_d
    instance-of v0, v5, Lcom/vkontakte/android/AudioAttachment;

    move/from16 v33, v0

    if-eqz v33, :cond_e

    .line 2568
    new-instance v34, Lcom/vkontakte/android/AudioFile;

    move-object/from16 v33, v5

    check-cast v33, Lcom/vkontakte/android/AudioAttachment;

    move-object/from16 v0, v34

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Lcom/vkontakte/android/AudioFile;-><init>(Lcom/vkontakte/android/AudioAttachment;)V

    move-object/from16 v0, v34

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2570
    :cond_e
    instance-of v0, v5, Lcom/vkontakte/android/VideoAttachment;

    move/from16 v33, v0

    if-eqz v33, :cond_b

    .line 2571
    check-cast v5, Lcom/vkontakte/android/VideoAttachment;

    .end local v5    # "a":Lcom/vkontakte/android/Attachment;
    const-string v33, "messages"

    move-object/from16 v0, v33

    iput-object v0, v5, Lcom/vkontakte/android/VideoAttachment;->referer:Ljava/lang/String;

    goto/16 :goto_6

    .line 2574
    .end local v29    # "v":Landroid/view/View;
    :cond_f
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v33

    if-lez v33, :cond_11

    .line 2575
    const/4 v14, 0x0

    .line 2576
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->attachments:Ljava/util/ArrayList;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_10
    :goto_7
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v33

    if-eqz v33, :cond_11

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vkontakte/android/Attachment;

    .line 2577
    .restart local v5    # "a":Lcom/vkontakte/android/Attachment;
    instance-of v0, v5, Lcom/vkontakte/android/AudioAttachment;

    move/from16 v33, v0

    if-eqz v33, :cond_10

    move-object/from16 v33, v5

    .line 2578
    check-cast v33, Lcom/vkontakte/android/AudioAttachment;

    move-object/from16 v0, v33

    iput v14, v0, Lcom/vkontakte/android/AudioAttachment;->playlistPos:I

    move-object/from16 v33, v5

    .line 2579
    check-cast v33, Lcom/vkontakte/android/AudioAttachment;

    const/16 v34, 0x0

    move/from16 v0, v34

    new-array v0, v0, [Lcom/vkontakte/android/AudioFile;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v34

    check-cast v34, [Lcom/vkontakte/android/AudioFile;

    move-object/from16 v0, v34

    move-object/from16 v1, v33

    iput-object v0, v1, Lcom/vkontakte/android/AudioAttachment;->playlist:[Lcom/vkontakte/android/AudioFile;

    .line 2580
    check-cast v5, Lcom/vkontakte/android/AudioAttachment;

    .end local v5    # "a":Lcom/vkontakte/android/Attachment;
    const-string v33, "messages"

    move-object/from16 v0, v33

    iput-object v0, v5, Lcom/vkontakte/android/AudioAttachment;->referer:Ljava/lang/String;

    .line 2581
    add-int/lit8 v14, v14, 0x1

    goto :goto_7

    .line 2585
    :cond_11
    const/16 v18, 0x0

    .line 2586
    .local v18, "isSticker":Z
    const/16 v16, 0x0

    .line 2587
    .local v16, "idx":I
    const/16 v27, 0x0

    .line 2588
    .local v27, "stickerView":Landroid/view/View;
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->attachments:Ljava/util/ArrayList;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_8
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v33

    if-eqz v33, :cond_14

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vkontakte/android/Attachment;

    .line 2589
    .restart local v5    # "a":Lcom/vkontakte/android/Attachment;
    instance-of v0, v5, Lcom/vkontakte/android/ImageAttachment;

    move/from16 v33, v0

    if-eqz v33, :cond_12

    .line 2590
    const v33, 0x7f0800d4

    move-object/from16 v0, v30

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v33

    check-cast v33, Landroid/view/ViewGroup;

    move-object/from16 v0, v33

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .restart local v9    # "av":Landroid/view/View;
    move-object/from16 v33, v5

    .line 2591
    check-cast v33, Lcom/vkontakte/android/ImageAttachment;

    invoke-interface/range {v33 .. v33}, Lcom/vkontakte/android/ImageAttachment;->getImageURL()Ljava/lang/String;

    move-result-object v28

    .line 2592
    .local v28, "url":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment$MessagesAdapter;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Lcom/vkontakte/android/fragments/ChatFragment;->access$6800(Lcom/vkontakte/android/fragments/ChatFragment;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->isAlreadyLoaded(Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_13

    move-object/from16 v33, v5

    .line 2593
    check-cast v33, Lcom/vkontakte/android/ImageAttachment;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment$MessagesAdapter;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    move-object/from16 v34, v0

    invoke-static/range {v34 .. v34}, Lcom/vkontakte/android/fragments/ChatFragment;->access$6800(Lcom/vkontakte/android/fragments/ChatFragment;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v34

    const/16 v35, 0x1

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    move/from16 v2, v35

    invoke-interface {v0, v9, v1, v2}, Lcom/vkontakte/android/ImageAttachment;->setImage(Landroid/view/View;Landroid/graphics/Bitmap;Z)V

    .line 2596
    :goto_9
    instance-of v0, v5, Lcom/vkontakte/android/StickerAttachment;

    move/from16 v33, v0

    if-eqz v33, :cond_12

    move-object/from16 v27, v9

    .line 2598
    .end local v9    # "av":Landroid/view/View;
    .end local v28    # "url":Ljava/lang/String;
    :cond_12
    add-int/lit8 v16, v16, 0x1

    goto :goto_8

    .restart local v9    # "av":Landroid/view/View;
    .restart local v28    # "url":Ljava/lang/String;
    :cond_13
    move-object/from16 v33, v5

    .line 2595
    check-cast v33, Lcom/vkontakte/android/ImageAttachment;

    move-object/from16 v0, v33

    invoke-interface {v0, v9}, Lcom/vkontakte/android/ImageAttachment;->clearImage(Landroid/view/View;)V

    goto :goto_9

    .line 2601
    .end local v5    # "a":Lcom/vkontakte/android/Attachment;
    .end local v9    # "av":Landroid/view/View;
    .end local v28    # "url":Ljava/lang/String;
    :cond_14
    move-object/from16 v0, v19

    iget v0, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->type:I

    move/from16 v33, v0

    const/16 v34, 0x5

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_17

    .line 2602
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->text:Ljava/lang/CharSequence;

    move-object/from16 v33, v0

    if-eqz v33, :cond_15

    .line 2603
    const v33, 0x7f0800d3

    move-object/from16 v0, v30

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v33

    check-cast v33, Landroid/widget/TextView;

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->text:Ljava/lang/CharSequence;

    move-object/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2607
    :goto_a
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->attachments:Ljava/util/ArrayList;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Ljava/util/ArrayList;->size()I

    move-result v33

    if-lez v33, :cond_16

    const/16 v33, 0x0

    :goto_b
    move/from16 v0, v33

    invoke-virtual {v7, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2608
    const/4 v14, 0x0

    :goto_c
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v33

    move/from16 v0, v33

    if-ge v14, v0, :cond_1

    .line 2609
    invoke-virtual {v7, v14}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v20

    check-cast v20, Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;

    .line 2610
    .local v20, "lp":Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;
    const/16 v33, 0x0

    move/from16 v0, v33

    move-object/from16 v1, v20

    iput v0, v1, Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;->vertical_spacing:I

    .line 2611
    invoke-virtual {v7, v14}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2608
    add-int/lit8 v14, v14, 0x1

    goto :goto_c

    .line 2605
    .end local v20    # "lp":Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;
    :cond_15
    const v33, 0x7f0800d3

    move-object/from16 v0, v30

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v33

    check-cast v33, Landroid/widget/TextView;

    move-object/from16 v0, v19

    iget v0, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->time:I

    move/from16 v34, v0

    invoke-static/range {v34 .. v34}, Lcom/vkontakte/android/Global;->langDateDay(I)Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_a

    .line 2607
    :cond_16
    const/16 v33, 0x8

    goto :goto_b

    .line 2614
    :cond_17
    const v33, 0x7f0800d3

    move-object/from16 v0, v30

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v33

    check-cast v33, Landroid/widget/TextView;

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->text:Ljava/lang/CharSequence;

    move-object/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2615
    const v33, 0x7f0800d3

    move-object/from16 v0, v30

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v33

    check-cast v33, Landroid/widget/TextView;

    move-object/from16 v0, v19

    iget-boolean v0, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->hasLinks:Z

    move/from16 v34, v0

    if-eqz v34, :cond_19

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v34

    :goto_d
    invoke-virtual/range {v33 .. v34}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 2616
    const v33, 0x7f0800d3

    move-object/from16 v0, v30

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v33

    const/16 v34, 0x0

    invoke-virtual/range {v33 .. v34}, Landroid/view/View;->setFocusable(Z)V

    .line 2617
    const v33, 0x7f0800d7

    move-object/from16 v0, v30

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v33

    check-cast v33, Landroid/widget/TextView;

    move-object/from16 v0, v19

    iget v0, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->time:I

    move/from16 v34, v0

    invoke-static/range {v34 .. v34}, Lcom/vkontakte/android/Global;->time(I)Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2618
    move-object/from16 v0, v19

    iget-boolean v0, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->isOut:Z

    move/from16 v33, v0

    if-eqz v33, :cond_1d

    .line 2619
    move-object/from16 v0, v19

    iget v0, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->time:I

    move/from16 v33, v0

    if-lez v33, :cond_1c

    .line 2620
    move-object/from16 v0, v19

    iget v0, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->msgId:I

    move/from16 v33, v0

    if-gez v33, :cond_1a

    move-object/from16 v0, v19

    iget-boolean v0, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->isFailed:Z

    move/from16 v33, v0

    if-nez v33, :cond_1a

    .line 2621
    const v33, 0x7f0800d7

    move-object/from16 v0, v30

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v33

    const/16 v34, 0x8

    invoke-virtual/range {v33 .. v34}, Landroid/view/View;->setVisibility(I)V

    .line 2622
    const v33, 0x7f0800d9

    move-object/from16 v0, v30

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v33

    const/16 v34, 0x8

    invoke-virtual/range {v33 .. v34}, Landroid/view/View;->setVisibility(I)V

    .line 2623
    const v33, 0x7f0800d8

    move-object/from16 v0, v30

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v33

    const/16 v34, 0x0

    invoke-virtual/range {v33 .. v34}, Landroid/view/View;->setVisibility(I)V

    .line 2641
    :goto_e
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 2642
    .local v6, "ap":Landroid/view/ViewGroup$MarginLayoutParams;
    if-eqz v13, :cond_20

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->text:Ljava/lang/CharSequence;

    move-object/from16 v33, v0

    invoke-interface/range {v33 .. v33}, Ljava/lang/CharSequence;->length()I

    move-result v33

    if-nez v33, :cond_20

    const/16 v33, 0x0

    :goto_f
    move/from16 v0, v33

    iput v0, v6, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 2645
    const v33, 0x7f0800d3

    move-object/from16 v0, v30

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v34

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->text:Ljava/lang/CharSequence;

    move-object/from16 v33, v0

    invoke-interface/range {v33 .. v33}, Ljava/lang/CharSequence;->length()I

    move-result v33

    if-lez v33, :cond_21

    const/16 v33, 0x0

    :goto_10
    move-object/from16 v0, v34

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2646
    move-object/from16 v0, v19

    iget-boolean v0, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->isOut:Z

    move/from16 v33, v0

    if-nez v33, :cond_18

    const v33, 0x7f0800d5

    move-object/from16 v0, v30

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v33

    move-object/from16 v0, v19

    iget v0, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->msgId:I

    move/from16 v34, v0

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 2648
    :cond_18
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->images:Ljava/util/ArrayList;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_11
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v33

    if-eqz v33, :cond_23

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/vkontakte/android/fragments/ChatFragment$Image;

    .line 2650
    .local v17, "img":Lcom/vkontakte/android/fragments/ChatFragment$Image;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment$MessagesAdapter;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Lcom/vkontakte/android/fragments/ChatFragment;->access$6800(Lcom/vkontakte/android/fragments/ChatFragment;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    move-result-object v33

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment$Image;->url:Ljava/lang/String;

    move-object/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->isAlreadyLoaded(Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_22

    .line 2651
    move-object/from16 v0, v17

    iget v0, v0, Lcom/vkontakte/android/fragments/ChatFragment$Image;->viewId:I

    move/from16 v33, v0

    move-object/from16 v0, v30

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v33

    check-cast v33, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment$MessagesAdapter;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    move-object/from16 v34, v0

    invoke-static/range {v34 .. v34}, Lcom/vkontakte/android/fragments/ChatFragment;->access$6800(Lcom/vkontakte/android/fragments/ChatFragment;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    move-result-object v34

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment$Image;->url:Ljava/lang/String;

    move-object/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_11

    .line 2615
    .end local v6    # "ap":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v17    # "img":Lcom/vkontakte/android/fragments/ChatFragment$Image;
    :cond_19
    const/16 v34, 0x0

    goto/16 :goto_d

    .line 2624
    :cond_1a
    move-object/from16 v0, v19

    iget-boolean v0, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->isFailed:Z

    move/from16 v33, v0

    if-nez v33, :cond_1b

    .line 2625
    const v33, 0x7f0800d7

    move-object/from16 v0, v30

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v33

    const/16 v34, 0x0

    invoke-virtual/range {v33 .. v34}, Landroid/view/View;->setVisibility(I)V

    .line 2626
    const v33, 0x7f0800d9

    move-object/from16 v0, v30

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v33

    const/16 v34, 0x8

    invoke-virtual/range {v33 .. v34}, Landroid/view/View;->setVisibility(I)V

    .line 2627
    const v33, 0x7f0800d8

    move-object/from16 v0, v30

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v33

    const/16 v34, 0x8

    invoke-virtual/range {v33 .. v34}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_e

    .line 2629
    :cond_1b
    const v33, 0x7f0800d7

    move-object/from16 v0, v30

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v33

    const/16 v34, 0x8

    invoke-virtual/range {v33 .. v34}, Landroid/view/View;->setVisibility(I)V

    .line 2630
    const v33, 0x7f0800d9

    move-object/from16 v0, v30

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v33

    const/16 v34, 0x0

    invoke-virtual/range {v33 .. v34}, Landroid/view/View;->setVisibility(I)V

    .line 2631
    const v33, 0x7f0800d8

    move-object/from16 v0, v30

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v33

    const/16 v34, 0x8

    invoke-virtual/range {v33 .. v34}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_e

    .line 2634
    :cond_1c
    const v33, 0x7f0800d7

    move-object/from16 v0, v30

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v33

    const/16 v34, 0x4

    invoke-virtual/range {v33 .. v34}, Landroid/view/View;->setVisibility(I)V

    .line 2635
    const v33, 0x7f0800d9

    move-object/from16 v0, v30

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v33

    const/16 v34, 0x8

    invoke-virtual/range {v33 .. v34}, Landroid/view/View;->setVisibility(I)V

    .line 2636
    const v33, 0x7f0800d8

    move-object/from16 v0, v30

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v33

    const/16 v34, 0x8

    invoke-virtual/range {v33 .. v34}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_e

    .line 2639
    :cond_1d
    const v33, 0x7f0800d7

    move-object/from16 v0, v30

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v34

    move-object/from16 v0, v19

    iget v0, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->time:I

    move/from16 v33, v0

    if-lez v33, :cond_1f

    move-object/from16 v0, v19

    iget v0, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->type:I

    move/from16 v33, v0

    const/16 v35, 0x4

    move/from16 v0, v33

    move/from16 v1, v35

    if-eq v0, v1, :cond_1e

    move-object/from16 v0, v19

    iget v0, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->type:I

    move/from16 v33, v0

    const/16 v35, 0x1

    move/from16 v0, v33

    move/from16 v1, v35

    if-ne v0, v1, :cond_1f

    :cond_1e
    const/16 v33, 0x0

    :goto_12
    move-object/from16 v0, v34

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_e

    :cond_1f
    const/16 v33, 0x4

    goto :goto_12

    .line 2642
    .restart local v6    # "ap":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_20
    const/high16 v33, 0x40400000    # 3.0f

    invoke-static/range {v33 .. v33}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v33

    goto/16 :goto_f

    .line 2645
    :cond_21
    const/16 v33, 0x8

    goto/16 :goto_10

    .line 2653
    .restart local v17    # "img":Lcom/vkontakte/android/fragments/ChatFragment$Image;
    :cond_22
    move-object/from16 v0, v17

    iget v0, v0, Lcom/vkontakte/android/fragments/ChatFragment$Image;->viewId:I

    move/from16 v33, v0

    move-object/from16 v0, v30

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v33

    check-cast v33, Landroid/widget/ImageView;

    const v34, 0x7f0201ed

    invoke-virtual/range {v33 .. v34}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_11

    .line 2656
    .end local v17    # "img":Lcom/vkontakte/android/fragments/ChatFragment$Image;
    :cond_23
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->attachments:Ljava/util/ArrayList;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Ljava/util/ArrayList;->size()I

    move-result v33

    const/16 v34, 0x1

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_24

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->attachments:Ljava/util/ArrayList;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    invoke-virtual/range {v33 .. v34}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v33

    move-object/from16 v0, v33

    instance-of v0, v0, Lcom/vkontakte/android/StickerAttachment;

    move/from16 v33, v0

    if-eqz v33, :cond_24

    .line 2657
    const/16 v18, 0x1

    .line 2658
    :cond_24
    move-object/from16 v0, v19

    iget-boolean v0, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->readState:Z

    move/from16 v33, v0

    if-eqz v33, :cond_2a

    const/16 v33, 0x0

    :goto_13
    move-object/from16 v0, v30

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 2659
    move-object/from16 v0, v19

    iget-boolean v0, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->isOut:Z

    move/from16 v33, v0

    if-eqz v33, :cond_32

    .line 2660
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment$MessagesAdapter;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    move-object/from16 v33, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->msgId:I

    move/from16 v34, v0

    invoke-static/range {v33 .. v34}, Lcom/vkontakte/android/fragments/ChatFragment;->access$7200(Lcom/vkontakte/android/fragments/ChatFragment;I)Z

    move-result v33

    if-eqz v33, :cond_2b

    const v10, 0x7f020037

    .line 2661
    .local v10, "bgRes":I
    :goto_14
    const/high16 v33, 0x40800000    # 4.0f

    invoke-static/range {v33 .. v33}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v22

    .local v22, "padTop":I
    const/high16 v33, 0x40800000    # 4.0f

    invoke-static/range {v33 .. v33}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v21

    .line 2662
    .local v21, "padBtm":I
    const/16 v32, -0x1

    .line 2663
    .local v32, "wrapPadBtm":I
    move-object/from16 v0, v19

    iget v0, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->type:I

    move/from16 v33, v0

    packed-switch v33, :pswitch_data_0

    .line 2678
    :goto_15
    const v33, 0x7f0800d6

    move-object/from16 v0, v30

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v31

    .line 2679
    .local v31, "wrap":Landroid/view/View;
    move-object/from16 v0, v31

    invoke-virtual {v0, v10}, Landroid/view/View;->setBackgroundResource(I)V

    .line 2680
    invoke-virtual/range {v31 .. v31}, Landroid/view/View;->getPaddingLeft()I

    move-result v34

    invoke-virtual/range {v31 .. v31}, Landroid/view/View;->getPaddingTop()I

    move-result v35

    invoke-virtual/range {v31 .. v31}, Landroid/view/View;->getPaddingRight()I

    move-result v36

    const/16 v33, -0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_30

    invoke-virtual/range {v31 .. v31}, Landroid/view/View;->getPaddingBottom()I

    move-result v33

    :goto_16
    move-object/from16 v0, v31

    move/from16 v1, v34

    move/from16 v2, v35

    move/from16 v3, v36

    move/from16 v4, v33

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 2681
    const/16 v33, 0x0

    const/16 v34, 0x0

    move-object/from16 v0, v30

    move/from16 v1, v33

    move/from16 v2, v22

    move/from16 v3, v34

    move/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 2682
    const v33, 0x7f0800d6

    move-object/from16 v0, v30

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v20

    check-cast v20, Landroid/widget/LinearLayout$LayoutParams;

    .line 2683
    .local v20, "lp":Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, v19

    iget v0, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->type:I

    move/from16 v33, v0

    const/16 v34, 0x1

    move/from16 v0, v33

    move/from16 v1, v34

    if-eq v0, v1, :cond_31

    const/high16 v33, 0x3f800000    # 1.0f

    :goto_17
    move/from16 v0, v33

    move-object/from16 v1, v20

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 2684
    const v33, 0x7f0800d6

    move-object/from16 v0, v30

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2712
    :goto_18
    if-eqz v18, :cond_25

    move-object/from16 v0, v19

    iget v0, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->fwdLevel:I

    move/from16 v33, v0

    if-nez v33, :cond_25

    .line 2713
    const v33, 0x7f0800d6

    move-object/from16 v0, v30

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v33

    new-instance v34, Landroid/graphics/drawable/ColorDrawable;

    const/16 v35, 0x0

    invoke-direct/range {v34 .. v35}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual/range {v33 .. v34}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2714
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment$MessagesAdapter;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    move-object/from16 v33, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->msgId:I

    move/from16 v34, v0

    invoke-static/range {v33 .. v34}, Lcom/vkontakte/android/fragments/ChatFragment;->access$7200(Lcom/vkontakte/android/fragments/ChatFragment;I)Z

    move-result v33

    if-eqz v33, :cond_3a

    .line 2715
    check-cast v27, Landroid/widget/ImageView;

    .end local v27    # "stickerView":Landroid/view/View;
    const/high16 v33, 0x33000000

    move-object/from16 v0, v27

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 2721
    :cond_25
    :goto_19
    move-object/from16 v0, v19

    iget v0, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->fwdLevel:I

    move/from16 v33, v0

    if-lez v33, :cond_27

    .line 2722
    const v33, 0x7f0800d1

    move-object/from16 v0, v30

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v33

    check-cast v33, Landroid/widget/TextView;

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->fwdName:Ljava/lang/String;

    move-object/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2723
    const v33, 0x7f0800d2

    move-object/from16 v0, v30

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v33

    check-cast v33, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment$MessagesAdapter;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Lcom/vkontakte/android/fragments/ChatFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v34

    move-object/from16 v0, v19

    iget v0, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->fwdTime:I

    move/from16 v35, v0

    invoke-static/range {v34 .. v35}, Lcom/vkontakte/android/Global;->langDate(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2724
    const v33, 0x7f0800cf

    move-object/from16 v0, v30

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v33

    check-cast v33, Lcom/vkontakte/android/ui/FwdMessageLevelView;

    move-object/from16 v0, v19

    iget v0, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->fwdLevel:I

    move/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Lcom/vkontakte/android/ui/FwdMessageLevelView;->setLevel(I)V

    .line 2725
    const v33, 0x7f0800ce

    move-object/from16 v0, v30

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v33

    move-object/from16 v0, v19

    iget v0, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->fwdUid:I

    move/from16 v34, v0

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 2726
    const v33, 0x7f0800ce

    move-object/from16 v0, v30

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment$MessagesAdapter;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    move-object/from16 v34, v0

    invoke-static/range {v34 .. v34}, Lcom/vkontakte/android/fragments/ChatFragment;->access$7300(Lcom/vkontakte/android/fragments/ChatFragment;)Landroid/view/View$OnClickListener;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2727
    const v33, 0x7f0800cf

    move-object/from16 v0, v30

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroid/widget/RelativeLayout$LayoutParams;

    .line 2728
    .local v11, "fp":Landroid/widget/RelativeLayout$LayoutParams;
    move-object/from16 v0, v19

    iget v0, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->type:I

    move/from16 v33, v0

    const/16 v34, 0x4

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_3b

    .line 2729
    const/16 v33, 0x0

    move/from16 v0, v33

    iput v0, v11, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 2730
    const/high16 v33, 0x40400000    # 3.0f

    invoke-static/range {v33 .. v33}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v33

    move/from16 v0, v33

    iput v0, v11, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 2747
    :cond_26
    :goto_1a
    const v33, 0x7f0800cf

    move-object/from16 v0, v30

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v11}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2748
    const v33, 0x7f0800ce

    move-object/from16 v0, v30

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Landroid/widget/RelativeLayout$LayoutParams;

    .line 2749
    .local v12, "fp2":Landroid/widget/RelativeLayout$LayoutParams;
    iget v0, v11, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    move/from16 v33, v0

    move/from16 v0, v33

    iput v0, v12, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 2750
    const v33, 0x7f0800ce

    move-object/from16 v0, v30

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v12}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2752
    .end local v11    # "fp":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v12    # "fp2":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_27
    move-object/from16 v0, v19

    iget-boolean v0, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->isOut:Z

    move/from16 v33, v0

    if-nez v33, :cond_29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment$MessagesAdapter;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Lcom/vkontakte/android/fragments/ChatFragment;->access$400(Lcom/vkontakte/android/fragments/ChatFragment;)I

    move-result v33

    const v34, 0x77359400

    move/from16 v0, v33

    move/from16 v1, v34

    if-le v0, v1, :cond_29

    .line 2753
    const v33, 0x7f0800d5

    move-object/from16 v0, v30

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v34

    move-object/from16 v0, v19

    iget v0, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->type:I

    move/from16 v33, v0

    const/16 v35, 0x4

    move/from16 v0, v33

    move/from16 v1, v35

    if-eq v0, v1, :cond_28

    move-object/from16 v0, v19

    iget v0, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->type:I

    move/from16 v33, v0

    const/16 v35, 0x1

    move/from16 v0, v33

    move/from16 v1, v35

    if-ne v0, v1, :cond_3f

    :cond_28
    const/16 v33, 0x0

    :goto_1b
    move-object/from16 v0, v34

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2755
    :cond_29
    const v33, 0x7f0800d6

    move-object/from16 v0, v30

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v33

    if-eqz v33, :cond_1

    .line 2756
    const v33, 0x7f0800d6

    move-object/from16 v0, v30

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment$MessagesAdapter;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Lcom/vkontakte/android/fragments/ChatFragment;->access$3400(Lcom/vkontakte/android/fragments/ChatFragment;)Landroid/view/ActionMode;

    move-result-object v33

    if-nez v33, :cond_40

    const/16 v33, 0x1

    :goto_1c
    move-object/from16 v0, v34

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    goto/16 :goto_1

    .line 2658
    .end local v10    # "bgRes":I
    .end local v20    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v21    # "padBtm":I
    .end local v22    # "padTop":I
    .end local v31    # "wrap":Landroid/view/View;
    .end local v32    # "wrapPadBtm":I
    .restart local v27    # "stickerView":Landroid/view/View;
    :cond_2a
    const v33, -0x291f18

    goto/16 :goto_13

    .line 2660
    :cond_2b
    const v10, 0x7f020036

    goto/16 :goto_14

    .line 2665
    .restart local v10    # "bgRes":I
    .restart local v21    # "padBtm":I
    .restart local v22    # "padTop":I
    .restart local v32    # "wrapPadBtm":I
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment$MessagesAdapter;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    move-object/from16 v33, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->msgId:I

    move/from16 v34, v0

    invoke-static/range {v33 .. v34}, Lcom/vkontakte/android/fragments/ChatFragment;->access$7200(Lcom/vkontakte/android/fragments/ChatFragment;I)Z

    move-result v33

    if-eqz v33, :cond_2c

    const v10, 0x7f02003b

    .line 2666
    :goto_1d
    const/16 v21, 0x0

    .line 2667
    move-object/from16 v0, v19

    iget v0, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->fwdLevel:I

    move/from16 v33, v0

    if-nez v33, :cond_2d

    const/high16 v33, 0x40a00000    # 5.0f

    invoke-static/range {v33 .. v33}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v32

    .line 2668
    :goto_1e
    goto/16 :goto_15

    .line 2665
    :cond_2c
    const v10, 0x7f02003a

    goto :goto_1d

    .line 2667
    :cond_2d
    const/16 v32, 0x0

    goto :goto_1e

    .line 2670
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment$MessagesAdapter;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    move-object/from16 v33, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->msgId:I

    move/from16 v34, v0

    invoke-static/range {v33 .. v34}, Lcom/vkontakte/android/fragments/ChatFragment;->access$7200(Lcom/vkontakte/android/fragments/ChatFragment;I)Z

    move-result v33

    if-eqz v33, :cond_2e

    const v10, 0x7f020035

    .line 2671
    :goto_1f
    const/16 v22, 0x0

    .line 2672
    goto/16 :goto_15

    .line 2670
    :cond_2e
    const v10, 0x7f020034

    goto :goto_1f

    .line 2674
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment$MessagesAdapter;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    move-object/from16 v33, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->msgId:I

    move/from16 v34, v0

    invoke-static/range {v33 .. v34}, Lcom/vkontakte/android/fragments/ChatFragment;->access$7200(Lcom/vkontakte/android/fragments/ChatFragment;I)Z

    move-result v33

    if-eqz v33, :cond_2f

    const v10, 0x7f020039

    .line 2675
    :goto_20
    const/16 v21, 0x0

    move/from16 v22, v21

    goto/16 :goto_15

    .line 2674
    :cond_2f
    const v10, 0x7f020038

    goto :goto_20

    .restart local v31    # "wrap":Landroid/view/View;
    :cond_30
    move/from16 v33, v32

    .line 2680
    goto/16 :goto_16

    .line 2683
    .restart local v20    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_31
    const/16 v33, 0x0

    goto/16 :goto_17

    .line 2686
    .end local v10    # "bgRes":I
    .end local v20    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v21    # "padBtm":I
    .end local v22    # "padTop":I
    .end local v31    # "wrap":Landroid/view/View;
    .end local v32    # "wrapPadBtm":I
    :cond_32
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment$MessagesAdapter;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    move-object/from16 v33, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->msgId:I

    move/from16 v34, v0

    invoke-static/range {v33 .. v34}, Lcom/vkontakte/android/fragments/ChatFragment;->access$7200(Lcom/vkontakte/android/fragments/ChatFragment;I)Z

    move-result v33

    if-eqz v33, :cond_33

    const v10, 0x7f02002f

    .line 2687
    .restart local v10    # "bgRes":I
    :goto_21
    const/high16 v33, 0x40800000    # 4.0f

    invoke-static/range {v33 .. v33}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v22

    .restart local v22    # "padTop":I
    const/high16 v33, 0x40800000    # 4.0f

    invoke-static/range {v33 .. v33}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v21

    .line 2688
    .restart local v21    # "padBtm":I
    const/16 v32, -0x1

    .line 2689
    .restart local v32    # "wrapPadBtm":I
    move-object/from16 v0, v19

    iget v0, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->type:I

    move/from16 v33, v0

    packed-switch v33, :pswitch_data_1

    .line 2704
    :goto_22
    const v33, 0x7f0800d6

    move-object/from16 v0, v30

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v31

    .line 2705
    .restart local v31    # "wrap":Landroid/view/View;
    move-object/from16 v0, v31

    invoke-virtual {v0, v10}, Landroid/view/View;->setBackgroundResource(I)V

    .line 2706
    invoke-virtual/range {v31 .. v31}, Landroid/view/View;->getPaddingLeft()I

    move-result v34

    invoke-virtual/range {v31 .. v31}, Landroid/view/View;->getPaddingTop()I

    move-result v35

    invoke-virtual/range {v31 .. v31}, Landroid/view/View;->getPaddingRight()I

    move-result v36

    const/16 v33, -0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_38

    invoke-virtual/range {v31 .. v31}, Landroid/view/View;->getPaddingBottom()I

    move-result v33

    :goto_23
    move-object/from16 v0, v31

    move/from16 v1, v34

    move/from16 v2, v35

    move/from16 v3, v36

    move/from16 v4, v33

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 2707
    const/16 v33, 0x0

    const/16 v34, 0x0

    move-object/from16 v0, v30

    move/from16 v1, v33

    move/from16 v2, v22

    move/from16 v3, v34

    move/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 2708
    const v33, 0x7f0800d6

    move-object/from16 v0, v30

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v20

    check-cast v20, Landroid/widget/LinearLayout$LayoutParams;

    .line 2709
    .restart local v20    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, v19

    iget v0, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->type:I

    move/from16 v33, v0

    const/16 v34, 0x1

    move/from16 v0, v33

    move/from16 v1, v34

    if-eq v0, v1, :cond_39

    const/high16 v33, 0x3f800000    # 1.0f

    :goto_24
    move/from16 v0, v33

    move-object/from16 v1, v20

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 2710
    const v33, 0x7f0800d6

    move-object/from16 v0, v30

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_18

    .line 2686
    .end local v10    # "bgRes":I
    .end local v20    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v21    # "padBtm":I
    .end local v22    # "padTop":I
    .end local v31    # "wrap":Landroid/view/View;
    .end local v32    # "wrapPadBtm":I
    :cond_33
    const v10, 0x7f02002e

    goto/16 :goto_21

    .line 2691
    .restart local v10    # "bgRes":I
    .restart local v21    # "padBtm":I
    .restart local v22    # "padTop":I
    .restart local v32    # "wrapPadBtm":I
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment$MessagesAdapter;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    move-object/from16 v33, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->msgId:I

    move/from16 v34, v0

    invoke-static/range {v33 .. v34}, Lcom/vkontakte/android/fragments/ChatFragment;->access$7200(Lcom/vkontakte/android/fragments/ChatFragment;I)Z

    move-result v33

    if-eqz v33, :cond_34

    const v10, 0x7f020033

    .line 2692
    :goto_25
    const/16 v21, 0x0

    .line 2693
    move-object/from16 v0, v19

    iget v0, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->fwdLevel:I

    move/from16 v33, v0

    if-nez v33, :cond_35

    const/high16 v33, 0x40a00000    # 5.0f

    invoke-static/range {v33 .. v33}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v32

    .line 2694
    :goto_26
    goto/16 :goto_22

    .line 2691
    :cond_34
    const v10, 0x7f020032

    goto :goto_25

    .line 2693
    :cond_35
    const/16 v32, 0x0

    goto :goto_26

    .line 2696
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment$MessagesAdapter;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    move-object/from16 v33, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->msgId:I

    move/from16 v34, v0

    invoke-static/range {v33 .. v34}, Lcom/vkontakte/android/fragments/ChatFragment;->access$7200(Lcom/vkontakte/android/fragments/ChatFragment;I)Z

    move-result v33

    if-eqz v33, :cond_36

    const v10, 0x7f02002d

    .line 2697
    :goto_27
    const/16 v22, 0x0

    .line 2698
    goto/16 :goto_22

    .line 2696
    :cond_36
    const v10, 0x7f02002c

    goto :goto_27

    .line 2700
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment$MessagesAdapter;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    move-object/from16 v33, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->msgId:I

    move/from16 v34, v0

    invoke-static/range {v33 .. v34}, Lcom/vkontakte/android/fragments/ChatFragment;->access$7200(Lcom/vkontakte/android/fragments/ChatFragment;I)Z

    move-result v33

    if-eqz v33, :cond_37

    const v10, 0x7f020031

    .line 2701
    :goto_28
    const/16 v21, 0x0

    move/from16 v22, v21

    goto/16 :goto_22

    .line 2700
    :cond_37
    const v10, 0x7f020030

    goto :goto_28

    .restart local v31    # "wrap":Landroid/view/View;
    :cond_38
    move/from16 v33, v32

    .line 2706
    goto/16 :goto_23

    .line 2709
    .restart local v20    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_39
    const/16 v33, 0x0

    goto/16 :goto_24

    .line 2717
    :cond_3a
    check-cast v27, Landroid/widget/ImageView;

    .end local v27    # "stickerView":Landroid/view/View;
    const/16 v33, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    goto/16 :goto_19

    .line 2731
    .restart local v11    # "fp":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_3b
    move-object/from16 v0, v19

    iget v0, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->type:I

    move/from16 v33, v0

    const/16 v34, 0x2

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_3c

    .line 2732
    const/high16 v33, 0x40400000    # 3.0f

    invoke-static/range {v33 .. v33}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v33

    move/from16 v0, v33

    iput v0, v11, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 2733
    const/16 v33, 0x0

    move/from16 v0, v33

    iput v0, v11, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    goto/16 :goto_1a

    .line 2734
    :cond_3c
    move-object/from16 v0, v19

    iget v0, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->type:I

    move/from16 v33, v0

    const/16 v34, 0x1

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_3d

    .line 2735
    const/high16 v33, 0x40400000    # 3.0f

    invoke-static/range {v33 .. v33}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v33

    move/from16 v0, v33

    iput v0, v11, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 2736
    const/high16 v33, 0x40400000    # 3.0f

    invoke-static/range {v33 .. v33}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v33

    move/from16 v0, v33

    iput v0, v11, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    goto/16 :goto_1a

    .line 2737
    :cond_3d
    move-object/from16 v0, v19

    iget v0, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->type:I

    move/from16 v33, v0

    const/16 v34, 0x3

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_26

    if-lez p1, :cond_26

    .line 2738
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment$MessagesAdapter;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Lcom/vkontakte/android/fragments/ChatFragment;->access$100(Lcom/vkontakte/android/fragments/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v33

    add-int/lit8 v34, p1, -0x1

    invoke-virtual/range {v33 .. v34}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;

    .line 2739
    .local v26, "prevItem":Lcom/vkontakte/android/fragments/ChatFragment$ListItem;
    move-object/from16 v0, v26

    iget v0, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->fwdLevel:I

    move/from16 v33, v0

    if-nez v33, :cond_3e

    .line 2740
    const/16 v33, 0x0

    move/from16 v0, v33

    iput v0, v11, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 2741
    const/high16 v33, 0x40400000    # 3.0f

    invoke-static/range {v33 .. v33}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v33

    move/from16 v0, v33

    iput v0, v11, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto/16 :goto_1a

    .line 2743
    :cond_3e
    const/16 v33, 0x0

    move/from16 v0, v33

    iput v0, v11, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 2744
    const/16 v33, 0x0

    move/from16 v0, v33

    iput v0, v11, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    goto/16 :goto_1a

    .line 2753
    .end local v11    # "fp":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v26    # "prevItem":Lcom/vkontakte/android/fragments/ChatFragment$ListItem;
    :cond_3f
    const/16 v33, 0x4

    goto/16 :goto_1b

    .line 2756
    :cond_40
    const/16 v33, 0x0

    goto/16 :goto_1c

    .line 2663
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch

    .line 2689
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
    .line 2482
    const/4 v0, 0x6

    return v0
.end method

.method public isEnabled(I)Z
    .locals 2
    .param p1, "pos"    # I

    .prologue
    .line 2461
    iget-object v1, p0, Lcom/vkontakte/android/fragments/ChatFragment$MessagesAdapter;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/ChatFragment;->access$100(Lcom/vkontakte/android/fragments/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;

    iget v0, v1, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->type:I

    .line 2462
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
