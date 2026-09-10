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
    .line 743
    iput-object p1, p0, Lcom/vkontakte/android/NewsView$NewsAdapter;->this$0:Lcom/vkontakte/android/NewsView;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/NewsView$NewsAdapter;)Lcom/vkontakte/android/NewsView;
    .locals 1

    .prologue
    .line 743
    iget-object v0, p0, Lcom/vkontakte/android/NewsView$NewsAdapter;->this$0:Lcom/vkontakte/android/NewsView;

    return-object v0
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 767
    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 746
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
    .line 751
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 756
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "pos"    # I

    .prologue
    .line 778
    const/4 v0, 0x1

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .param p1, "position"    # I
    .param p2, "cview"    # Landroid/view/View;
    .param p3, "group"    # Landroid/view/ViewGroup;

    .prologue
    const v11, 0x7f0600b2

    const v10, 0x7f020206

    const/4 v6, 0x1

    const v9, 0x7f06003c

    const v8, 0x7f060039

    .line 783
    const/4 v3, 0x0

    .line 785
    .local v3, "view":Lcom/vkontakte/android/NewsItemView;
    if-nez p2, :cond_2

    .line 786
    iget-object v4, p0, Lcom/vkontakte/android/NewsView$NewsAdapter;->this$0:Lcom/vkontakte/android/NewsView;

    invoke-virtual {v4}, Lcom/vkontakte/android/NewsView;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f03002d

    const/4 v7, 0x0

    invoke-static {v4, v5, v7}, Lcom/vkontakte/android/NewsView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .end local v3    # "view":Lcom/vkontakte/android/NewsItemView;
    check-cast v3, Lcom/vkontakte/android/NewsItemView;

    .line 787
    .restart local v3    # "view":Lcom/vkontakte/android/NewsItemView;
    iget-object v4, p0, Lcom/vkontakte/android/NewsView$NewsAdapter;->this$0:Lcom/vkontakte/android/NewsView;

    invoke-static {v4}, Lcom/vkontakte/android/NewsView;->access$3(Lcom/vkontakte/android/NewsView;)Ljava/util/Vector;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 788
    invoke-virtual {v3, v8}, Lcom/vkontakte/android/NewsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 789
    new-instance v4, Lcom/vkontakte/android/ui/HighlightDrawable;

    invoke-direct {v4}, Lcom/vkontakte/android/ui/HighlightDrawable;-><init>()V

    invoke-virtual {v3, v4}, Lcom/vkontakte/android/NewsItemView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 790
    invoke-virtual {v3, v8}, Lcom/vkontakte/android/NewsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    new-instance v5, Lcom/vkontakte/android/NewsView$NewsAdapter$1;

    invoke-direct {v5, p0}, Lcom/vkontakte/android/NewsView$NewsAdapter$1;-><init>(Lcom/vkontakte/android/NewsView$NewsAdapter;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 806
    :goto_0
    iget-object v4, p0, Lcom/vkontakte/android/NewsView$NewsAdapter;->this$0:Lcom/vkontakte/android/NewsView;

    iget-object v4, v4, Lcom/vkontakte/android/NewsView;->news:Ljava/util/Vector;

    invoke-virtual {v4, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vkontakte/android/NewsEntry;

    invoke-virtual {v3, v4}, Lcom/vkontakte/android/NewsItemView;->setData(Lcom/vkontakte/android/NewsEntry;)V

    .line 808
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

    if-eqz v4, :cond_3

    .line 809
    invoke-virtual {v3, v8}, Lcom/vkontakte/android/NewsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/vkontakte/android/NewsView$NewsAdapter;->this$0:Lcom/vkontakte/android/NewsView;

    iget-object v5, v5, Lcom/vkontakte/android/NewsView;->news:Ljava/util/Vector;

    invoke-virtual {v5, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vkontakte/android/NewsEntry;

    iget-object v5, v5, Lcom/vkontakte/android/NewsEntry;->userPhotoURL:Ljava/lang/String;

    invoke-static {v5}, Lcom/vkontakte/android/ImageCache;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 814
    :goto_1
    const/4 v1, 0x0

    .line 816
    .local v1, "idx":I
    iget-object v4, p0, Lcom/vkontakte/android/NewsView$NewsAdapter;->this$0:Lcom/vkontakte/android/NewsView;

    iget-object v4, v4, Lcom/vkontakte/android/NewsView;->news:Ljava/util/Vector;

    invoke-virtual {v4, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vkontakte/android/NewsEntry;

    iget-object v4, v4, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_4

    .line 833
    iget-object v4, p0, Lcom/vkontakte/android/NewsView$NewsAdapter;->this$0:Lcom/vkontakte/android/NewsView;

    iget-object v4, v4, Lcom/vkontakte/android/NewsView;->news:Ljava/util/Vector;

    invoke-virtual {v4, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vkontakte/android/NewsEntry;

    iget-object v4, v4, Lcom/vkontakte/android/NewsEntry;->lastComment:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 834
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

    if-eqz v4, :cond_8

    .line 835
    invoke-virtual {v3, v11}, Lcom/vkontakte/android/NewsItemView;->findViewById(I)Landroid/view/View;

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

    .line 851
    :cond_0
    :goto_3
    iget-object v4, p0, Lcom/vkontakte/android/NewsView$NewsAdapter;->this$0:Lcom/vkontakte/android/NewsView;

    iget-object v4, v4, Lcom/vkontakte/android/NewsView;->news:Ljava/util/Vector;

    invoke-virtual {v4, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vkontakte/android/NewsEntry;

    iget v4, v4, Lcom/vkontakte/android/NewsEntry;->type:I

    const/16 v5, 0x8

    if-eq v4, v5, :cond_1

    .line 852
    invoke-virtual {v3}, Lcom/vkontakte/android/NewsItemView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    check-cast v4, Lcom/vkontakte/android/ui/HighlightDrawable;

    if-nez p1, :cond_9

    move v5, v6

    :goto_4
    invoke-virtual {v4, v5}, Lcom/vkontakte/android/ui/HighlightDrawable;->setFirst(Z)V

    .line 854
    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/vkontakte/android/NewsItemView;->setTag(Ljava/lang/Object;)V

    .line 856
    return-object v3

    .end local v1    # "idx":I
    :cond_2
    move-object v3, p2

    .line 801
    check-cast v3, Lcom/vkontakte/android/NewsItemView;

    .line 802
    invoke-virtual {v3}, Lcom/vkontakte/android/NewsItemView;->reset()V

    goto/16 :goto_0

    .line 811
    :cond_3
    invoke-virtual {v3, v8}, Lcom/vkontakte/android/NewsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    invoke-virtual {v4, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    .line 816
    .restart local v1    # "idx":I
    :cond_4
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/Attachment;

    .line 817
    .local v0, "att":Lcom/vkontakte/android/Attachment;
    instance-of v4, v0, Lcom/vkontakte/android/PhotoAttachment;

    if-eqz v4, :cond_5

    move-object v4, v0

    .line 818
    check-cast v4, Lcom/vkontakte/android/PhotoAttachment;

    invoke-virtual {v4}, Lcom/vkontakte/android/PhotoAttachment;->getThumbURL()Ljava/lang/String;

    move-result-object v2

    .line 819
    .local v2, "src":Ljava/lang/String;
    iget-object v4, p0, Lcom/vkontakte/android/NewsView$NewsAdapter;->this$0:Lcom/vkontakte/android/NewsView;

    iget-object v4, v4, Lcom/vkontakte/android/NewsView;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoader;

    invoke-virtual {v4, v2}, Lcom/vkontakte/android/ui/ListImageLoader;->isAlreadyLoaded(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/vkontakte/android/NewsView$NewsAdapter;->this$0:Lcom/vkontakte/android/NewsView;

    iget-object v4, v4, Lcom/vkontakte/android/NewsView;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoader;

    invoke-virtual {v4, v2}, Lcom/vkontakte/android/ui/ListImageLoader;->getImage(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 820
    invoke-virtual {v3, v9}, Lcom/vkontakte/android/NewsItemView;->findViewById(I)Landroid/view/View;

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

    .line 821
    invoke-virtual {v3, v9}, Lcom/vkontakte/android/NewsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/vkontakte/android/PhotoAttachment$FixedSizeImageView;

    invoke-virtual {v4}, Lcom/vkontakte/android/PhotoAttachment$FixedSizeImageView;->dontAnimate()V

    .line 825
    .end local v2    # "src":Ljava/lang/String;
    :cond_5
    :goto_5
    instance-of v4, v0, Lcom/vkontakte/android/VideoAttachment;

    if-eqz v4, :cond_6

    .line 826
    check-cast v0, Lcom/vkontakte/android/VideoAttachment;

    .end local v0    # "att":Lcom/vkontakte/android/Attachment;
    iget-object v2, v0, Lcom/vkontakte/android/VideoAttachment;->image:Ljava/lang/String;

    .line 827
    .restart local v2    # "src":Ljava/lang/String;
    iget-object v4, p0, Lcom/vkontakte/android/NewsView$NewsAdapter;->this$0:Lcom/vkontakte/android/NewsView;

    iget-object v4, v4, Lcom/vkontakte/android/NewsView;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoader;

    invoke-virtual {v4, v2}, Lcom/vkontakte/android/ui/ListImageLoader;->isAlreadyLoaded(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 828
    invoke-virtual {v3, v9}, Lcom/vkontakte/android/NewsItemView;->findViewById(I)Landroid/view/View;

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

    .line 830
    .end local v2    # "src":Ljava/lang/String;
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2

    .line 823
    .restart local v0    # "att":Lcom/vkontakte/android/Attachment;
    .restart local v2    # "src":Ljava/lang/String;
    :cond_7
    invoke-virtual {v3, v9}, Lcom/vkontakte/android/NewsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    const v7, 0x7f020208

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_5

    .line 837
    .end local v0    # "att":Lcom/vkontakte/android/Attachment;
    .end local v2    # "src":Ljava/lang/String;
    :cond_8
    invoke-virtual {v3, v11}, Lcom/vkontakte/android/NewsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    invoke-virtual {v4, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_3

    .line 852
    :cond_9
    const/4 v5, 0x0

    goto/16 :goto_4
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 772
    const/4 v0, 0x2

    return v0
.end method

.method public isEnabled(I)Z
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 761
    iget-object v1, p0, Lcom/vkontakte/android/NewsView$NewsAdapter;->this$0:Lcom/vkontakte/android/NewsView;

    iget-object v1, v1, Lcom/vkontakte/android/NewsView;->news:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/NewsEntry;

    iget v0, v1, Lcom/vkontakte/android/NewsEntry;->type:I

    .line 762
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
