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
    .line 1633
    iput-object p1, p0, Lcom/vkontakte/android/fragments/ChatFragment$MessagesAdapter;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkontakte/android/fragments/ChatFragment;Lcom/vkontakte/android/fragments/ChatFragment$MessagesAdapter;)V
    .locals 0

    .prologue
    .line 1633
    invoke-direct {p0, p1}, Lcom/vkontakte/android/fragments/ChatFragment$MessagesAdapter;-><init>(Lcom/vkontakte/android/fragments/ChatFragment;)V

    return-void
.end method

.method static synthetic access$1(Lcom/vkontakte/android/fragments/ChatFragment$MessagesAdapter;)Lcom/vkontakte/android/fragments/ChatFragment;
    .locals 1

    .prologue
    .line 1633
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment$MessagesAdapter;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 1637
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
    .line 1642
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 1647
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 1657
    iget-object v1, p0, Lcom/vkontakte/android/fragments/ChatFragment$MessagesAdapter;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/ChatFragment;->access$1(Lcom/vkontakte/android/fragments/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;

    .line 1658
    .local v0, "item":Lcom/vkontakte/android/fragments/ChatFragment$ListItem;
    iget v1, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->type:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    const/4 v1, 0x4

    .line 1662
    :goto_0
    return v1

    .line 1659
    :cond_0
    iget v1, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->fwdLevel:I

    if-lez v1, :cond_2

    .line 1660
    iget-boolean v1, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->isOut:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    goto :goto_0

    .line 1662
    :cond_2
    iget-object v1, p0, Lcom/vkontakte/android/fragments/ChatFragment$MessagesAdapter;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/ChatFragment;->access$1(Lcom/vkontakte/android/fragments/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;

    iget-boolean v1, v1, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->isOut:Z

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    goto :goto_0

    :cond_3
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 36
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 1667
    move-object/from16 v32, p2

    .line 1668
    .local v32, "view":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$MessagesAdapter;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$1(Lcom/vkontakte/android/fragments/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;

    .line 1669
    .local v22, "item":Lcom/vkontakte/android/fragments/ChatFragment$ListItem;
    if-nez v32, :cond_0

    .line 1670
    move-object/from16 v0, v22

    iget v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->type:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_3

    .line 1671
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$MessagesAdapter;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-virtual {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const v4, 0x7f030041

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v32

    .line 1686
    :cond_0
    :goto_0
    const v3, 0x7f0800cd

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/view/ViewGroup;

    .line 1687
    .local v11, "att":Landroid/view/ViewGroup;
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_1
    invoke-virtual {v11}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    move/from16 v0, v18

    if-lt v0, v3, :cond_8

    .line 1693
    const/16 v17, 0x0

    .line 1694
    .local v17, "hasPhotos":Z
    invoke-virtual {v11}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 1695
    new-instance v28, Ljava/util/ArrayList;

    invoke-direct/range {v28 .. v28}, Ljava/util/ArrayList;-><init>()V

    .line 1696
    .local v28, "photos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Photo;>;"
    const/16 v26, 0x0

    .line 1697
    .local v26, "ph":I
    move-object/from16 v0, v22

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_a

    .line 1728
    const/16 v21, 0x0

    .line 1729
    .local v21, "isSticker":Z
    const/16 v19, 0x0

    .line 1730
    .local v19, "idx":I
    move-object/from16 v0, v22

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v35

    :goto_3
    invoke-interface/range {v35 .. v35}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_c

    .line 1772
    move-object/from16 v0, v22

    iget v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->type:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_19

    .line 1773
    move-object/from16 v0, v22

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->text:Ljava/lang/CharSequence;

    if-eqz v3, :cond_16

    .line 1774
    const v3, 0x7f0800cc

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    move-object/from16 v0, v22

    iget-object v4, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->text:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1778
    :goto_4
    move-object/from16 v0, v22

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_17

    const/4 v3, 0x0

    :goto_5
    invoke-virtual {v11, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1779
    const/16 v18, 0x0

    :goto_6
    invoke-virtual {v11}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    move/from16 v0, v18

    if-lt v0, v3, :cond_18

    .line 1921
    :cond_2
    :goto_7
    return-object v32

    .line 1674
    .end local v11    # "att":Landroid/view/ViewGroup;
    .end local v17    # "hasPhotos":Z
    .end local v18    # "i":I
    .end local v19    # "idx":I
    .end local v21    # "isSticker":Z
    .end local v26    # "ph":I
    .end local v28    # "photos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Photo;>;"
    :cond_3
    move-object/from16 v0, v22

    iget v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->fwdLevel:I

    if-nez v3, :cond_5

    .line 1675
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$MessagesAdapter;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-virtual {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    move-object/from16 v0, v22

    iget-boolean v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->isOut:Z

    if-eqz v3, :cond_4

    const v3, 0x7f03003f

    :goto_8
    const/4 v5, 0x0

    invoke-static {v4, v3, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v32

    .line 1678
    :goto_9
    move-object/from16 v0, v22

    iget-boolean v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->isOut:Z

    if-nez v3, :cond_7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$MessagesAdapter;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$5(Lcom/vkontakte/android/fragments/ChatFragment;)I

    move-result v3

    const v4, 0x77359400

    if-ge v3, v4, :cond_7

    .line 1679
    const v3, 0x7f0800ce

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 1675
    :cond_4
    const v3, 0x7f03003d

    goto :goto_8

    .line 1677
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$MessagesAdapter;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-virtual {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    move-object/from16 v0, v22

    iget-boolean v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->isOut:Z

    if-eqz v3, :cond_6

    const v3, 0x7f030040

    :goto_a
    const/4 v5, 0x0

    invoke-static {v4, v3, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v32

    goto :goto_9

    :cond_6
    const v3, 0x7f03003e

    goto :goto_a

    .line 1680
    :cond_7
    move-object/from16 v0, v22

    iget-boolean v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->isOut:Z

    if-nez v3, :cond_0

    .line 1681
    const v3, 0x7f0800ce

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkontakte/android/fragments/ChatFragment$MessagesAdapter;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v4}, Lcom/vkontakte/android/fragments/ChatFragment;->access$26(Lcom/vkontakte/android/fragments/ChatFragment;)Landroid/view/View$OnClickListener;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 1688
    .restart local v11    # "att":Landroid/view/ViewGroup;
    .restart local v18    # "i":I
    :cond_8
    move/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 1689
    .local v12, "av":Landroid/view/View;
    invoke-virtual {v12}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_9

    invoke-virtual {v12}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 1690
    invoke-virtual {v12}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v12, v3}, Lcom/vkontakte/android/Attachment;->reuseView(Landroid/view/View;Ljava/lang/String;)V

    .line 1687
    :cond_9
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_1

    .line 1697
    .end local v12    # "av":Landroid/view/View;
    .restart local v17    # "hasPhotos":Z
    .restart local v26    # "ph":I
    .restart local v28    # "photos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Photo;>;"
    :cond_a
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/vkontakte/android/Attachment;

    .line 1698
    .local v9, "a":Lcom/vkontakte/android/Attachment;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkontakte/android/fragments/ChatFragment$MessagesAdapter;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-virtual {v4}, Lcom/vkontakte/android/fragments/ChatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v9, v4}, Lcom/vkontakte/android/Attachment;->getFullView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v31

    .line 1699
    .local v31, "v":Landroid/view/View;
    move-object/from16 v0, v31

    invoke-virtual {v11, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1700
    instance-of v4, v9, Lcom/vkontakte/android/ThumbAttachment;

    if-eqz v4, :cond_b

    const/16 v17, 0x1

    .line 1701
    :cond_b
    instance-of v4, v9, Lcom/vkontakte/android/PhotoAttachment;

    if-eqz v4, :cond_1

    instance-of v4, v9, Lcom/vkontakte/android/AlbumAttachment;

    if-nez v4, :cond_1

    .line 1702
    move/from16 v27, v26

    .line 1703
    .local v27, "photoIdx":I
    add-int/lit8 v26, v26, 0x1

    .line 1704
    new-instance v4, Lcom/vkontakte/android/Photo;

    check-cast v9, Lcom/vkontakte/android/PhotoAttachment;

    .end local v9    # "a":Lcom/vkontakte/android/Attachment;
    invoke-direct {v4, v9}, Lcom/vkontakte/android/Photo;-><init>(Lcom/vkontakte/android/PhotoAttachment;)V

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1705
    new-instance v4, Lcom/vkontakte/android/fragments/ChatFragment$MessagesAdapter$1;

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move/from16 v2, v27

    invoke-direct {v4, v0, v1, v2}, Lcom/vkontakte/android/fragments/ChatFragment$MessagesAdapter$1;-><init>(Lcom/vkontakte/android/fragments/ChatFragment$MessagesAdapter;Ljava/util/ArrayList;I)V

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_2

    .line 1730
    .end local v27    # "photoIdx":I
    .end local v31    # "v":Landroid/view/View;
    .restart local v19    # "idx":I
    .restart local v21    # "isSticker":Z
    :cond_c
    invoke-interface/range {v35 .. v35}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/vkontakte/android/Attachment;

    .line 1731
    .restart local v9    # "a":Lcom/vkontakte/android/Attachment;
    instance-of v3, v9, Lcom/vkontakte/android/AlbumAttachment;

    if-eqz v3, :cond_f

    .line 1732
    check-cast v9, Lcom/vkontakte/android/PhotoAttachment;

    .end local v9    # "a":Lcom/vkontakte/android/Attachment;
    invoke-virtual {v9}, Lcom/vkontakte/android/PhotoAttachment;->getThumbURL()Ljava/lang/String;

    move-result-object v30

    .line 1733
    .local v30, "src":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$MessagesAdapter;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$27(Lcom/vkontakte/android/fragments/ChatFragment;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    move-result-object v3

    move-object/from16 v0, v30

    invoke-virtual {v3, v0}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->isAlreadyLoaded(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$MessagesAdapter;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$27(Lcom/vkontakte/android/fragments/ChatFragment;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    move-result-object v3

    move-object/from16 v0, v30

    invoke-virtual {v3, v0}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_e

    .line 1734
    const v3, 0x7f0800cd

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f080013

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkontakte/android/fragments/ChatFragment$MessagesAdapter;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v4}, Lcom/vkontakte/android/fragments/ChatFragment;->access$27(Lcom/vkontakte/android/fragments/ChatFragment;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    move-result-object v4

    move-object/from16 v0, v30

    invoke-virtual {v4, v0}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1735
    const v3, 0x7f0800cd

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f080013

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/vkontakte/android/PhotoAttachment$FixedSizeImageView;

    invoke-virtual {v3}, Lcom/vkontakte/android/PhotoAttachment$FixedSizeImageView;->dontAnimate()V

    .line 1769
    .end local v30    # "src":Ljava/lang/String;
    :cond_d
    :goto_b
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_3

    .line 1737
    .restart local v30    # "src":Ljava/lang/String;
    :cond_e
    const v3, 0x7f0800cd

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f080013

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    const v4, 0x7f020209

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_b

    .line 1738
    .end local v30    # "src":Ljava/lang/String;
    .restart local v9    # "a":Lcom/vkontakte/android/Attachment;
    :cond_f
    instance-of v3, v9, Lcom/vkontakte/android/PhotoAttachment;

    if-eqz v3, :cond_11

    .line 1739
    check-cast v9, Lcom/vkontakte/android/PhotoAttachment;

    .end local v9    # "a":Lcom/vkontakte/android/Attachment;
    invoke-virtual {v9}, Lcom/vkontakte/android/PhotoAttachment;->getThumbURL()Ljava/lang/String;

    move-result-object v30

    .line 1740
    .restart local v30    # "src":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$MessagesAdapter;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$27(Lcom/vkontakte/android/fragments/ChatFragment;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    move-result-object v3

    move-object/from16 v0, v30

    invoke-virtual {v3, v0}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->isAlreadyLoaded(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_10

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$MessagesAdapter;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$27(Lcom/vkontakte/android/fragments/ChatFragment;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    move-result-object v3

    move-object/from16 v0, v30

    invoke-virtual {v3, v0}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_10

    .line 1741
    const v3, 0x7f0800cd

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkontakte/android/fragments/ChatFragment$MessagesAdapter;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v4}, Lcom/vkontakte/android/fragments/ChatFragment;->access$27(Lcom/vkontakte/android/fragments/ChatFragment;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    move-result-object v4

    move-object/from16 v0, v30

    invoke-virtual {v4, v0}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1742
    const v3, 0x7f0800cd

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/vkontakte/android/PhotoAttachment$FixedSizeImageView;

    invoke-virtual {v3}, Lcom/vkontakte/android/PhotoAttachment$FixedSizeImageView;->dontAnimate()V

    goto/16 :goto_b

    .line 1744
    :cond_10
    const v3, 0x7f0800cd

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    const v4, 0x7f020209

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_b

    .line 1746
    .end local v30    # "src":Ljava/lang/String;
    .restart local v9    # "a":Lcom/vkontakte/android/Attachment;
    :cond_11
    instance-of v3, v9, Lcom/vkontakte/android/VideoAttachment;

    if-eqz v3, :cond_12

    .line 1747
    check-cast v9, Lcom/vkontakte/android/VideoAttachment;

    .end local v9    # "a":Lcom/vkontakte/android/Attachment;
    iget-object v0, v9, Lcom/vkontakte/android/VideoAttachment;->image:Ljava/lang/String;

    move-object/from16 v30, v0

    .line 1748
    .restart local v30    # "src":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$MessagesAdapter;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$27(Lcom/vkontakte/android/fragments/ChatFragment;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    move-result-object v3

    move-object/from16 v0, v30

    invoke-virtual {v3, v0}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->isAlreadyLoaded(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 1749
    const v3, 0x7f0800cd

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/vkontakte/android/VideoAttachView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkontakte/android/fragments/ChatFragment$MessagesAdapter;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v4}, Lcom/vkontakte/android/fragments/ChatFragment;->access$27(Lcom/vkontakte/android/fragments/ChatFragment;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    move-result-object v4

    move-object/from16 v0, v30

    invoke-virtual {v4, v0}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/vkontakte/android/VideoAttachView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_b

    .line 1750
    .end local v30    # "src":Ljava/lang/String;
    .restart local v9    # "a":Lcom/vkontakte/android/Attachment;
    :cond_12
    instance-of v3, v9, Lcom/vkontakte/android/GeoAttachment;

    if-eqz v3, :cond_13

    move-object/from16 v16, v9

    .line 1751
    check-cast v16, Lcom/vkontakte/android/GeoAttachment;

    .line 1752
    .local v16, "ga":Lcom/vkontakte/android/GeoAttachment;
    move-object/from16 v0, v16

    iget-wide v3, v0, Lcom/vkontakte/android/GeoAttachment;->lat:D

    move-object/from16 v0, v16

    iget-wide v5, v0, Lcom/vkontakte/android/GeoAttachment;->lon:D

    const/16 v7, 0x12c

    const/16 v8, 0x82

    invoke-static/range {v3 .. v8}, Lcom/vkontakte/android/Global;->getStaticMapURL(DDII)Ljava/lang/String;

    move-result-object v30

    .line 1753
    .restart local v30    # "src":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$MessagesAdapter;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$27(Lcom/vkontakte/android/fragments/ChatFragment;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    move-result-object v3

    move-object/from16 v0, v30

    invoke-virtual {v3, v0}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->isAlreadyLoaded(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 1754
    const v3, 0x7f0800cd

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkontakte/android/fragments/ChatFragment$MessagesAdapter;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v4}, Lcom/vkontakte/android/fragments/ChatFragment;->access$27(Lcom/vkontakte/android/fragments/ChatFragment;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    move-result-object v4

    move-object/from16 v0, v30

    invoke-virtual {v4, v0}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_b

    .line 1755
    .end local v16    # "ga":Lcom/vkontakte/android/GeoAttachment;
    .end local v30    # "src":Ljava/lang/String;
    :cond_13
    instance-of v3, v9, Lcom/vkontakte/android/DocumentAttachment;

    if-eqz v3, :cond_14

    move-object v3, v9

    check-cast v3, Lcom/vkontakte/android/DocumentAttachment;

    iget-object v3, v3, Lcom/vkontakte/android/DocumentAttachment;->thumb:Ljava/lang/String;

    if-eqz v3, :cond_14

    move-object v3, v9

    check-cast v3, Lcom/vkontakte/android/DocumentAttachment;

    iget-object v3, v3, Lcom/vkontakte/android/DocumentAttachment;->thumb:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_14

    .line 1756
    check-cast v9, Lcom/vkontakte/android/DocumentAttachment;

    .end local v9    # "a":Lcom/vkontakte/android/Attachment;
    iget-object v0, v9, Lcom/vkontakte/android/DocumentAttachment;->thumb:Ljava/lang/String;

    move-object/from16 v30, v0

    .line 1757
    .restart local v30    # "src":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$MessagesAdapter;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$27(Lcom/vkontakte/android/fragments/ChatFragment;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    move-result-object v3

    move-object/from16 v0, v30

    invoke-virtual {v3, v0}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->isAlreadyLoaded(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 1758
    const v3, 0x7f0800cd

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    const v4, 0x7f08004c

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkontakte/android/fragments/ChatFragment$MessagesAdapter;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v4}, Lcom/vkontakte/android/fragments/ChatFragment;->access$27(Lcom/vkontakte/android/fragments/ChatFragment;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    move-result-object v4

    move-object/from16 v0, v30

    invoke-virtual {v4, v0}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_b

    .line 1759
    .end local v30    # "src":Ljava/lang/String;
    .restart local v9    # "a":Lcom/vkontakte/android/Attachment;
    :cond_14
    instance-of v3, v9, Lcom/vkontakte/android/StickerAttachment;

    if-eqz v3, :cond_d

    .line 1760
    const/16 v21, 0x1

    .line 1761
    check-cast v9, Lcom/vkontakte/android/StickerAttachment;

    .end local v9    # "a":Lcom/vkontakte/android/Attachment;
    iget-object v3, v9, Lcom/vkontakte/android/StickerAttachment;->images:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkontakte/android/fragments/ChatFragment$MessagesAdapter;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v4}, Lcom/vkontakte/android/fragments/ChatFragment;->access$28(Lcom/vkontakte/android/fragments/ChatFragment;)I

    move-result v4

    aget-object v30, v3, v4

    .line 1762
    .restart local v30    # "src":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$MessagesAdapter;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$27(Lcom/vkontakte/android/fragments/ChatFragment;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    move-result-object v3

    move-object/from16 v0, v30

    invoke-virtual {v3, v0}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->isAlreadyLoaded(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_15

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$MessagesAdapter;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$27(Lcom/vkontakte/android/fragments/ChatFragment;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    move-result-object v3

    move-object/from16 v0, v30

    invoke-virtual {v3, v0}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_15

    .line 1763
    const v3, 0x7f0800cd

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkontakte/android/fragments/ChatFragment$MessagesAdapter;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v4}, Lcom/vkontakte/android/fragments/ChatFragment;->access$27(Lcom/vkontakte/android/fragments/ChatFragment;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    move-result-object v4

    move-object/from16 v0, v30

    invoke-virtual {v4, v0}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_b

    .line 1765
    :cond_15
    const v3, 0x7f0800cd

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    const v4, 0x7f02022c

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_b

    .line 1776
    .end local v30    # "src":Ljava/lang/String;
    :cond_16
    const v3, 0x7f0800cc

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    move-object/from16 v0, v22

    iget v4, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->time:I

    invoke-static {v4}, Lcom/vkontakte/android/Global;->langDateDay(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 1778
    :cond_17
    const/16 v3, 0x8

    goto/16 :goto_5

    .line 1780
    :cond_18
    move/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    check-cast v23, Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;

    .line 1781
    .local v23, "lp":Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;
    const/4 v3, 0x0

    move-object/from16 v0, v23

    iput v3, v0, Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;->vertical_spacing:I

    .line 1782
    move/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1779
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_6

    .line 1785
    .end local v23    # "lp":Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;
    :cond_19
    const v3, 0x7f0800cc

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    move-object/from16 v0, v22

    iget-object v4, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->text:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1786
    const v3, 0x7f0800cc

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    move-object/from16 v0, v22

    iget-boolean v4, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->hasLinks:Z

    if-eqz v4, :cond_1f

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v4

    :goto_c
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 1787
    const v3, 0x7f0800cc

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setFocusable(Z)V

    .line 1788
    const v3, 0x7f0800d0

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    move-object/from16 v0, v22

    iget v4, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->time:I

    invoke-static {v4}, Lcom/vkontakte/android/Global;->time(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1789
    move-object/from16 v0, v22

    iget-boolean v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->isOut:Z

    if-eqz v3, :cond_23

    .line 1790
    move-object/from16 v0, v22

    iget v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->time:I

    if-lez v3, :cond_22

    .line 1791
    move-object/from16 v0, v22

    iget v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->msgId:I

    if-gez v3, :cond_20

    move-object/from16 v0, v22

    iget-boolean v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->isFailed:Z

    if-nez v3, :cond_20

    .line 1792
    const v3, 0x7f0800d0

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1793
    const v3, 0x7f0800d2

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1794
    const v3, 0x7f0800d1

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1812
    :goto_d
    invoke-virtual {v11}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1813
    .local v10, "ap":Landroid/view/ViewGroup$MarginLayoutParams;
    if-eqz v17, :cond_25

    move-object/from16 v0, v22

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->text:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_25

    const/4 v3, 0x0

    :goto_e
    iput v3, v10, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1816
    const v3, 0x7f0800cc

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object/from16 v0, v22

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->text:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_26

    const/4 v3, 0x0

    :goto_f
    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1817
    move-object/from16 v0, v22

    iget-boolean v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->isOut:Z

    if-nez v3, :cond_1a

    const v3, 0x7f0800ce

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v0, v22

    iget v4, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->msgId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1819
    :cond_1a
    move-object/from16 v0, v22

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->images:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_10
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_27

    .line 1827
    move-object/from16 v0, v22

    iget-boolean v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->readState:Z

    if-eqz v3, :cond_29

    const/4 v3, 0x0

    :goto_11
    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1828
    move-object/from16 v0, v22

    iget-boolean v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->isOut:Z

    if-eqz v3, :cond_31

    .line 1829
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$MessagesAdapter;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    move-object/from16 v0, v22

    iget v4, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->msgId:I

    invoke-static {v3, v4}, Lcom/vkontakte/android/fragments/ChatFragment;->access$29(Lcom/vkontakte/android/fragments/ChatFragment;I)Z

    move-result v3

    if-eqz v3, :cond_2a

    const v13, 0x7f0200a4

    .line 1830
    .local v13, "bgRes":I
    :goto_12
    const/high16 v3, 0x40800000    # 4.0f

    invoke-static {v3}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v25

    .local v25, "padTop":I
    const/high16 v3, 0x40800000    # 4.0f

    invoke-static {v3}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v24

    .line 1831
    .local v24, "padBtm":I
    const/16 v34, -0x1

    .line 1832
    .local v34, "wrapPadBtm":I
    move-object/from16 v0, v22

    iget v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->type:I

    packed-switch v3, :pswitch_data_0

    .line 1847
    :goto_13
    const v3, 0x7f0800cf

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v33

    .line 1848
    .local v33, "wrap":Landroid/view/View;
    move-object/from16 v0, v33

    invoke-virtual {v0, v13}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1849
    invoke-virtual/range {v33 .. v33}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    invoke-virtual/range {v33 .. v33}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    invoke-virtual/range {v33 .. v33}, Landroid/view/View;->getPaddingRight()I

    move-result v6

    const/4 v3, -0x1

    move/from16 v0, v34

    if-ne v0, v3, :cond_2f

    invoke-virtual/range {v33 .. v33}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    :goto_14
    move-object/from16 v0, v33

    invoke-virtual {v0, v4, v5, v6, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 1850
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v32

    move/from16 v1, v25

    move/from16 v2, v24

    invoke-virtual {v0, v3, v1, v4, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 1851
    const v3, 0x7f0800cf

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    check-cast v23, Landroid/widget/LinearLayout$LayoutParams;

    .line 1852
    .local v23, "lp":Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, v22

    iget v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->type:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_30

    const/4 v3, 0x1

    :goto_15
    int-to-float v3, v3

    move-object/from16 v0, v23

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 1853
    const v3, 0x7f0800cf

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1881
    :goto_16
    if-eqz v21, :cond_1b

    move-object/from16 v0, v22

    iget v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->fwdLevel:I

    if-nez v3, :cond_1b

    .line 1882
    const v3, 0x7f0800cf

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1885
    :cond_1b
    move-object/from16 v0, v22

    iget v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->fwdLevel:I

    if-lez v3, :cond_1d

    .line 1886
    const v3, 0x7f0800ca

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    move-object/from16 v0, v22

    iget-object v4, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->fwdName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1887
    const v3, 0x7f0800cb

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkontakte/android/fragments/ChatFragment$MessagesAdapter;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-virtual {v4}, Lcom/vkontakte/android/fragments/ChatFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    move-object/from16 v0, v22

    iget v5, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->fwdTime:I

    invoke-static {v4, v5}, Lcom/vkontakte/android/Global;->langDate(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1888
    const v3, 0x7f0800c8

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/vkontakte/android/ui/FwdMessageLevelView;

    move-object/from16 v0, v22

    iget v4, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->fwdLevel:I

    invoke-virtual {v3, v4}, Lcom/vkontakte/android/ui/FwdMessageLevelView;->setLevel(I)V

    .line 1889
    const v3, 0x7f0800c7

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v0, v22

    iget v4, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->fwdUid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1890
    const v3, 0x7f0800c7

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkontakte/android/fragments/ChatFragment$MessagesAdapter;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v4}, Lcom/vkontakte/android/fragments/ChatFragment;->access$30(Lcom/vkontakte/android/fragments/ChatFragment;)Landroid/view/View$OnClickListener;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1891
    const v3, 0x7f0800c8

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1892
    .local v14, "fp":Landroid/widget/RelativeLayout$LayoutParams;
    move-object/from16 v0, v22

    iget v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->type:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_39

    .line 1893
    const/4 v3, 0x0

    iput v3, v14, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 1894
    const/high16 v3, 0x40400000    # 3.0f

    invoke-static {v3}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v3

    iput v3, v14, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 1911
    :cond_1c
    :goto_17
    const v3, 0x7f0800c8

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v14}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1912
    const v3, 0x7f0800c7

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1913
    .local v15, "fp2":Landroid/widget/RelativeLayout$LayoutParams;
    iget v3, v14, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iput v3, v15, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 1914
    const v3, 0x7f0800c7

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v15}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1916
    .end local v14    # "fp":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v15    # "fp2":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_1d
    move-object/from16 v0, v22

    iget-boolean v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->isOut:Z

    if-nez v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$MessagesAdapter;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$5(Lcom/vkontakte/android/fragments/ChatFragment;)I

    move-result v3

    const v4, 0x77359400

    if-le v3, v4, :cond_2

    .line 1917
    const v3, 0x7f0800ce

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object/from16 v0, v22

    iget v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->type:I

    const/4 v5, 0x4

    if-eq v3, v5, :cond_1e

    move-object/from16 v0, v22

    iget v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->type:I

    const/4 v5, 0x1

    if-ne v3, v5, :cond_3d

    :cond_1e
    const/4 v3, 0x0

    :goto_18
    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_7

    .line 1786
    .end local v10    # "ap":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v13    # "bgRes":I
    .end local v23    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v24    # "padBtm":I
    .end local v25    # "padTop":I
    .end local v33    # "wrap":Landroid/view/View;
    .end local v34    # "wrapPadBtm":I
    :cond_1f
    const/4 v4, 0x0

    goto/16 :goto_c

    .line 1795
    :cond_20
    move-object/from16 v0, v22

    iget-boolean v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->isFailed:Z

    if-nez v3, :cond_21

    .line 1796
    const v3, 0x7f0800d0

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1797
    const v3, 0x7f0800d2

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1798
    const v3, 0x7f0800d1

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_d

    .line 1800
    :cond_21
    const v3, 0x7f0800d0

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1801
    const v3, 0x7f0800d2

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1802
    const v3, 0x7f0800d1

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_d

    .line 1805
    :cond_22
    const v3, 0x7f0800d0

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1806
    const v3, 0x7f0800d2

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1807
    const v3, 0x7f0800d1

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_d

    .line 1810
    :cond_23
    const v3, 0x7f0800d0

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object/from16 v0, v22

    iget v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->time:I

    if-lez v3, :cond_24

    move-object/from16 v0, v22

    iget v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->fwdLevel:I

    if-nez v3, :cond_24

    const/4 v3, 0x0

    :goto_19
    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_d

    :cond_24
    const/4 v3, 0x4

    goto :goto_19

    .line 1813
    .restart local v10    # "ap":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_25
    const/high16 v3, 0x40400000    # 3.0f

    invoke-static {v3}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v3

    goto/16 :goto_e

    .line 1816
    :cond_26
    const/16 v3, 0x8

    goto/16 :goto_f

    .line 1819
    :cond_27
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/vkontakte/android/fragments/ChatFragment$Image;

    .line 1821
    .local v20, "img":Lcom/vkontakte/android/fragments/ChatFragment$Image;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$MessagesAdapter;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$27(Lcom/vkontakte/android/fragments/ChatFragment;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    move-result-object v3

    move-object/from16 v0, v20

    iget-object v5, v0, Lcom/vkontakte/android/fragments/ChatFragment$Image;->url:Ljava/lang/String;

    invoke-virtual {v3, v5}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->isAlreadyLoaded(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_28

    .line 1822
    move-object/from16 v0, v20

    iget v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$Image;->viewId:I

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/vkontakte/android/fragments/ChatFragment$MessagesAdapter;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v5}, Lcom/vkontakte/android/fragments/ChatFragment;->access$27(Lcom/vkontakte/android/fragments/ChatFragment;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    move-result-object v5

    move-object/from16 v0, v20

    iget-object v6, v0, Lcom/vkontakte/android/fragments/ChatFragment$Image;->url:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_10

    .line 1824
    :cond_28
    move-object/from16 v0, v20

    iget v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$Image;->viewId:I

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    const v5, 0x7f020248

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_10

    .line 1827
    .end local v20    # "img":Lcom/vkontakte/android/fragments/ChatFragment$Image;
    :cond_29
    const v3, -0x291f18

    goto/16 :goto_11

    .line 1829
    :cond_2a
    const v13, 0x7f0200a3

    goto/16 :goto_12

    .line 1834
    .restart local v13    # "bgRes":I
    .restart local v24    # "padBtm":I
    .restart local v25    # "padTop":I
    .restart local v34    # "wrapPadBtm":I
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$MessagesAdapter;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    move-object/from16 v0, v22

    iget v4, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->msgId:I

    invoke-static {v3, v4}, Lcom/vkontakte/android/fragments/ChatFragment;->access$29(Lcom/vkontakte/android/fragments/ChatFragment;I)Z

    move-result v3

    if-eqz v3, :cond_2b

    const v13, 0x7f0200a8

    .line 1835
    :goto_1a
    const/16 v24, 0x0

    .line 1836
    move-object/from16 v0, v22

    iget v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->fwdLevel:I

    if-nez v3, :cond_2c

    const/high16 v3, 0x40a00000    # 5.0f

    invoke-static {v3}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v34

    .line 1837
    :goto_1b
    goto/16 :goto_13

    .line 1834
    :cond_2b
    const v13, 0x7f0200a7

    goto :goto_1a

    .line 1836
    :cond_2c
    const/16 v34, 0x0

    goto :goto_1b

    .line 1839
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$MessagesAdapter;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    move-object/from16 v0, v22

    iget v4, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->msgId:I

    invoke-static {v3, v4}, Lcom/vkontakte/android/fragments/ChatFragment;->access$29(Lcom/vkontakte/android/fragments/ChatFragment;I)Z

    move-result v3

    if-eqz v3, :cond_2d

    const v13, 0x7f0200a2

    .line 1840
    :goto_1c
    const/16 v25, 0x0

    .line 1841
    goto/16 :goto_13

    .line 1839
    :cond_2d
    const v13, 0x7f0200a1

    goto :goto_1c

    .line 1843
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$MessagesAdapter;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    move-object/from16 v0, v22

    iget v4, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->msgId:I

    invoke-static {v3, v4}, Lcom/vkontakte/android/fragments/ChatFragment;->access$29(Lcom/vkontakte/android/fragments/ChatFragment;I)Z

    move-result v3

    if-eqz v3, :cond_2e

    const v13, 0x7f0200a6

    .line 1844
    :goto_1d
    const/16 v24, 0x0

    move/from16 v25, v24

    goto/16 :goto_13

    .line 1843
    :cond_2e
    const v13, 0x7f0200a5

    goto :goto_1d

    .restart local v33    # "wrap":Landroid/view/View;
    :cond_2f
    move/from16 v3, v34

    .line 1849
    goto/16 :goto_14

    .line 1852
    .restart local v23    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_30
    const/4 v3, 0x0

    goto/16 :goto_15

    .line 1855
    .end local v13    # "bgRes":I
    .end local v23    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v24    # "padBtm":I
    .end local v25    # "padTop":I
    .end local v33    # "wrap":Landroid/view/View;
    .end local v34    # "wrapPadBtm":I
    :cond_31
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$MessagesAdapter;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    move-object/from16 v0, v22

    iget v4, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->msgId:I

    invoke-static {v3, v4}, Lcom/vkontakte/android/fragments/ChatFragment;->access$29(Lcom/vkontakte/android/fragments/ChatFragment;I)Z

    move-result v3

    if-eqz v3, :cond_32

    const v13, 0x7f02009c

    .line 1856
    .restart local v13    # "bgRes":I
    :goto_1e
    const/high16 v3, 0x40800000    # 4.0f

    invoke-static {v3}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v25

    .restart local v25    # "padTop":I
    const/high16 v3, 0x40800000    # 4.0f

    invoke-static {v3}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v24

    .line 1857
    .restart local v24    # "padBtm":I
    const/16 v34, -0x1

    .line 1858
    .restart local v34    # "wrapPadBtm":I
    move-object/from16 v0, v22

    iget v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->type:I

    packed-switch v3, :pswitch_data_1

    .line 1873
    :goto_1f
    const v3, 0x7f0800cf

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v33

    .line 1874
    .restart local v33    # "wrap":Landroid/view/View;
    move-object/from16 v0, v33

    invoke-virtual {v0, v13}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1875
    invoke-virtual/range {v33 .. v33}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    invoke-virtual/range {v33 .. v33}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    invoke-virtual/range {v33 .. v33}, Landroid/view/View;->getPaddingRight()I

    move-result v6

    const/4 v3, -0x1

    move/from16 v0, v34

    if-ne v0, v3, :cond_37

    invoke-virtual/range {v33 .. v33}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    :goto_20
    move-object/from16 v0, v33

    invoke-virtual {v0, v4, v5, v6, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 1876
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v32

    move/from16 v1, v25

    move/from16 v2, v24

    invoke-virtual {v0, v3, v1, v4, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 1877
    const v3, 0x7f0800cf

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    check-cast v23, Landroid/widget/LinearLayout$LayoutParams;

    .line 1878
    .restart local v23    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, v22

    iget v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->type:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_38

    const/4 v3, 0x1

    :goto_21
    int-to-float v3, v3

    move-object/from16 v0, v23

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 1879
    const v3, 0x7f0800cf

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_16

    .line 1855
    .end local v13    # "bgRes":I
    .end local v23    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v24    # "padBtm":I
    .end local v25    # "padTop":I
    .end local v33    # "wrap":Landroid/view/View;
    .end local v34    # "wrapPadBtm":I
    :cond_32
    const v13, 0x7f02009b

    goto :goto_1e

    .line 1860
    .restart local v13    # "bgRes":I
    .restart local v24    # "padBtm":I
    .restart local v25    # "padTop":I
    .restart local v34    # "wrapPadBtm":I
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$MessagesAdapter;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    move-object/from16 v0, v22

    iget v4, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->msgId:I

    invoke-static {v3, v4}, Lcom/vkontakte/android/fragments/ChatFragment;->access$29(Lcom/vkontakte/android/fragments/ChatFragment;I)Z

    move-result v3

    if-eqz v3, :cond_33

    const v13, 0x7f0200a0

    .line 1861
    :goto_22
    const/16 v24, 0x0

    .line 1862
    move-object/from16 v0, v22

    iget v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->fwdLevel:I

    if-nez v3, :cond_34

    const/high16 v3, 0x40a00000    # 5.0f

    invoke-static {v3}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v34

    .line 1863
    :goto_23
    goto/16 :goto_1f

    .line 1860
    :cond_33
    const v13, 0x7f02009f

    goto :goto_22

    .line 1862
    :cond_34
    const/16 v34, 0x0

    goto :goto_23

    .line 1865
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$MessagesAdapter;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    move-object/from16 v0, v22

    iget v4, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->msgId:I

    invoke-static {v3, v4}, Lcom/vkontakte/android/fragments/ChatFragment;->access$29(Lcom/vkontakte/android/fragments/ChatFragment;I)Z

    move-result v3

    if-eqz v3, :cond_35

    const v13, 0x7f02009a

    .line 1866
    :goto_24
    const/16 v25, 0x0

    .line 1867
    goto/16 :goto_1f

    .line 1865
    :cond_35
    const v13, 0x7f020099

    goto :goto_24

    .line 1869
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$MessagesAdapter;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    move-object/from16 v0, v22

    iget v4, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->msgId:I

    invoke-static {v3, v4}, Lcom/vkontakte/android/fragments/ChatFragment;->access$29(Lcom/vkontakte/android/fragments/ChatFragment;I)Z

    move-result v3

    if-eqz v3, :cond_36

    const v13, 0x7f02009e

    .line 1870
    :goto_25
    const/16 v24, 0x0

    move/from16 v25, v24

    goto/16 :goto_1f

    .line 1869
    :cond_36
    const v13, 0x7f02009d

    goto :goto_25

    .restart local v33    # "wrap":Landroid/view/View;
    :cond_37
    move/from16 v3, v34

    .line 1875
    goto/16 :goto_20

    .line 1878
    .restart local v23    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_38
    const/4 v3, 0x0

    goto :goto_21

    .line 1895
    .restart local v14    # "fp":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_39
    move-object/from16 v0, v22

    iget v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->type:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3a

    .line 1896
    const/high16 v3, 0x40400000    # 3.0f

    invoke-static {v3}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v3

    iput v3, v14, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 1897
    const/4 v3, 0x0

    iput v3, v14, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    goto/16 :goto_17

    .line 1898
    :cond_3a
    move-object/from16 v0, v22

    iget v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->type:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3b

    .line 1899
    const/high16 v3, 0x40400000    # 3.0f

    invoke-static {v3}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v3

    iput v3, v14, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 1900
    const/high16 v3, 0x40400000    # 3.0f

    invoke-static {v3}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v3

    iput v3, v14, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    goto/16 :goto_17

    .line 1901
    :cond_3b
    move-object/from16 v0, v22

    iget v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->type:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1c

    if-lez p1, :cond_1c

    .line 1902
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$MessagesAdapter;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$1(Lcom/vkontakte/android/fragments/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v3

    add-int/lit8 v4, p1, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;

    .line 1903
    .local v29, "prevItem":Lcom/vkontakte/android/fragments/ChatFragment$ListItem;
    move-object/from16 v0, v29

    iget v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->fwdLevel:I

    if-nez v3, :cond_3c

    .line 1904
    const/4 v3, 0x0

    iput v3, v14, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 1905
    const/high16 v3, 0x40400000    # 3.0f

    invoke-static {v3}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v3

    iput v3, v14, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto/16 :goto_17

    .line 1907
    :cond_3c
    const/4 v3, 0x0

    iput v3, v14, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 1908
    const/4 v3, 0x0

    iput v3, v14, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    goto/16 :goto_17

    .line 1917
    .end local v14    # "fp":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v29    # "prevItem":Lcom/vkontakte/android/fragments/ChatFragment$ListItem;
    :cond_3d
    const/4 v3, 0x4

    goto/16 :goto_18

    .line 1832
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch

    .line 1858
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
    .line 1652
    const/4 v0, 0x5

    return v0
.end method
