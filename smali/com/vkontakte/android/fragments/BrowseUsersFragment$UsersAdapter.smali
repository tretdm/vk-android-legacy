.class public Lcom/vkontakte/android/fragments/BrowseUsersFragment$UsersAdapter;
.super Lcom/vkontakte/android/ui/MultiSectionAdapter;
.source "BrowseUsersFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/fragments/BrowseUsersFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "UsersAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/BrowseUsersFragment;


# direct methods
.method protected constructor <init>(Lcom/vkontakte/android/fragments/BrowseUsersFragment;)V
    .locals 0

    .prologue
    .line 662
    iput-object p1, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment$UsersAdapter;->this$0:Lcom/vkontakte/android/fragments/BrowseUsersFragment;

    invoke-direct {p0}, Lcom/vkontakte/android/ui/MultiSectionAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getHeaderLayoutResource()I
    .locals 1

    .prologue
    .line 737
    const v0, 0x7f03003c

    return v0
.end method

.method public getItem(II)Ljava/lang/Object;
    .locals 1
    .param p1, "section"    # I
    .param p2, "position"    # I

    .prologue
    .line 671
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment$UsersAdapter;->this$0:Lcom/vkontakte/android/fragments/BrowseUsersFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->access$1100(Lcom/vkontakte/android/fragments/BrowseUsersFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemCount(I)I
    .locals 1
    .param p1, "section"    # I

    .prologue
    .line 666
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment$UsersAdapter;->this$0:Lcom/vkontakte/android/fragments/BrowseUsersFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->access$1100(Lcom/vkontakte/android/fragments/BrowseUsersFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemId(II)J
    .locals 2
    .param p1, "section"    # I
    .param p2, "position"    # I

    .prologue
    .line 676
    if-ltz p2, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment$UsersAdapter;->this$0:Lcom/vkontakte/android/fragments/BrowseUsersFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->access$1100(Lcom/vkontakte/android/fragments/BrowseUsersFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p2, v0, :cond_1

    :cond_0
    const-wide/16 v0, 0x0

    .line 677
    :goto_0
    return-wide v0

    :cond_1
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment$UsersAdapter;->this$0:Lcom/vkontakte/android/fragments/BrowseUsersFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->access$1100(Lcom/vkontakte/android/fragments/BrowseUsersFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/UserProfile;

    iget v0, v0, Lcom/vkontakte/android/UserProfile;->uid:I

    int-to-long v0, v0

    goto :goto_0
.end method

.method public getSectionCount()I
    .locals 1

    .prologue
    .line 727
    const/4 v0, 0x1

    return v0
.end method

.method public getSectionTitle(I)Ljava/lang/String;
    .locals 3
    .param p1, "section"    # I

    .prologue
    .line 720
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment$UsersAdapter;->this$0:Lcom/vkontakte/android/fragments/BrowseUsersFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->access$2900(Lcom/vkontakte/android/fragments/BrowseUsersFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 721
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment$UsersAdapter;->this$0:Lcom/vkontakte/android/fragments/BrowseUsersFragment;

    const v1, 0x7f0d01c0

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 722
    :goto_0
    return-object v0

    :cond_0
    const v0, 0x7f07003a

    iget-object v1, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment$UsersAdapter;->this$0:Lcom/vkontakte/android/fragments/BrowseUsersFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->access$2700(Lcom/vkontakte/android/fragments/BrowseUsersFragment;)I

    move-result v1

    iget-object v2, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment$UsersAdapter;->this$0:Lcom/vkontakte/android/fragments/BrowseUsersFragment;

    invoke-virtual {v2}, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/vkontakte/android/Global;->langPlural(IILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getView(IILandroid/view/View;)Landroid/view/View;
    .locals 10
    .param p1, "section"    # I
    .param p2, "position"    # I
    .param p3, "convertView"    # Landroid/view/View;

    .prologue
    .line 682
    move-object v5, p3

    .line 683
    .local v5, "view":Landroid/view/View;
    if-nez v5, :cond_0

    .line 684
    iget-object v6, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment$UsersAdapter;->this$0:Lcom/vkontakte/android/fragments/BrowseUsersFragment;

    invoke-virtual {v6}, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const v7, 0x7f03007e

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 685
    const v6, 0x7f0800b1

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-static {}, Lcom/vkontakte/android/ui/Fonts;->getRobotoLight()Landroid/graphics/Typeface;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 686
    const v6, 0x7f0800ae

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 688
    :cond_0
    if-nez p2, :cond_2

    .line 689
    const v6, 0x7f020043

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundResource(I)V

    .line 695
    :goto_0
    iget-object v6, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment$UsersAdapter;->this$0:Lcom/vkontakte/android/fragments/BrowseUsersFragment;

    invoke-static {v6}, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->access$1100(Lcom/vkontakte/android/fragments/BrowseUsersFragment;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vkontakte/android/UserProfile;

    .line 696
    .local v4, "u":Lcom/vkontakte/android/UserProfile;
    iget-object v2, v4, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    .line 697
    .local v2, "name":Ljava/lang/CharSequence;
    iget-object v6, v4, Lcom/vkontakte/android/UserProfile;->extra:Ljava/lang/Object;

    instance-of v6, v6, Ljava/lang/Boolean;

    if-eqz v6, :cond_1

    iget-object v6, v4, Lcom/vkontakte/android/UserProfile;->extra:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 698
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 699
    .local v0, "bldr":Landroid/text/SpannableStringBuilder;
    invoke-static {}, Landroid/text/Spannable$Factory;->getInstance()Landroid/text/Spannable$Factory;

    move-result-object v6

    const-string v7, "F"

    invoke-virtual {v6, v7}, Landroid/text/Spannable$Factory;->newSpannable(Ljava/lang/CharSequence;)Landroid/text/Spannable;

    move-result-object v3

    .line 700
    .local v3, "sp":Landroid/text/Spannable;
    iget-object v6, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment$UsersAdapter;->this$0:Lcom/vkontakte/android/fragments/BrowseUsersFragment;

    invoke-virtual {v6}, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f020165

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 701
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    invoke-virtual {v1, v6, v7, v8, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 702
    new-instance v6, Landroid/text/style/ImageSpan;

    const/4 v7, 0x1

    invoke-direct {v6, v1, v7}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-interface {v3, v6, v7, v8, v9}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 703
    const-string v6, "\u00a0"

    invoke-virtual {v0, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 704
    invoke-virtual {v0, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 705
    move-object v2, v0

    .line 707
    .end local v0    # "bldr":Landroid/text/SpannableStringBuilder;
    .end local v1    # "d":Landroid/graphics/drawable/Drawable;
    .end local v3    # "sp":Landroid/text/Spannable;
    :cond_1
    const v6, 0x7f0800af

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 708
    const v6, 0x7f0800b1

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iget-object v7, v4, Lcom/vkontakte/android/UserProfile;->university:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 710
    iget-object v6, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment$UsersAdapter;->this$0:Lcom/vkontakte/android/fragments/BrowseUsersFragment;

    invoke-static {v6}, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->access$2200(Lcom/vkontakte/android/fragments/BrowseUsersFragment;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    move-result-object v6

    iget-object v7, v4, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->isAlreadyLoaded(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 711
    const v6, 0x7f0800ad

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment$UsersAdapter;->this$0:Lcom/vkontakte/android/fragments/BrowseUsersFragment;

    invoke-static {v7}, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->access$2200(Lcom/vkontakte/android/fragments/BrowseUsersFragment;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    move-result-object v7

    iget-object v8, v4, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 715
    :goto_1
    return-object v5

    .line 690
    .end local v2    # "name":Ljava/lang/CharSequence;
    .end local v4    # "u":Lcom/vkontakte/android/UserProfile;
    :cond_2
    iget-object v6, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment$UsersAdapter;->this$0:Lcom/vkontakte/android/fragments/BrowseUsersFragment;

    invoke-static {v6}, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->access$1100(Lcom/vkontakte/android/fragments/BrowseUsersFragment;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ne p2, v6, :cond_3

    .line 691
    const v6, 0x7f02003f

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 693
    :cond_3
    const v6, 0x7f020041

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 713
    .restart local v2    # "name":Ljava/lang/CharSequence;
    .restart local v4    # "u":Lcom/vkontakte/android/UserProfile;
    :cond_4
    const v6, 0x7f0800ad

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iget v7, v4, Lcom/vkontakte/android/UserProfile;->uid:I

    if-gez v7, :cond_5

    const v7, 0x7f020074

    :goto_2
    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :cond_5
    const v7, 0x7f0201ec

    goto :goto_2
.end method

.method public isSectionHeaderVisible(I)Z
    .locals 1
    .param p1, "section"    # I

    .prologue
    .line 732
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment$UsersAdapter;->this$0:Lcom/vkontakte/android/fragments/BrowseUsersFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->access$1100(Lcom/vkontakte/android/fragments/BrowseUsersFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
