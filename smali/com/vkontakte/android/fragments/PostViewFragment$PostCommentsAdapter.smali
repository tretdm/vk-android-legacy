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
    .line 1762
    iput-object p1, p0, Lcom/vkontakte/android/fragments/PostViewFragment$PostCommentsAdapter;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkontakte/android/fragments/PostViewFragment;Lcom/vkontakte/android/fragments/PostViewFragment$PostCommentsAdapter;)V
    .locals 0

    .prologue
    .line 1762
    invoke-direct {p0, p1}, Lcom/vkontakte/android/fragments/PostViewFragment$PostCommentsAdapter;-><init>(Lcom/vkontakte/android/fragments/PostViewFragment;)V

    return-void
.end method

.method static synthetic access$1(Lcom/vkontakte/android/fragments/PostViewFragment$PostCommentsAdapter;)Lcom/vkontakte/android/fragments/PostViewFragment;
    .locals 1

    .prologue
    .line 1762
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment$PostCommentsAdapter;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 1765
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment$PostCommentsAdapter;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$3(Lcom/vkontakte/android/fragments/PostViewFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 1770
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 1775
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "pos"    # I

    .prologue
    .line 1783
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment$PostCommentsAdapter;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$3(Lcom/vkontakte/android/fragments/PostViewFragment;)Ljava/util/ArrayList;

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
    .locals 11
    .param p1, "position"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 1792
    iget-object v6, p0, Lcom/vkontakte/android/fragments/PostViewFragment$PostCommentsAdapter;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v6}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$3(Lcom/vkontakte/android/fragments/PostViewFragment;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/NewsComment;

    .line 1793
    .local v1, "comment":Lcom/vkontakte/android/NewsComment;
    iget-boolean v6, v1, Lcom/vkontakte/android/NewsComment;->isDeleted:Z

    if-eqz v6, :cond_1

    .line 1794
    if-nez p2, :cond_0

    .line 1795
    iget-object v6, p0, Lcom/vkontakte/android/fragments/PostViewFragment$PostCommentsAdapter;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-virtual {v6}, Lcom/vkontakte/android/fragments/PostViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    const v7, 0x7f03003c

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 1796
    const v6, 0x7f0900b6

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    new-instance v7, Lcom/vkontakte/android/fragments/PostViewFragment$PostCommentsAdapter$1;

    invoke-direct {v7, p0}, Lcom/vkontakte/android/fragments/PostViewFragment$PostCommentsAdapter$1;-><init>(Lcom/vkontakte/android/fragments/PostViewFragment$PostCommentsAdapter;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1803
    :cond_0
    const v6, 0x7f0900b6

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iget v7, v1, Lcom/vkontakte/android/NewsComment;->cid:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1804
    const/4 v6, 0x0

    invoke-virtual {p2, v6}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1879
    :goto_0
    return-object p2

    .line 1806
    :cond_1
    if-nez p2, :cond_2

    .line 1807
    iget-object v6, p0, Lcom/vkontakte/android/fragments/PostViewFragment$PostCommentsAdapter;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-virtual {v6}, Lcom/vkontakte/android/fragments/PostViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    const v7, 0x7f030095

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 1808
    const v6, 0x7f0901df

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1809
    const v6, 0x7f0901df

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    new-instance v7, Lcom/vkontakte/android/fragments/PostViewFragment$PostCommentsAdapter$2;

    invoke-direct {v7, p0}, Lcom/vkontakte/android/fragments/PostViewFragment$PostCommentsAdapter$2;-><init>(Lcom/vkontakte/android/fragments/PostViewFragment$PostCommentsAdapter;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1817
    iget-object v6, p0, Lcom/vkontakte/android/fragments/PostViewFragment$PostCommentsAdapter;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-virtual {v6}, Lcom/vkontakte/android/fragments/PostViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-static {v6}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    const-string v7, "fontSize"

    const-string v8, "0"

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 1818
    .local v4, "k":I
    const v6, 0x7f090111

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const/4 v7, 0x1

    const/high16 v8, 0x41800000    # 16.0f

    int-to-float v9, v4

    const/high16 v10, 0x40000000    # 2.0f

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1825
    .end local v4    # "k":I
    :cond_2
    const/4 v6, 0x0

    invoke-virtual {p2, v6}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1826
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p2, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1827
    const v6, 0x7f090111

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iget-object v7, v1, Lcom/vkontakte/android/NewsComment;->displayableText:Ljava/lang/CharSequence;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1828
    const v6, 0x7f09010e

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iget-object v7, v1, Lcom/vkontakte/android/NewsComment;->userName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1829
    iget-object v6, p0, Lcom/vkontakte/android/fragments/PostViewFragment$PostCommentsAdapter;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-virtual {v6}, Lcom/vkontakte/android/fragments/PostViewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget v7, v1, Lcom/vkontakte/android/NewsComment;->time:I

    invoke-static {v6, v7}, Lcom/vkontakte/android/Global;->langDate(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object v3

    .line 1830
    .local v3, "info":Ljava/lang/String;
    iget-object v6, v1, Lcom/vkontakte/android/NewsComment;->respToName:Ljava/lang/String;

    if-eqz v6, :cond_3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v1, Lcom/vkontakte/android/NewsComment;->respToName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1831
    :cond_3
    const v6, 0x7f09010f

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1833
    const v6, 0x7f090111

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iget-object v6, v1, Lcom/vkontakte/android/NewsComment;->text:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_4

    const/4 v6, 0x0

    :goto_1
    invoke-virtual {v7, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1835
    iget v6, v1, Lcom/vkontakte/android/NewsComment;->numLikes:I

    if-lez v6, :cond_7

    .line 1836
    const v6, 0x7f090113

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1837
    const v6, 0x7f090113

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    iget v8, v1, Lcom/vkontakte/android/NewsComment;->numLikes:I

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1838
    const v6, 0x7f090113

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iget-boolean v7, v1, Lcom/vkontakte/android/NewsComment;->isLiked:Z

    if-eqz v7, :cond_5

    const v7, -0xc77239

    :goto_2
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1839
    const v6, 0x7f090113

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iget-object v7, p0, Lcom/vkontakte/android/fragments/PostViewFragment$PostCommentsAdapter;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-virtual {v7}, Lcom/vkontakte/android/fragments/PostViewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    iget-boolean v7, v1, Lcom/vkontakte/android/NewsComment;->isLiked:Z

    if-eqz v7, :cond_6

    const v7, 0x7f02012e

    :goto_3
    invoke-virtual {v8, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1844
    :goto_4
    const v6, 0x7f09009a

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 1845
    iget-object v6, v1, Lcom/vkontakte/android/NewsComment;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_d

    .line 1846
    const v6, 0x7f09009a

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1847
    iget-object v6, v1, Lcom/vkontakte/android/NewsComment;->attachments:Ljava/util/ArrayList;

    const/4 v7, 0x0

    const v8, 0x7f09009a

    invoke-static {p2, v6, v7, v8}, Lcom/vkontakte/android/NewsItemView;->addAttachments(Landroid/view/View;Ljava/util/ArrayList;Lcom/vkontakte/android/NewsEntry;I)V

    .line 1848
    const/4 v2, 0x0

    .line 1849
    .local v2, "idx":I
    iget-object v6, v1, Lcom/vkontakte/android/NewsComment;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_8

    .line 1874
    .end local v2    # "idx":I
    :goto_6
    iget-object v6, p0, Lcom/vkontakte/android/fragments/PostViewFragment$PostCommentsAdapter;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v6}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$5(Lcom/vkontakte/android/fragments/PostViewFragment;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    move-result-object v6

    iget-object v7, v1, Lcom/vkontakte/android/NewsComment;->userPhoto:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->isAlreadyLoaded(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 1875
    const v6, 0x7f0901df

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/vkontakte/android/fragments/PostViewFragment$PostCommentsAdapter;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v7}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$5(Lcom/vkontakte/android/fragments/PostViewFragment;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    move-result-object v7

    iget-object v8, v1, Lcom/vkontakte/android/NewsComment;->userPhoto:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_0

    .line 1833
    :cond_4
    const/16 v6, 0x8

    goto/16 :goto_1

    .line 1838
    :cond_5
    const v7, -0x59595a

    goto/16 :goto_2

    .line 1839
    :cond_6
    const v7, 0x7f02012d

    goto :goto_3

    .line 1841
    :cond_7
    const v6, 0x7f090113

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    .line 1849
    .restart local v2    # "idx":I
    :cond_8
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/Attachment;

    .line 1850
    .local v0, "att":Lcom/vkontakte/android/Attachment;
    instance-of v6, v0, Lcom/vkontakte/android/PhotoAttachment;

    if-eqz v6, :cond_9

    move-object v6, v0

    .line 1851
    check-cast v6, Lcom/vkontakte/android/PhotoAttachment;

    invoke-virtual {v6}, Lcom/vkontakte/android/PhotoAttachment;->getThumbURL()Ljava/lang/String;

    move-result-object v5

    .line 1852
    .local v5, "src":Ljava/lang/String;
    iget-object v6, p0, Lcom/vkontakte/android/fragments/PostViewFragment$PostCommentsAdapter;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v6}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$5(Lcom/vkontakte/android/fragments/PostViewFragment;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->isAlreadyLoaded(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_c

    iget-object v6, p0, Lcom/vkontakte/android/fragments/PostViewFragment$PostCommentsAdapter;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v6}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$5(Lcom/vkontakte/android/fragments/PostViewFragment;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v6

    if-eqz v6, :cond_c

    .line 1853
    const v6, 0x7f09009a

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    invoke-virtual {v6, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iget-object v8, p0, Lcom/vkontakte/android/fragments/PostViewFragment$PostCommentsAdapter;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v8}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$5(Lcom/vkontakte/android/fragments/PostViewFragment;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    move-result-object v8

    invoke-virtual {v8, v5}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1854
    const v6, 0x7f09009a

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    invoke-virtual {v6, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/vkontakte/android/PhotoAttachment$FixedSizeImageView;

    invoke-virtual {v6}, Lcom/vkontakte/android/PhotoAttachment$FixedSizeImageView;->dontAnimate()V

    .line 1858
    .end local v5    # "src":Ljava/lang/String;
    :cond_9
    :goto_7
    instance-of v6, v0, Lcom/vkontakte/android/VideoAttachment;

    if-eqz v6, :cond_a

    move-object v6, v0

    .line 1859
    check-cast v6, Lcom/vkontakte/android/VideoAttachment;

    iget-object v5, v6, Lcom/vkontakte/android/VideoAttachment;->image:Ljava/lang/String;

    .line 1860
    .restart local v5    # "src":Ljava/lang/String;
    iget-object v6, p0, Lcom/vkontakte/android/fragments/PostViewFragment$PostCommentsAdapter;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v6}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$5(Lcom/vkontakte/android/fragments/PostViewFragment;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->isAlreadyLoaded(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 1861
    const v6, 0x7f09009a

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    invoke-virtual {v6, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/vkontakte/android/VideoAttachView;

    iget-object v8, p0, Lcom/vkontakte/android/fragments/PostViewFragment$PostCommentsAdapter;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v8}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$5(Lcom/vkontakte/android/fragments/PostViewFragment;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    move-result-object v8

    invoke-virtual {v8, v5}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/vkontakte/android/VideoAttachView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1863
    .end local v5    # "src":Ljava/lang/String;
    :cond_a
    instance-of v6, v0, Lcom/vkontakte/android/DocumentAttachment;

    if-eqz v6, :cond_b

    move-object v6, v0

    check-cast v6, Lcom/vkontakte/android/DocumentAttachment;

    iget-object v6, v6, Lcom/vkontakte/android/DocumentAttachment;->thumb:Ljava/lang/String;

    if-eqz v6, :cond_b

    move-object v6, v0

    check-cast v6, Lcom/vkontakte/android/DocumentAttachment;

    iget-object v6, v6, Lcom/vkontakte/android/DocumentAttachment;->thumb:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_b

    .line 1864
    check-cast v0, Lcom/vkontakte/android/DocumentAttachment;

    .end local v0    # "att":Lcom/vkontakte/android/Attachment;
    iget-object v5, v0, Lcom/vkontakte/android/DocumentAttachment;->thumb:Ljava/lang/String;

    .line 1865
    .restart local v5    # "src":Ljava/lang/String;
    iget-object v6, p0, Lcom/vkontakte/android/fragments/PostViewFragment$PostCommentsAdapter;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v6}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$5(Lcom/vkontakte/android/fragments/PostViewFragment;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->isAlreadyLoaded(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 1866
    const v6, 0x7f09009a

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    invoke-virtual {v6, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    const v8, 0x7f090056

    invoke-virtual {v6, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iget-object v8, p0, Lcom/vkontakte/android/fragments/PostViewFragment$PostCommentsAdapter;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v8}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$5(Lcom/vkontakte/android/fragments/PostViewFragment;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    move-result-object v8

    invoke-virtual {v8, v5}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1868
    .end local v5    # "src":Ljava/lang/String;
    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_5

    .line 1856
    .restart local v0    # "att":Lcom/vkontakte/android/Attachment;
    .restart local v5    # "src":Ljava/lang/String;
    :cond_c
    const v6, 0x7f09009a

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    invoke-virtual {v6, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    const v8, 0x7f020238

    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_7

    .line 1871
    .end local v0    # "att":Lcom/vkontakte/android/Attachment;
    .end local v2    # "idx":I
    .end local v5    # "src":Ljava/lang/String;
    :cond_d
    const v6, 0x7f09009a

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_6

    .line 1877
    :cond_e
    const v6, 0x7f0901df

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    const v7, 0x7f02027c

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 1779
    const/4 v0, 0x2

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "pos"    # I

    .prologue
    .line 1787
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment$PostCommentsAdapter;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$3(Lcom/vkontakte/android/fragments/PostViewFragment;)Ljava/util/ArrayList;

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
