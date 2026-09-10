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
    .line 445
    iput-object p1, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$CommentsAdapter;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;Lcom/vkontakte/android/fragments/BoardTopicViewFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/vkontakte/android/fragments/BoardTopicViewFragment;
    .param p2, "x1"    # Lcom/vkontakte/android/fragments/BoardTopicViewFragment$1;

    .prologue
    .line 445
    invoke-direct {p0, p1}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$CommentsAdapter;-><init>(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 449
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$CommentsAdapter;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->access$700(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 454
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 459
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 464
    move-object v8, p2

    .line 465
    .local v8, "view":Landroid/view/View;
    if-nez v8, :cond_0

    .line 466
    iget-object v9, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$CommentsAdapter;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    invoke-virtual {v9}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    const v10, 0x7f030086

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 467
    iget-object v9, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$CommentsAdapter;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    invoke-static {v9}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->access$3100(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 468
    const v9, 0x7f0801bf

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    iget-object v10, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$CommentsAdapter;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    invoke-virtual {v9, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 469
    const v9, 0x7f0800f8

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 471
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 472
    iget-object v9, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$CommentsAdapter;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    invoke-static {v9}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->access$700(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vkontakte/android/api/BoardComment;

    .line 473
    .local v3, "c":Lcom/vkontakte/android/api/BoardComment;
    const v9, 0x7f0800f3

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iget-object v10, v3, Lcom/vkontakte/android/api/BoardComment;->userName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 474
    const v9, 0x7f0800f6

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iget-object v10, v3, Lcom/vkontakte/android/api/BoardComment;->text:Ljava/lang/CharSequence;

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 475
    const v9, 0x7f0800f4

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iget v10, v3, Lcom/vkontakte/android/api/BoardComment;->time:I

    iget-object v11, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$CommentsAdapter;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    invoke-virtual {v11}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/vkontakte/android/Global;->langDateRelative(ILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 477
    const v9, 0x7f0800f6

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    iget-object v9, v3, Lcom/vkontakte/android/api/BoardComment;->text:Ljava/lang/CharSequence;

    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v9

    if-lez v9, :cond_2

    const/4 v9, 0x0

    :goto_0
    invoke-virtual {v10, v9}, Landroid/view/View;->setVisibility(I)V

    .line 479
    iget-object v9, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$CommentsAdapter;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    invoke-static {v9}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->access$3000(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    move-result-object v9

    iget-object v10, v3, Lcom/vkontakte/android/api/BoardComment;->userPhoto:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->isAlreadyLoaded(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 480
    const v9, 0x7f0801bf

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    iget-object v10, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$CommentsAdapter;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    invoke-static {v10}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->access$3000(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    move-result-object v10

    iget-object v11, v3, Lcom/vkontakte/android/api/BoardComment;->userPhoto:Ljava/lang/String;

    invoke-virtual {v10, v11}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 484
    :goto_1
    const v9, 0x7f0801bf

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    iget v10, v3, Lcom/vkontakte/android/api/BoardComment;->uid:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 485
    const v9, 0x7f080085

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 486
    .local v1, "attview":Landroid/view/ViewGroup;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v9

    if-ge v4, v9, :cond_4

    .line 487
    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 488
    .local v2, "av":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_1

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v9

    instance-of v9, v9, Ljava/lang/String;

    if-eqz v9, :cond_1

    .line 489
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Lcom/vkontakte/android/Attachment;->reuseView(Landroid/view/View;Ljava/lang/String;)V

    .line 486
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 477
    .end local v1    # "attview":Landroid/view/ViewGroup;
    .end local v2    # "av":Landroid/view/View;
    .end local v4    # "i":I
    :cond_2
    const/16 v9, 0x8

    goto :goto_0

    .line 482
    :cond_3
    const v9, 0x7f0801bf

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    const v10, 0x7f0201ec

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 493
    .restart local v1    # "attview":Landroid/view/ViewGroup;
    .restart local v4    # "i":I
    :cond_4
    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 495
    iget-object v9, v3, Lcom/vkontakte/android/api/BoardComment;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_6

    .line 496
    iget-object v9, v3, Lcom/vkontakte/android/api/BoardComment;->attachments:Ljava/util/ArrayList;

    const/4 v10, 0x0

    const v11, 0x7f080085

    invoke-static {v8, v9, v10, v11}, Lcom/vkontakte/android/NewsItemView;->addAttachments(Landroid/view/View;Ljava/util/ArrayList;Lcom/vkontakte/android/NewsEntry;I)V

    .line 497
    const/4 v9, 0x0

    invoke-virtual {v1, v9}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 536
    :goto_3
    const/4 v6, 0x0

    .line 538
    .local v6, "idx":I
    iget-object v9, v3, Lcom/vkontakte/android/api/BoardComment;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/Attachment;

    .line 539
    .local v0, "att":Lcom/vkontakte/android/Attachment;
    instance-of v9, v0, Lcom/vkontakte/android/ImageAttachment;

    if-eqz v9, :cond_5

    move-object v9, v0

    .line 540
    check-cast v9, Lcom/vkontakte/android/ImageAttachment;

    invoke-interface {v9}, Lcom/vkontakte/android/ImageAttachment;->getImageURL()Ljava/lang/String;

    move-result-object v7

    .line 541
    .local v7, "src":Ljava/lang/String;
    iget-object v9, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$CommentsAdapter;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    invoke-static {v9}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->access$3000(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    move-result-object v9

    invoke-virtual {v9, v7}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->isAlreadyLoaded(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 542
    check-cast v0, Lcom/vkontakte/android/ImageAttachment;

    .end local v0    # "att":Lcom/vkontakte/android/Attachment;
    const v9, 0x7f080085

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup;

    invoke-virtual {v9, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    iget-object v10, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$CommentsAdapter;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    invoke-static {v10}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->access$3000(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    move-result-object v10

    invoke-virtual {v10, v7}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v10

    const/4 v11, 0x1

    invoke-interface {v0, v9, v10, v11}, Lcom/vkontakte/android/ImageAttachment;->setImage(Landroid/view/View;Landroid/graphics/Bitmap;Z)V

    .line 546
    .end local v7    # "src":Ljava/lang/String;
    :cond_5
    :goto_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 533
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v6    # "idx":I
    :cond_6
    const/16 v9, 0x8

    invoke-virtual {v1, v9}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_3

    .line 544
    .restart local v0    # "att":Lcom/vkontakte/android/Attachment;
    .restart local v5    # "i$":Ljava/util/Iterator;
    .restart local v6    # "idx":I
    .restart local v7    # "src":Ljava/lang/String;
    :cond_7
    check-cast v0, Lcom/vkontakte/android/ImageAttachment;

    .end local v0    # "att":Lcom/vkontakte/android/Attachment;
    const v9, 0x7f080085

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup;

    invoke-virtual {v9, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-interface {v0, v9}, Lcom/vkontakte/android/ImageAttachment;->clearImage(Landroid/view/View;)V

    goto :goto_5

    .line 549
    .end local v7    # "src":Ljava/lang/String;
    :cond_8
    if-nez p1, :cond_9

    .line 550
    const v9, 0x7f020043

    invoke-virtual {v8, v9}, Landroid/view/View;->setBackgroundResource(I)V

    .line 557
    :goto_6
    return-object v8

    .line 551
    :cond_9
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$CommentsAdapter;->getCount()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    if-ne p1, v9, :cond_a

    .line 552
    const v9, 0x7f02003f

    invoke-virtual {v8, v9}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_6

    .line 554
    :cond_a
    const v9, 0x7f020041

    invoke-virtual {v8, v9}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_6
.end method
