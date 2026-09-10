.class Lcom/vkontakte/android/fragments/PostViewFragment$PostCommentsAdapter;
.super Landroid/widget/BaseAdapter;
.source "PostViewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/fragments/PostViewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PostCommentsAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/PostViewFragment;


# direct methods
.method private constructor <init>(Lcom/vkontakte/android/fragments/PostViewFragment;)V
    .locals 0

    .prologue
    .line 1482
    iput-object p1, p0, Lcom/vkontakte/android/fragments/PostViewFragment$PostCommentsAdapter;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkontakte/android/fragments/PostViewFragment;Lcom/vkontakte/android/fragments/PostViewFragment$PostCommentsAdapter;)V
    .locals 0

    .prologue
    .line 1482
    invoke-direct {p0, p1}, Lcom/vkontakte/android/fragments/PostViewFragment$PostCommentsAdapter;-><init>(Lcom/vkontakte/android/fragments/PostViewFragment;)V

    return-void
.end method

.method static synthetic access$1(Lcom/vkontakte/android/fragments/PostViewFragment$PostCommentsAdapter;)Lcom/vkontakte/android/fragments/PostViewFragment;
    .locals 1

    .prologue
    .line 1482
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment$PostCommentsAdapter;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 1485
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment$PostCommentsAdapter;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$2(Lcom/vkontakte/android/fragments/PostViewFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 1490
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 1495
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "pos"    # I

    .prologue
    .line 1503
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment$PostCommentsAdapter;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$2(Lcom/vkontakte/android/fragments/PostViewFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/NewsComment;

    iget-boolean v0, v0, Lcom/vkontakte/android/NewsComment;->isDeleted:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .param p1, "position"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 1512
    iget-object v5, p0, Lcom/vkontakte/android/fragments/PostViewFragment$PostCommentsAdapter;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v5}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$2(Lcom/vkontakte/android/fragments/PostViewFragment;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/NewsComment;

    .line 1513
    .local v1, "comment":Lcom/vkontakte/android/NewsComment;
    iget-boolean v5, v1, Lcom/vkontakte/android/NewsComment;->isDeleted:Z

    if-eqz v5, :cond_1

    .line 1514
    if-nez p2, :cond_0

    .line 1515
    iget-object v5, p0, Lcom/vkontakte/android/fragments/PostViewFragment$PostCommentsAdapter;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-virtual {v5}, Lcom/vkontakte/android/fragments/PostViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    const v6, 0x7f03002c

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 1516
    const v5, 0x7f080098

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    new-instance v6, Lcom/vkontakte/android/fragments/PostViewFragment$PostCommentsAdapter$1;

    invoke-direct {v6, p0}, Lcom/vkontakte/android/fragments/PostViewFragment$PostCommentsAdapter$1;-><init>(Lcom/vkontakte/android/fragments/PostViewFragment$PostCommentsAdapter;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1523
    :cond_0
    const v5, 0x7f080098

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iget v6, v1, Lcom/vkontakte/android/NewsComment;->cid:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1524
    const/4 v5, -0x1

    invoke-virtual {p2, v5}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1596
    :goto_0
    return-object p2

    .line 1526
    :cond_1
    if-nez p2, :cond_2

    .line 1527
    iget-object v5, p0, Lcom/vkontakte/android/fragments/PostViewFragment$PostCommentsAdapter;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-virtual {v5}, Lcom/vkontakte/android/fragments/PostViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    const v6, 0x7f03006d

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 1528
    const v5, 0x7f080158

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1529
    const v5, 0x7f080158

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    new-instance v6, Lcom/vkontakte/android/fragments/PostViewFragment$PostCommentsAdapter$2;

    invoke-direct {v6, p0}, Lcom/vkontakte/android/fragments/PostViewFragment$PostCommentsAdapter$2;-><init>(Lcom/vkontakte/android/fragments/PostViewFragment$PostCommentsAdapter;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1538
    :cond_2
    iget-object v5, p0, Lcom/vkontakte/android/fragments/PostViewFragment$PostCommentsAdapter;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v5}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$0(Lcom/vkontakte/android/fragments/PostViewFragment;)Lcom/vkontakte/android/NewsEntry;

    move-result-object v5

    iget v5, v5, Lcom/vkontakte/android/NewsEntry;->type:I

    const/4 v6, 0x2

    if-eq v5, v6, :cond_3

    iget-object v5, p0, Lcom/vkontakte/android/fragments/PostViewFragment$PostCommentsAdapter;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v5}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$4(Lcom/vkontakte/android/fragments/PostViewFragment;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1539
    :cond_3
    const/4 v5, -0x1

    invoke-virtual {p2, v5}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1543
    :goto_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p2, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1544
    const v5, 0x7f0800e8

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iget-object v6, v1, Lcom/vkontakte/android/NewsComment;->displayableText:Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1545
    const v5, 0x7f0800e5

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iget-object v6, v1, Lcom/vkontakte/android/NewsComment;->userName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1546
    iget-object v3, v1, Lcom/vkontakte/android/NewsComment;->time:Ljava/lang/String;

    .line 1547
    .local v3, "info":Ljava/lang/String;
    iget-object v5, v1, Lcom/vkontakte/android/NewsComment;->respToName:Ljava/lang/String;

    if-eqz v5, :cond_4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Lcom/vkontakte/android/NewsComment;->respToName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1548
    :cond_4
    const v5, 0x7f0800e6

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1550
    const v5, 0x7f0800e8

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iget-object v5, v1, Lcom/vkontakte/android/NewsComment;->text:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_8

    const/4 v5, 0x0

    :goto_2
    invoke-virtual {v6, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1552
    iget v5, v1, Lcom/vkontakte/android/NewsComment;->numLikes:I

    if-lez v5, :cond_b

    .line 1553
    const v5, 0x7f0800ea

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1554
    const v5, 0x7f0800ea

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    iget v7, v1, Lcom/vkontakte/android/NewsComment;->numLikes:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1555
    const v5, 0x7f0800ea

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iget-boolean v6, v1, Lcom/vkontakte/android/NewsComment;->isLiked:Z

    if-eqz v6, :cond_9

    const v6, -0xc77239

    :goto_3
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1556
    const v5, 0x7f0800ea

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iget-object v6, p0, Lcom/vkontakte/android/fragments/PostViewFragment$PostCommentsAdapter;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-virtual {v6}, Lcom/vkontakte/android/fragments/PostViewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    iget-boolean v6, v1, Lcom/vkontakte/android/NewsComment;->isLiked:Z

    if-eqz v6, :cond_a

    const v6, 0x7f020122

    :goto_4
    invoke-virtual {v7, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1561
    :goto_5
    const v5, 0x7f0800e1

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 1562
    iget-object v5, v1, Lcom/vkontakte/android/NewsComment;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_11

    .line 1563
    const v5, 0x7f0800e1

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1564
    iget-object v5, v1, Lcom/vkontakte/android/NewsComment;->attachments:Ljava/util/ArrayList;

    const/4 v6, 0x0

    const v7, 0x7f0800e1

    invoke-static {p2, v5, v6, v7}, Lcom/vkontakte/android/NewsItemView;->addAttachments(Landroid/view/View;Ljava/util/ArrayList;Lcom/vkontakte/android/NewsEntry;I)V

    .line 1565
    const/4 v2, 0x0

    .line 1566
    .local v2, "idx":I
    iget-object v5, v1, Lcom/vkontakte/android/NewsComment;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_c

    .line 1591
    .end local v2    # "idx":I
    :goto_7
    iget-object v5, p0, Lcom/vkontakte/android/fragments/PostViewFragment$PostCommentsAdapter;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v5}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$6(Lcom/vkontakte/android/fragments/PostViewFragment;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    move-result-object v5

    iget-object v6, v1, Lcom/vkontakte/android/NewsComment;->userPhoto:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->isAlreadyLoaded(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 1592
    const v5, 0x7f080158

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/vkontakte/android/fragments/PostViewFragment$PostCommentsAdapter;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v6}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$6(Lcom/vkontakte/android/fragments/PostViewFragment;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    move-result-object v6

    iget-object v7, v1, Lcom/vkontakte/android/NewsComment;->userPhoto:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_0

    .line 1541
    .end local v3    # "info":Ljava/lang/String;
    :cond_5
    iget-object v5, p0, Lcom/vkontakte/android/fragments/PostViewFragment$PostCommentsAdapter;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v5}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$2(Lcom/vkontakte/android/fragments/PostViewFragment;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ne p1, v5, :cond_6

    const v5, 0x7f0200ac

    :goto_8
    invoke-virtual {p2, v5}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_1

    :cond_6
    if-nez p1, :cond_7

    iget-object v5, p0, Lcom/vkontakte/android/fragments/PostViewFragment$PostCommentsAdapter;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v5}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$5(Lcom/vkontakte/android/fragments/PostViewFragment;)Lcom/vkontakte/android/LoadMoreCommentsView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/vkontakte/android/LoadMoreCommentsView;->getVisibility()I

    move-result v5

    if-nez v5, :cond_7

    const v5, 0x7f0200af

    goto :goto_8

    :cond_7
    const v5, 0x7f0200ae

    goto :goto_8

    .line 1550
    .restart local v3    # "info":Ljava/lang/String;
    :cond_8
    const/16 v5, 0x8

    goto/16 :goto_2

    .line 1555
    :cond_9
    const v6, -0x59595a

    goto/16 :goto_3

    .line 1556
    :cond_a
    const v6, 0x7f020121

    goto/16 :goto_4

    .line 1558
    :cond_b
    const v5, 0x7f0800ea

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_5

    .line 1566
    .restart local v2    # "idx":I
    :cond_c
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/Attachment;

    .line 1567
    .local v0, "att":Lcom/vkontakte/android/Attachment;
    instance-of v5, v0, Lcom/vkontakte/android/PhotoAttachment;

    if-eqz v5, :cond_d

    move-object v5, v0

    .line 1568
    check-cast v5, Lcom/vkontakte/android/PhotoAttachment;

    invoke-virtual {v5}, Lcom/vkontakte/android/PhotoAttachment;->getThumbURL()Ljava/lang/String;

    move-result-object v4

    .line 1569
    .local v4, "src":Ljava/lang/String;
    iget-object v5, p0, Lcom/vkontakte/android/fragments/PostViewFragment$PostCommentsAdapter;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v5}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$6(Lcom/vkontakte/android/fragments/PostViewFragment;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->isAlreadyLoaded(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_10

    iget-object v5, p0, Lcom/vkontakte/android/fragments/PostViewFragment$PostCommentsAdapter;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v5}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$6(Lcom/vkontakte/android/fragments/PostViewFragment;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    if-eqz v5, :cond_10

    .line 1570
    const v5, 0x7f0800e1

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    invoke-virtual {v5, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/vkontakte/android/fragments/PostViewFragment$PostCommentsAdapter;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v7}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$6(Lcom/vkontakte/android/fragments/PostViewFragment;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    move-result-object v7

    invoke-virtual {v7, v4}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1571
    const v5, 0x7f0800e1

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    invoke-virtual {v5, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/vkontakte/android/PhotoAttachment$FixedSizeImageView;

    invoke-virtual {v5}, Lcom/vkontakte/android/PhotoAttachment$FixedSizeImageView;->dontAnimate()V

    .line 1575
    .end local v4    # "src":Ljava/lang/String;
    :cond_d
    :goto_9
    instance-of v5, v0, Lcom/vkontakte/android/VideoAttachment;

    if-eqz v5, :cond_e

    move-object v5, v0

    .line 1576
    check-cast v5, Lcom/vkontakte/android/VideoAttachment;

    iget-object v4, v5, Lcom/vkontakte/android/VideoAttachment;->image:Ljava/lang/String;

    .line 1577
    .restart local v4    # "src":Ljava/lang/String;
    iget-object v5, p0, Lcom/vkontakte/android/fragments/PostViewFragment$PostCommentsAdapter;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v5}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$6(Lcom/vkontakte/android/fragments/PostViewFragment;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->isAlreadyLoaded(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 1578
    const v5, 0x7f0800e1

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    invoke-virtual {v5, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/vkontakte/android/VideoAttachView;

    iget-object v7, p0, Lcom/vkontakte/android/fragments/PostViewFragment$PostCommentsAdapter;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v7}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$6(Lcom/vkontakte/android/fragments/PostViewFragment;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    move-result-object v7

    invoke-virtual {v7, v4}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/vkontakte/android/VideoAttachView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1580
    .end local v4    # "src":Ljava/lang/String;
    :cond_e
    instance-of v5, v0, Lcom/vkontakte/android/DocumentAttachment;

    if-eqz v5, :cond_f

    move-object v5, v0

    check-cast v5, Lcom/vkontakte/android/DocumentAttachment;

    iget-object v5, v5, Lcom/vkontakte/android/DocumentAttachment;->thumb:Ljava/lang/String;

    if-eqz v5, :cond_f

    move-object v5, v0

    check-cast v5, Lcom/vkontakte/android/DocumentAttachment;

    iget-object v5, v5, Lcom/vkontakte/android/DocumentAttachment;->thumb:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_f

    .line 1581
    check-cast v0, Lcom/vkontakte/android/DocumentAttachment;

    .end local v0    # "att":Lcom/vkontakte/android/Attachment;
    iget-object v4, v0, Lcom/vkontakte/android/DocumentAttachment;->thumb:Ljava/lang/String;

    .line 1582
    .restart local v4    # "src":Ljava/lang/String;
    iget-object v5, p0, Lcom/vkontakte/android/fragments/PostViewFragment$PostCommentsAdapter;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v5}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$6(Lcom/vkontakte/android/fragments/PostViewFragment;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->isAlreadyLoaded(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 1583
    const v5, 0x7f0800e1

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    invoke-virtual {v5, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    const v7, 0x7f08004c

    invoke-virtual {v5, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/vkontakte/android/fragments/PostViewFragment$PostCommentsAdapter;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v7}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$6(Lcom/vkontakte/android/fragments/PostViewFragment;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    move-result-object v7

    invoke-virtual {v7, v4}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1585
    .end local v4    # "src":Ljava/lang/String;
    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_6

    .line 1573
    .restart local v0    # "att":Lcom/vkontakte/android/Attachment;
    .restart local v4    # "src":Ljava/lang/String;
    :cond_10
    const v5, 0x7f0800e1

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    invoke-virtual {v5, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    const v7, 0x7f020209

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_9

    .line 1588
    .end local v0    # "att":Lcom/vkontakte/android/Attachment;
    .end local v2    # "idx":I
    .end local v4    # "src":Ljava/lang/String;
    :cond_11
    const v5, 0x7f0800e1

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_7

    .line 1594
    :cond_12
    const v5, 0x7f080158

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    const v6, 0x7f020247

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 1499
    const/4 v0, 0x2

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "pos"    # I

    .prologue
    .line 1507
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment$PostCommentsAdapter;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$2(Lcom/vkontakte/android/fragments/PostViewFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/NewsComment;

    iget-boolean v0, v0, Lcom/vkontakte/android/NewsComment;->isDeleted:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
