.class Lcom/vkontakte/android/fragments/BoardTopicViewFragment$CommentsAdapter;
.super Landroid/widget/BaseAdapter;
.source "BoardTopicViewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/fragments/BoardTopicViewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CommentsAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;


# direct methods
.method private constructor <init>(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;)V
    .locals 0

    .prologue
    .line 439
    iput-object p1, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$CommentsAdapter;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;Lcom/vkontakte/android/fragments/BoardTopicViewFragment$CommentsAdapter;)V
    .locals 0

    .prologue
    .line 439
    invoke-direct {p0, p1}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$CommentsAdapter;-><init>(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 443
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$CommentsAdapter;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->access$0(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 448
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 453
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 458
    move-object v7, p2

    .line 459
    .local v7, "view":Landroid/view/View;
    if-nez v7, :cond_0

    .line 460
    iget-object v8, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$CommentsAdapter;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    invoke-virtual {v8}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    const v9, 0x7f030095

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 461
    iget-object v8, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$CommentsAdapter;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    invoke-static {v8}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->access$1(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 462
    const v8, 0x7f0901df

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iget-object v9, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$CommentsAdapter;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    invoke-virtual {v8, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 463
    const v8, 0x7f090113

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 465
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 466
    iget-object v8, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$CommentsAdapter;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    invoke-static {v8}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->access$0(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vkontakte/android/api/BoardComment;

    .line 467
    .local v3, "c":Lcom/vkontakte/android/api/BoardComment;
    const v8, 0x7f09010e

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iget-object v9, v3, Lcom/vkontakte/android/api/BoardComment;->userName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 468
    const v8, 0x7f090111

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iget-object v9, v3, Lcom/vkontakte/android/api/BoardComment;->text:Ljava/lang/CharSequence;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 469
    const v8, 0x7f09010f

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iget v9, v3, Lcom/vkontakte/android/api/BoardComment;->time:I

    iget-object v10, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$CommentsAdapter;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    invoke-virtual {v10}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/vkontakte/android/Global;->langDateRelative(ILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 471
    const v8, 0x7f090111

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    iget-object v8, v3, Lcom/vkontakte/android/api/BoardComment;->text:Ljava/lang/CharSequence;

    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-lez v8, :cond_1

    const/4 v8, 0x0

    :goto_0
    invoke-virtual {v9, v8}, Landroid/view/View;->setVisibility(I)V

    .line 473
    iget-object v8, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$CommentsAdapter;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    invoke-static {v8}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->access$2(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    move-result-object v8

    iget-object v9, v3, Lcom/vkontakte/android/api/BoardComment;->userPhoto:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->isAlreadyLoaded(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 474
    const v8, 0x7f0901df

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iget-object v9, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$CommentsAdapter;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    invoke-static {v9}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->access$2(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    move-result-object v9

    iget-object v10, v3, Lcom/vkontakte/android/api/BoardComment;->userPhoto:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 478
    :goto_1
    const v8, 0x7f0901df

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iget v9, v3, Lcom/vkontakte/android/api/BoardComment;->uid:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 479
    const v8, 0x7f09009a

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 480
    .local v1, "attview":Landroid/view/ViewGroup;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    if-lt v4, v8, :cond_3

    .line 487
    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 489
    iget-object v8, v3, Lcom/vkontakte/android/api/BoardComment;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_5

    .line 490
    iget-object v8, v3, Lcom/vkontakte/android/api/BoardComment;->attachments:Ljava/util/ArrayList;

    const/4 v9, 0x0

    const v10, 0x7f09009a

    invoke-static {v7, v8, v9, v10}, Lcom/vkontakte/android/NewsItemView;->addAttachments(Landroid/view/View;Ljava/util/ArrayList;Lcom/vkontakte/android/NewsEntry;I)V

    .line 491
    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 530
    :goto_3
    const/4 v5, 0x0

    .line 532
    .local v5, "idx":I
    iget-object v8, v3, Lcom/vkontakte/android/api/BoardComment;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_6

    .line 543
    if-nez p1, :cond_9

    .line 544
    const v8, 0x7f0200b1

    invoke-virtual {v7, v8}, Landroid/view/View;->setBackgroundResource(I)V

    .line 551
    :goto_5
    return-object v7

    .line 471
    .end local v1    # "attview":Landroid/view/ViewGroup;
    .end local v4    # "i":I
    .end local v5    # "idx":I
    :cond_1
    const/16 v8, 0x8

    goto :goto_0

    .line 476
    :cond_2
    const v8, 0x7f0901df

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    const v9, 0x7f02027c

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 481
    .restart local v1    # "attview":Landroid/view/ViewGroup;
    .restart local v4    # "i":I
    :cond_3
    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 482
    .local v2, "av":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_4

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    instance-of v8, v8, Ljava/lang/String;

    if-eqz v8, :cond_4

    .line 483
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Lcom/vkontakte/android/Attachment;->reuseView(Landroid/view/View;Ljava/lang/String;)V

    .line 480
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 527
    .end local v2    # "av":Landroid/view/View;
    :cond_5
    const/16 v8, 0x8

    invoke-virtual {v1, v8}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_3

    .line 532
    .restart local v5    # "idx":I
    :cond_6
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/Attachment;

    .line 533
    .local v0, "att":Lcom/vkontakte/android/Attachment;
    instance-of v8, v0, Lcom/vkontakte/android/ImageAttachment;

    if-eqz v8, :cond_7

    move-object v8, v0

    .line 534
    check-cast v8, Lcom/vkontakte/android/ImageAttachment;

    invoke-interface {v8}, Lcom/vkontakte/android/ImageAttachment;->getImageURL()Ljava/lang/String;

    move-result-object v6

    .line 535
    .local v6, "src":Ljava/lang/String;
    iget-object v8, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$CommentsAdapter;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    invoke-static {v8}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->access$2(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    move-result-object v8

    invoke-virtual {v8, v6}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->isAlreadyLoaded(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 536
    check-cast v0, Lcom/vkontakte/android/ImageAttachment;

    .end local v0    # "att":Lcom/vkontakte/android/Attachment;
    const v8, 0x7f09009a

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    invoke-virtual {v8, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    iget-object v10, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$CommentsAdapter;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    invoke-static {v10}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->access$2(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    move-result-object v10

    invoke-virtual {v10, v6}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v10

    const/4 v11, 0x1

    invoke-interface {v0, v8, v10, v11}, Lcom/vkontakte/android/ImageAttachment;->setImage(Landroid/view/View;Landroid/graphics/Bitmap;Z)V

    .line 540
    .end local v6    # "src":Ljava/lang/String;
    :cond_7
    :goto_6
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_4

    .line 538
    .restart local v0    # "att":Lcom/vkontakte/android/Attachment;
    .restart local v6    # "src":Ljava/lang/String;
    :cond_8
    check-cast v0, Lcom/vkontakte/android/ImageAttachment;

    .end local v0    # "att":Lcom/vkontakte/android/Attachment;
    const v8, 0x7f09009a

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    invoke-virtual {v8, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-interface {v0, v8}, Lcom/vkontakte/android/ImageAttachment;->clearImage(Landroid/view/View;)V

    goto :goto_6

    .line 545
    .end local v6    # "src":Ljava/lang/String;
    :cond_9
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$CommentsAdapter;->getCount()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-ne p1, v8, :cond_a

    .line 546
    const v8, 0x7f0200ad

    invoke-virtual {v7, v8}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_5

    .line 548
    :cond_a
    const v8, 0x7f0200af

    invoke-virtual {v7, v8}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_5
.end method
