.class Lcom/vkontakte/android/fragments/FriendListFragment$FriendsAdapter;
.super Lcom/vkontakte/android/ui/MultiSectionAdapter;
.source "FriendListFragment.java"

# interfaces
.implements Landroid/widget/SectionIndexer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/fragments/FriendListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FriendsAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/FriendListFragment;


# direct methods
.method private constructor <init>(Lcom/vkontakte/android/fragments/FriendListFragment;)V
    .locals 0

    .prologue
    .line 573
    iput-object p1, p0, Lcom/vkontakte/android/fragments/FriendListFragment$FriendsAdapter;->this$0:Lcom/vkontakte/android/fragments/FriendListFragment;

    invoke-direct {p0}, Lcom/vkontakte/android/ui/MultiSectionAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkontakte/android/fragments/FriendListFragment;Lcom/vkontakte/android/fragments/FriendListFragment$FriendsAdapter;)V
    .locals 0

    .prologue
    .line 573
    invoke-direct {p0, p1}, Lcom/vkontakte/android/fragments/FriendListFragment$FriendsAdapter;-><init>(Lcom/vkontakte/android/fragments/FriendListFragment;)V

    return-void
.end method


# virtual methods
.method public getItemCount(I)I
    .locals 1
    .param p1, "section"    # I

    .prologue
    .line 611
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendListFragment$FriendsAdapter;->this$0:Lcom/vkontakte/android/fragments/FriendListFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/FriendListFragment;->access$1(Lcom/vkontakte/android/fragments/FriendListFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/fragments/FriendListFragment$Section;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/FriendListFragment$Section;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemId(II)J
    .locals 2
    .param p1, "section"    # I
    .param p2, "item"    # I

    .prologue
    .line 616
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getPositionForSection(I)I
    .locals 1
    .param p1, "section"    # I

    .prologue
    .line 626
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendListFragment$FriendsAdapter;->this$0:Lcom/vkontakte/android/fragments/FriendListFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/FriendListFragment;->access$1(Lcom/vkontakte/android/fragments/FriendListFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    const/4 v0, 0x0

    .line 627
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendListFragment$FriendsAdapter;->this$0:Lcom/vkontakte/android/fragments/FriendListFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/FriendListFragment;->access$1(Lcom/vkontakte/android/fragments/FriendListFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/fragments/FriendListFragment$Section;

    iget v0, v0, Lcom/vkontakte/android/fragments/FriendListFragment$Section;->startPos:I

    goto :goto_0
.end method

.method public getSectionCount()I
    .locals 1

    .prologue
    .line 606
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendListFragment$FriendsAdapter;->this$0:Lcom/vkontakte/android/fragments/FriendListFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/FriendListFragment;->access$1(Lcom/vkontakte/android/fragments/FriendListFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getSectionTitle(I)Ljava/lang/String;
    .locals 1
    .param p1, "section"    # I

    .prologue
    .line 601
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendListFragment$FriendsAdapter;->this$0:Lcom/vkontakte/android/fragments/FriendListFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/FriendListFragment;->access$1(Lcom/vkontakte/android/fragments/FriendListFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/fragments/FriendListFragment$Section;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/FriendListFragment$Section;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getSections()[Ljava/lang/Object;
    .locals 2

    .prologue
    .line 632
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendListFragment$FriendsAdapter;->this$0:Lcom/vkontakte/android/fragments/FriendListFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/FriendListFragment;->access$1(Lcom/vkontakte/android/fragments/FriendListFragment;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/vkontakte/android/fragments/FriendListFragment$Section;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getView(IILandroid/view/View;)Landroid/view/View;
    .locals 7
    .param p1, "section"    # I
    .param p2, "item"    # I
    .param p3, "convertView"    # Landroid/view/View;

    .prologue
    const v6, 0x7f0900c2

    const v5, 0x7f0900c1

    .line 577
    move-object v1, p3

    .line 578
    .local v1, "view":Landroid/view/View;
    if-nez v1, :cond_0

    .line 579
    iget-object v2, p0, Lcom/vkontakte/android/fragments/FriendListFragment$FriendsAdapter;->this$0:Lcom/vkontakte/android/fragments/FriendListFragment;

    invoke-virtual {v2}, Lcom/vkontakte/android/fragments/FriendListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    iget-object v2, p0, Lcom/vkontakte/android/fragments/FriendListFragment$FriendsAdapter;->this$0:Lcom/vkontakte/android/fragments/FriendListFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/FriendListFragment;->access$0(Lcom/vkontakte/android/fragments/FriendListFragment;)Z

    move-result v2

    if-eqz v2, :cond_2

    const v2, 0x7f030041

    :goto_0
    const/4 v4, 0x0

    invoke-static {v3, v2, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 581
    :cond_0
    iget-object v2, p0, Lcom/vkontakte/android/fragments/FriendListFragment$FriendsAdapter;->this$0:Lcom/vkontakte/android/fragments/FriendListFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/FriendListFragment;->access$1(Lcom/vkontakte/android/fragments/FriendListFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/fragments/FriendListFragment$Section;

    iget-object v2, v2, Lcom/vkontakte/android/fragments/FriendListFragment$Section;->list:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/UserProfile;

    .line 582
    .local v0, "user":Lcom/vkontakte/android/UserProfile;
    const v2, 0x7f0900c3

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, v0, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 584
    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iget v2, v0, Lcom/vkontakte/android/UserProfile;->online:I

    if-lez v2, :cond_3

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 585
    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iget v3, v0, Lcom/vkontakte/android/UserProfile;->online:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_4

    const v3, 0x7f02019e

    :goto_2
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 587
    iget-object v2, p0, Lcom/vkontakte/android/fragments/FriendListFragment$FriendsAdapter;->this$0:Lcom/vkontakte/android/fragments/FriendListFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/FriendListFragment;->access$2(Lcom/vkontakte/android/fragments/FriendListFragment;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    move-result-object v2

    iget-object v3, v0, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->isAlreadyLoaded(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 588
    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/vkontakte/android/fragments/FriendListFragment$FriendsAdapter;->this$0:Lcom/vkontakte/android/fragments/FriendListFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/FriendListFragment;->access$2(Lcom/vkontakte/android/fragments/FriendListFragment;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    move-result-object v3

    iget-object v4, v0, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 592
    :goto_3
    iget-object v2, p0, Lcom/vkontakte/android/fragments/FriendListFragment$FriendsAdapter;->this$0:Lcom/vkontakte/android/fragments/FriendListFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/FriendListFragment;->access$0(Lcom/vkontakte/android/fragments/FriendListFragment;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 593
    const v2, 0x7f0900c4

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/vkontakte/android/fragments/FriendListFragment$FriendsAdapter;->this$0:Lcom/vkontakte/android/fragments/FriendListFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/FriendListFragment;->access$3(Lcom/vkontakte/android/fragments/FriendListFragment;)Ljava/util/ArrayList;

    move-result-object v3

    iget v4, v0, Lcom/vkontakte/android/UserProfile;->uid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const v3, 0x7f0200d7

    :goto_4
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 596
    :cond_1
    return-object v1

    .line 579
    .end local v0    # "user":Lcom/vkontakte/android/UserProfile;
    :cond_2
    const v2, 0x7f030040

    goto/16 :goto_0

    .line 584
    .restart local v0    # "user":Lcom/vkontakte/android/UserProfile;
    :cond_3
    const/16 v2, 0x8

    goto :goto_1

    .line 585
    :cond_4
    const v3, 0x7f02019f

    goto :goto_2

    .line 590
    :cond_5
    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const v3, 0x7f02027c

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3

    .line 593
    :cond_6
    const v3, 0x7f0200d6

    goto :goto_4
.end method

.method public isSectionHeaderVisible(I)Z
    .locals 1
    .param p1, "section"    # I

    .prologue
    .line 621
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendListFragment$FriendsAdapter;->this$0:Lcom/vkontakte/android/fragments/FriendListFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/FriendListFragment;->access$1(Lcom/vkontakte/android/fragments/FriendListFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/fragments/FriendListFragment$Section;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/FriendListFragment$Section;->title:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendListFragment$FriendsAdapter;->this$0:Lcom/vkontakte/android/fragments/FriendListFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/FriendListFragment;->access$1(Lcom/vkontakte/android/fragments/FriendListFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/fragments/FriendListFragment$Section;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/FriendListFragment$Section;->list:Ljava/util/ArrayList;

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
