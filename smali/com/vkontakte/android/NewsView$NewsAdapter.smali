.class public Lcom/vkontakte/android/NewsView$NewsAdapter;
.super Landroid/widget/BaseAdapter;
.source "NewsView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/NewsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "NewsAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/NewsView;


# direct methods
.method protected constructor <init>(Lcom/vkontakte/android/NewsView;)V
    .locals 0

    .prologue
    .line 612
    iput-object p1, p0, Lcom/vkontakte/android/NewsView$NewsAdapter;->this$0:Lcom/vkontakte/android/NewsView;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/NewsView$NewsAdapter;)Lcom/vkontakte/android/NewsView;
    .locals 1

    .prologue
    .line 612
    iget-object v0, p0, Lcom/vkontakte/android/NewsView$NewsAdapter;->this$0:Lcom/vkontakte/android/NewsView;

    return-object v0
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 636
    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 615
    iget-object v0, p0, Lcom/vkontakte/android/NewsView$NewsAdapter;->this$0:Lcom/vkontakte/android/NewsView;

    iget-object v0, v0, Lcom/vkontakte/android/NewsView;->news:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "pos"    # I

    .prologue
    .line 620
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 625
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 2
    .param p1, "pos"    # I

    .prologue
    .line 646
    iget-object v0, p0, Lcom/vkontakte/android/NewsView$NewsAdapter;->this$0:Lcom/vkontakte/android/NewsView;

    iget-object v0, v0, Lcom/vkontakte/android/NewsView;->news:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/NewsView$NewsAdapter;->this$0:Lcom/vkontakte/android/NewsView;

    iget-object v0, v0, Lcom/vkontakte/android/NewsView;->news:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/NewsEntry;

    iget v0, v0, Lcom/vkontakte/android/NewsEntry;->type:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 647
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .param p1, "position"    # I
    .param p2, "cview"    # Landroid/view/View;
    .param p3, "group"    # Landroid/view/ViewGroup;

    .prologue
    const v11, 0x7f0201e8

    const/4 v6, 0x1

    const v10, 0x7f06003a

    const/16 v9, 0x8

    const v8, 0x7f060037

    .line 652
    const/4 v3, 0x0

    .line 654
    .local v3, "view":Lcom/vkontakte/android/NewsItemView;
    if-nez p2, :cond_4

    .line 655
    iget-object v4, p0, Lcom/vkontakte/android/NewsView$NewsAdapter;->this$0:Lcom/vkontakte/android/NewsView;

    iget-object v4, v4, Lcom/vkontakte/android/NewsView;->news:Ljava/util/Vector;

    invoke-virtual {v4, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vkontakte/android/NewsEntry;

    iget v4, v4, Lcom/vkontakte/android/NewsEntry;->type:I

    if-eq v4, v9, :cond_3

    .line 656
    iget-object v4, p0, Lcom/vkontakte/android/NewsView$NewsAdapter;->this$0:Lcom/vkontakte/android/NewsView;

    invoke-virtual {v4}, Lcom/vkontakte/android/NewsView;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f030025

    const/4 v7, 0x0

    invoke-static {v4, v5, v7}, Lcom/vkontakte/android/NewsView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .end local v3    # "view":Lcom/vkontakte/android/NewsItemView;
    check-cast v3, Lcom/vkontakte/android/NewsItemView;

    .line 657
    .restart local v3    # "view":Lcom/vkontakte/android/NewsItemView;
    iget-object v4, p0, Lcom/vkontakte/android/NewsView$NewsAdapter;->this$0:Lcom/vkontakte/android/NewsView;

    invoke-static {v4}, Lcom/vkontakte/android/NewsView;->access$3(Lcom/vkontakte/android/NewsView;)Ljava/util/Vector;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 658
    invoke-virtual {v3, v8}, Lcom/vkontakte/android/NewsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 659
    new-instance v4, Lcom/vkontakte/android/ui/HighlightDrawable;

    invoke-direct {v4}, Lcom/vkontakte/android/ui/HighlightDrawable;-><init>()V

    invoke-virtual {v3, v4}, Lcom/vkontakte/android/NewsItemView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 660
    invoke-virtual {v3, v8}, Lcom/vkontakte/android/NewsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    new-instance v5, Lcom/vkontakte/android/NewsView$NewsAdapter$1;

    invoke-direct {v5, p0}, Lcom/vkontakte/android/NewsView$NewsAdapter$1;-><init>(Lcom/vkontakte/android/NewsView$NewsAdapter;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 680
    :goto_0
    iget-object v4, p0, Lcom/vkontakte/android/NewsView$NewsAdapter;->this$0:Lcom/vkontakte/android/NewsView;

    iget-object v4, v4, Lcom/vkontakte/android/NewsView;->news:Ljava/util/Vector;

    invoke-virtual {v4, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vkontakte/android/NewsEntry;

    invoke-virtual {v3, v4}, Lcom/vkontakte/android/NewsItemView;->setData(Lcom/vkontakte/android/NewsEntry;)V

    .line 683
    iget-object v4, p0, Lcom/vkontakte/android/NewsView$NewsAdapter;->this$0:Lcom/vkontakte/android/NewsView;

    iget-object v4, v4, Lcom/vkontakte/android/NewsView;->news:Ljava/util/Vector;

    invoke-virtual {v4, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vkontakte/android/NewsEntry;

    iget v4, v4, Lcom/vkontakte/android/NewsEntry;->type:I

    if-eq v4, v9, :cond_0

    .line 684
    iget-object v4, p0, Lcom/vkontakte/android/NewsView$NewsAdapter;->this$0:Lcom/vkontakte/android/NewsView;

    iget-object v5, v4, Lcom/vkontakte/android/NewsView;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoader;

    iget-object v4, p0, Lcom/vkontakte/android/NewsView$NewsAdapter;->this$0:Lcom/vkontakte/android/NewsView;

    iget-object v4, v4, Lcom/vkontakte/android/NewsView;->news:Ljava/util/Vector;

    invoke-virtual {v4, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vkontakte/android/NewsEntry;

    iget-object v4, v4, Lcom/vkontakte/android/NewsEntry;->userPhotoURL:Ljava/lang/String;

    invoke-virtual {v5, v4}, Lcom/vkontakte/android/ui/ListImageLoader;->isAlreadyLoaded(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 685
    invoke-virtual {v3, v8}, Lcom/vkontakte/android/NewsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/vkontakte/android/NewsView$NewsAdapter;->this$0:Lcom/vkontakte/android/NewsView;

    iget-object v7, v5, Lcom/vkontakte/android/NewsView;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoader;

    iget-object v5, p0, Lcom/vkontakte/android/NewsView$NewsAdapter;->this$0:Lcom/vkontakte/android/NewsView;

    iget-object v5, v5, Lcom/vkontakte/android/NewsView;->news:Ljava/util/Vector;

    invoke-virtual {v5, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vkontakte/android/NewsEntry;

    iget-object v5, v5, Lcom/vkontakte/android/NewsEntry;->userPhotoURL:Ljava/lang/String;

    invoke-virtual {v7, v5}, Lcom/vkontakte/android/ui/ListImageLoader;->getImage(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 691
    :cond_0
    :goto_1
    const/4 v1, 0x0

    .line 693
    .local v1, "idx":I
    iget-object v4, p0, Lcom/vkontakte/android/NewsView$NewsAdapter;->this$0:Lcom/vkontakte/android/NewsView;

    iget-object v4, v4, Lcom/vkontakte/android/NewsView;->news:Ljava/util/Vector;

    invoke-virtual {v4, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vkontakte/android/NewsEntry;

    iget-object v4, v4, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_6

    .line 709
    iget-object v4, p0, Lcom/vkontakte/android/NewsView$NewsAdapter;->this$0:Lcom/vkontakte/android/NewsView;

    iget-object v4, v4, Lcom/vkontakte/android/NewsView;->news:Ljava/util/Vector;

    invoke-virtual {v4, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vkontakte/android/NewsEntry;

    iget-object v4, v4, Lcom/vkontakte/android/NewsEntry;->lastComment:Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 710
    iget-object v4, p0, Lcom/vkontakte/android/NewsView$NewsAdapter;->this$0:Lcom/vkontakte/android/NewsView;

    iget-object v5, v4, Lcom/vkontakte/android/NewsView;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoader;

    iget-object v4, p0, Lcom/vkontakte/android/NewsView$NewsAdapter;->this$0:Lcom/vkontakte/android/NewsView;

    iget-object v4, v4, Lcom/vkontakte/android/NewsView;->news:Ljava/util/Vector;

    invoke-virtual {v4, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vkontakte/android/NewsEntry;

    iget-object v4, v4, Lcom/vkontakte/android/NewsEntry;->lastCommentUserPhoto:Ljava/lang/String;

    invoke-virtual {v5, v4}, Lcom/vkontakte/android/ui/ListImageLoader;->isAlreadyLoaded(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 711
    const v4, 0x7f0600a0

    invoke-virtual {v3, v4}, Lcom/vkontakte/android/NewsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/vkontakte/android/NewsView$NewsAdapter;->this$0:Lcom/vkontakte/android/NewsView;

    iget-object v7, v5, Lcom/vkontakte/android/NewsView;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoader;

    iget-object v5, p0, Lcom/vkontakte/android/NewsView$NewsAdapter;->this$0:Lcom/vkontakte/android/NewsView;

    iget-object v5, v5, Lcom/vkontakte/android/NewsView;->news:Ljava/util/Vector;

    invoke-virtual {v5, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vkontakte/android/NewsEntry;

    iget-object v5, v5, Lcom/vkontakte/android/NewsEntry;->lastCommentUserPhoto:Ljava/lang/String;

    invoke-virtual {v7, v5}, Lcom/vkontakte/android/ui/ListImageLoader;->getImage(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 727
    :cond_1
    :goto_3
    iget-object v4, p0, Lcom/vkontakte/android/NewsView$NewsAdapter;->this$0:Lcom/vkontakte/android/NewsView;

    iget-object v4, v4, Lcom/vkontakte/android/NewsView;->news:Ljava/util/Vector;

    invoke-virtual {v4, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vkontakte/android/NewsEntry;

    iget v4, v4, Lcom/vkontakte/android/NewsEntry;->type:I

    if-eq v4, v9, :cond_2

    .line 728
    invoke-virtual {v3}, Lcom/vkontakte/android/NewsItemView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    check-cast v4, Lcom/vkontakte/android/ui/HighlightDrawable;

    if-nez p1, :cond_b

    move v5, v6

    :goto_4
    invoke-virtual {v4, v5}, Lcom/vkontakte/android/ui/HighlightDrawable;->setFirst(Z)V

    .line 730
    :cond_2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/vkontakte/android/NewsItemView;->setTag(Ljava/lang/Object;)V

    .line 732
    return-object v3

    .line 669
    .end local v1    # "idx":I
    :cond_3
    iget-object v4, p0, Lcom/vkontakte/android/NewsView$NewsAdapter;->this$0:Lcom/vkontakte/android/NewsView;

    invoke-virtual {v4}, Lcom/vkontakte/android/NewsView;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f030024

    const/4 v7, 0x0

    invoke-static {v4, v5, v7}, Lcom/vkontakte/android/NewsView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .end local v3    # "view":Lcom/vkontakte/android/NewsItemView;
    check-cast v3, Lcom/vkontakte/android/NewsItemView;

    .line 670
    .restart local v3    # "view":Lcom/vkontakte/android/NewsItemView;
    iget-object v4, p0, Lcom/vkontakte/android/NewsView$NewsAdapter;->this$0:Lcom/vkontakte/android/NewsView;

    invoke-static {v4}, Lcom/vkontakte/android/NewsView;->access$3(Lcom/vkontakte/android/NewsView;)Ljava/util/Vector;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_4
    move-object v3, p2

    .line 675
    check-cast v3, Lcom/vkontakte/android/NewsItemView;

    .line 676
    invoke-virtual {v3}, Lcom/vkontakte/android/NewsItemView;->reset()V

    goto/16 :goto_0

    .line 687
    :cond_5
    invoke-virtual {v3, v8}, Lcom/vkontakte/android/NewsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    invoke-virtual {v4, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    .line 693
    .restart local v1    # "idx":I
    :cond_6
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/Attachment;

    .line 694
    .local v0, "att":Lcom/vkontakte/android/Attachment;
    instance-of v4, v0, Lcom/vkontakte/android/PhotoAttachment;

    if-eqz v4, :cond_7

    move-object v4, v0

    .line 695
    check-cast v4, Lcom/vkontakte/android/PhotoAttachment;

    invoke-virtual {v4}, Lcom/vkontakte/android/PhotoAttachment;->getThumbURL()Ljava/lang/String;

    move-result-object v2

    .line 696
    .local v2, "src":Ljava/lang/String;
    iget-object v4, p0, Lcom/vkontakte/android/NewsView$NewsAdapter;->this$0:Lcom/vkontakte/android/NewsView;

    iget-object v4, v4, Lcom/vkontakte/android/NewsView;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoader;

    invoke-virtual {v4, v2}, Lcom/vkontakte/android/ui/ListImageLoader;->isAlreadyLoaded(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 697
    invoke-virtual {v3, v10}, Lcom/vkontakte/android/NewsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/vkontakte/android/NewsView$NewsAdapter;->this$0:Lcom/vkontakte/android/NewsView;

    iget-object v7, v7, Lcom/vkontakte/android/NewsView;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoader;

    invoke-virtual {v7, v2}, Lcom/vkontakte/android/ui/ListImageLoader;->getImage(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 701
    .end local v2    # "src":Ljava/lang/String;
    :cond_7
    :goto_5
    instance-of v4, v0, Lcom/vkontakte/android/VideoAttachment;

    if-eqz v4, :cond_8

    .line 702
    check-cast v0, Lcom/vkontakte/android/VideoAttachment;

    .end local v0    # "att":Lcom/vkontakte/android/Attachment;
    iget-object v2, v0, Lcom/vkontakte/android/VideoAttachment;->image:Ljava/lang/String;

    .line 703
    .restart local v2    # "src":Ljava/lang/String;
    iget-object v4, p0, Lcom/vkontakte/android/NewsView$NewsAdapter;->this$0:Lcom/vkontakte/android/NewsView;

    iget-object v4, v4, Lcom/vkontakte/android/NewsView;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoader;

    invoke-virtual {v4, v2}, Lcom/vkontakte/android/ui/ListImageLoader;->isAlreadyLoaded(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 704
    invoke-virtual {v3, v10}, Lcom/vkontakte/android/NewsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/vkontakte/android/VideoAttachView;

    iget-object v7, p0, Lcom/vkontakte/android/NewsView$NewsAdapter;->this$0:Lcom/vkontakte/android/NewsView;

    iget-object v7, v7, Lcom/vkontakte/android/NewsView;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoader;

    invoke-virtual {v7, v2}, Lcom/vkontakte/android/ui/ListImageLoader;->getImage(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/vkontakte/android/VideoAttachView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 706
    .end local v2    # "src":Ljava/lang/String;
    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2

    .line 699
    .restart local v0    # "att":Lcom/vkontakte/android/Attachment;
    .restart local v2    # "src":Ljava/lang/String;
    :cond_9
    invoke-virtual {v3, v10}, Lcom/vkontakte/android/NewsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    const v7, 0x7f0201ea

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_5

    .line 713
    .end local v0    # "att":Lcom/vkontakte/android/Attachment;
    .end local v2    # "src":Ljava/lang/String;
    :cond_a
    const v4, 0x7f0600a0

    invoke-virtual {v3, v4}, Lcom/vkontakte/android/NewsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    invoke-virtual {v4, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_3

    .line 728
    :cond_b
    const/4 v5, 0x0

    goto/16 :goto_4
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 641
    const/4 v0, 0x2

    return v0
.end method

.method public isEnabled(I)Z
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 630
    iget-object v1, p0, Lcom/vkontakte/android/NewsView$NewsAdapter;->this$0:Lcom/vkontakte/android/NewsView;

    iget-object v1, v1, Lcom/vkontakte/android/NewsView;->news:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/NewsEntry;

    iget v0, v1, Lcom/vkontakte/android/NewsEntry;->type:I

    .line 631
    .local v0, "type":I
    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
