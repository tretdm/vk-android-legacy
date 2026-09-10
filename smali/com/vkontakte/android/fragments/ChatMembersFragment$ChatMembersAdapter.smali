.class Lcom/vkontakte/android/fragments/ChatMembersFragment$ChatMembersAdapter;
.super Lcom/vkontakte/android/ui/MultiSectionAdapter;
.source "ChatMembersFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/fragments/ChatMembersFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChatMembersAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/ChatMembersFragment;


# direct methods
.method private constructor <init>(Lcom/vkontakte/android/fragments/ChatMembersFragment;)V
    .locals 0

    .prologue
    .line 676
    iput-object p1, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment$ChatMembersAdapter;->this$0:Lcom/vkontakte/android/fragments/ChatMembersFragment;

    invoke-direct {p0}, Lcom/vkontakte/android/ui/MultiSectionAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkontakte/android/fragments/ChatMembersFragment;Lcom/vkontakte/android/fragments/ChatMembersFragment$ChatMembersAdapter;)V
    .locals 0

    .prologue
    .line 676
    invoke-direct {p0, p1}, Lcom/vkontakte/android/fragments/ChatMembersFragment$ChatMembersAdapter;-><init>(Lcom/vkontakte/android/fragments/ChatMembersFragment;)V

    return-void
.end method

.method static synthetic access$1(Lcom/vkontakte/android/fragments/ChatMembersFragment$ChatMembersAdapter;)Lcom/vkontakte/android/fragments/ChatMembersFragment;
    .locals 1

    .prologue
    .line 676
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment$ChatMembersAdapter;->this$0:Lcom/vkontakte/android/fragments/ChatMembersFragment;

    return-object v0
.end method


# virtual methods
.method public getExtraViewTypeCount()I
    .locals 1

    .prologue
    .line 801
    const/4 v0, 0x7

    return v0
.end method

.method public getItemCount(I)I
    .locals 4
    .param p1, "section"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 756
    packed-switch p1, :pswitch_data_0

    .line 766
    :cond_0
    :goto_0
    return v0

    :pswitch_0
    move v0, v1

    .line 758
    goto :goto_0

    .line 760
    :pswitch_1
    iget-object v1, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment$ChatMembersAdapter;->this$0:Lcom/vkontakte/android/fragments/ChatMembersFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->access$13(Lcom/vkontakte/android/fragments/ChatMembersFragment;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    .line 762
    :pswitch_2
    iget-object v2, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment$ChatMembersAdapter;->this$0:Lcom/vkontakte/android/fragments/ChatMembersFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->access$10(Lcom/vkontakte/android/fragments/ChatMembersFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget-object v3, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment$ChatMembersAdapter;->this$0:Lcom/vkontakte/android/fragments/ChatMembersFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->access$13(Lcom/vkontakte/android/fragments/ChatMembersFragment;)Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_1
    add-int/2addr v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    .line 764
    :pswitch_3
    iget-object v2, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment$ChatMembersAdapter;->this$0:Lcom/vkontakte/android/fragments/ChatMembersFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->access$13(Lcom/vkontakte/android/fragments/ChatMembersFragment;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 756
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getItemId(II)J
    .locals 2
    .param p1, "section"    # I
    .param p2, "item"    # I

    .prologue
    .line 771
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getItemViewType(II)I
    .locals 4
    .param p1, "section"    # I
    .param p2, "item"    # I

    .prologue
    const/4 v1, 0x3

    const/4 v0, 0x2

    const/4 v2, 0x0

    .line 781
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 797
    :goto_0
    return v0

    .line 784
    :cond_0
    const/4 v3, 0x1

    if-ne p1, v3, :cond_2

    .line 785
    if-nez p2, :cond_1

    move v0, v1

    goto :goto_0

    .line 786
    :cond_1
    const/4 v0, 0x4

    goto :goto_0

    .line 788
    :cond_2
    if-ne p1, v0, :cond_4

    .line 789
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment$ChatMembersAdapter;->this$0:Lcom/vkontakte/android/fragments/ChatMembersFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->access$10(Lcom/vkontakte/android/fragments/ChatMembersFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne p2, v0, :cond_3

    .line 790
    const/4 v0, 0x5

    goto :goto_0

    :cond_3
    move v0, v2

    .line 792
    goto :goto_0

    .line 794
    :cond_4
    if-ne p1, v1, :cond_5

    .line 795
    const/4 v0, 0x6

    goto :goto_0

    :cond_5
    move v0, v2

    .line 797
    goto :goto_0
.end method

.method public getSectionCount()I
    .locals 1

    .prologue
    .line 751
    const/4 v0, 0x4

    return v0
.end method

.method public getSectionTitle(I)Ljava/lang/String;
    .locals 2
    .param p1, "section"    # I

    .prologue
    .line 733
    packed-switch p1, :pswitch_data_0

    .line 741
    const-string v0, ""

    :goto_0
    return-object v0

    .line 735
    :pswitch_0
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment$ChatMembersAdapter;->this$0:Lcom/vkontakte/android/fragments/ChatMembersFragment;

    const v1, 0x7f0601d4

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 737
    :pswitch_1
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment$ChatMembersAdapter;->this$0:Lcom/vkontakte/android/fragments/ChatMembersFragment;

    const v1, 0x7f060058

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 739
    :pswitch_2
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment$ChatMembersAdapter;->this$0:Lcom/vkontakte/android/fragments/ChatMembersFragment;

    const v1, 0x7f060136

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 733
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getView(IILandroid/view/View;)Landroid/view/View;
    .locals 10
    .param p1, "section"    # I
    .param p2, "item"    # I
    .param p3, "convertView"    # Landroid/view/View;

    .prologue
    const v7, 0x7f08008e

    const v9, 0x7f08008b

    const/4 v3, 0x0

    const v8, 0x7f08008d

    const/4 v6, 0x1

    .line 680
    if-nez p1, :cond_0

    .line 681
    iget-object v2, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment$ChatMembersAdapter;->this$0:Lcom/vkontakte/android/fragments/ChatMembersFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->access$7(Lcom/vkontakte/android/fragments/ChatMembersFragment;)Landroid/view/View;

    move-result-object v1

    .line 728
    :goto_0
    return-object v1

    .line 683
    :cond_0
    if-ne p1, v6, :cond_2

    .line 684
    if-nez p2, :cond_1

    .line 685
    iget-object v2, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment$ChatMembersAdapter;->this$0:Lcom/vkontakte/android/fragments/ChatMembersFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->access$8(Lcom/vkontakte/android/fragments/ChatMembersFragment;)Landroid/widget/FrameLayout;

    move-result-object v1

    goto :goto_0

    .line 687
    :cond_1
    if-ne p2, v6, :cond_2

    .line 688
    iget-object v2, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment$ChatMembersAdapter;->this$0:Lcom/vkontakte/android/fragments/ChatMembersFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->access$9(Lcom/vkontakte/android/fragments/ChatMembersFragment;)Landroid/widget/FrameLayout;

    move-result-object v1

    goto :goto_0

    .line 691
    :cond_2
    const/4 v2, 0x2

    if-ne p1, v2, :cond_b

    .line 692
    iget-object v2, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment$ChatMembersAdapter;->this$0:Lcom/vkontakte/android/fragments/ChatMembersFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->access$10(Lcom/vkontakte/android/fragments/ChatMembersFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p2, v2, :cond_a

    .line 693
    move-object v1, p3

    .line 694
    .local v1, "v":Landroid/view/View;
    if-nez v1, :cond_3

    .line 695
    iget-object v2, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment$ChatMembersAdapter;->this$0:Lcom/vkontakte/android/fragments/ChatMembersFragment;

    invoke-virtual {v2}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v4, 0x7f030028

    const/4 v5, 0x0

    invoke-static {v2, v4, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 696
    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v4, Lcom/vkontakte/android/fragments/ChatMembersFragment$ChatMembersAdapter$1;

    invoke-direct {v4, p0}, Lcom/vkontakte/android/fragments/ChatMembersFragment$ChatMembersAdapter$1;-><init>(Lcom/vkontakte/android/fragments/ChatMembersFragment$ChatMembersAdapter;)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 703
    :cond_3
    iget-object v2, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment$ChatMembersAdapter;->this$0:Lcom/vkontakte/android/fragments/ChatMembersFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->access$10(Lcom/vkontakte/android/fragments/ChatMembersFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/ChatUser;

    .line 704
    .local v0, "user":Lcom/vkontakte/android/ChatUser;
    const v2, 0x7f08008c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v4, v0, Lcom/vkontakte/android/ChatUser;->user:Lcom/vkontakte/android/UserProfile;

    iget-object v4, v4, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 705
    iget-object v2, v0, Lcom/vkontakte/android/ChatUser;->inviter:Lcom/vkontakte/android/UserProfile;

    iget v2, v2, Lcom/vkontakte/android/UserProfile;->uid:I

    iget-object v4, v0, Lcom/vkontakte/android/ChatUser;->user:Lcom/vkontakte/android/UserProfile;

    iget v4, v4, Lcom/vkontakte/android/UserProfile;->uid:I

    if-ne v2, v4, :cond_5

    .line 706
    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v4, 0x7f0601d8

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    .line 710
    :goto_1
    iget-object v2, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment$ChatMembersAdapter;->this$0:Lcom/vkontakte/android/fragments/ChatMembersFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->access$3(Lcom/vkontakte/android/fragments/ChatMembersFragment;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    move-result-object v2

    iget-object v4, v0, Lcom/vkontakte/android/ChatUser;->user:Lcom/vkontakte/android/UserProfile;

    iget-object v4, v4, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->isAlreadyLoaded(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 711
    invoke-virtual {v1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment$ChatMembersAdapter;->this$0:Lcom/vkontakte/android/fragments/ChatMembersFragment;

    invoke-static {v4}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->access$3(Lcom/vkontakte/android/fragments/ChatMembersFragment;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    move-result-object v4

    iget-object v5, v0, Lcom/vkontakte/android/ChatUser;->user:Lcom/vkontakte/android/UserProfile;

    iget-object v5, v5, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 716
    :goto_2
    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iget-object v2, v0, Lcom/vkontakte/android/ChatUser;->user:Lcom/vkontakte/android/UserProfile;

    iget v2, v2, Lcom/vkontakte/android/UserProfile;->uid:I

    sget v5, Lcom/vkontakte/android/Global;->uid:I

    if-eq v2, v5, :cond_7

    iget-object v2, v0, Lcom/vkontakte/android/ChatUser;->inviter:Lcom/vkontakte/android/UserProfile;

    iget v2, v2, Lcom/vkontakte/android/UserProfile;->uid:I

    sget v5, Lcom/vkontakte/android/Global;->uid:I

    if-eq v2, v5, :cond_4

    iget-object v2, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment$ChatMembersAdapter;->this$0:Lcom/vkontakte/android/fragments/ChatMembersFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->access$12(Lcom/vkontakte/android/fragments/ChatMembersFragment;)I

    move-result v2

    sget v5, Lcom/vkontakte/android/Global;->uid:I

    if-ne v2, v5, :cond_7

    :cond_4
    iget-object v2, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment$ChatMembersAdapter;->this$0:Lcom/vkontakte/android/fragments/ChatMembersFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->access$13(Lcom/vkontakte/android/fragments/ChatMembersFragment;)Z

    move-result v2

    if-nez v2, :cond_7

    move v2, v3

    :goto_3
    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    .line 717
    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 719
    if-nez p2, :cond_8

    const v2, 0x7f0200b0

    :goto_4
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 708
    :cond_5
    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment$ChatMembersAdapter;->this$0:Lcom/vkontakte/android/fragments/ChatMembersFragment;

    const v5, 0x7f0601d7

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, v0, Lcom/vkontakte/android/ChatUser;->inviter:Lcom/vkontakte/android/UserProfile;

    iget-object v7, v7, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    aput-object v7, v6, v3

    invoke-virtual {v4, v5, v6}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 713
    :cond_6
    invoke-virtual {v1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const v4, 0x7f020247

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 716
    :cond_7
    const/4 v2, 0x4

    goto :goto_3

    .line 719
    :cond_8
    iget-object v2, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment$ChatMembersAdapter;->this$0:Lcom/vkontakte/android/fragments/ChatMembersFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->access$13(Lcom/vkontakte/android/fragments/ChatMembersFragment;)Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment$ChatMembersAdapter;->this$0:Lcom/vkontakte/android/fragments/ChatMembersFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->access$10(Lcom/vkontakte/android/fragments/ChatMembersFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne p2, v2, :cond_9

    const v2, 0x7f0200ac

    goto :goto_4

    :cond_9
    const v2, 0x7f0200ae

    goto :goto_4

    .line 723
    .end local v0    # "user":Lcom/vkontakte/android/ChatUser;
    .end local v1    # "v":Landroid/view/View;
    :cond_a
    iget-object v2, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment$ChatMembersAdapter;->this$0:Lcom/vkontakte/android/fragments/ChatMembersFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->access$14(Lcom/vkontakte/android/fragments/ChatMembersFragment;)Lcom/vkontakte/android/ui/OverlayTextView;

    move-result-object v1

    goto/16 :goto_0

    .line 725
    :cond_b
    const/4 v2, 0x3

    if-ne p1, v2, :cond_c

    .line 726
    iget-object v2, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment$ChatMembersAdapter;->this$0:Lcom/vkontakte/android/fragments/ChatMembersFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->access$15(Lcom/vkontakte/android/fragments/ChatMembersFragment;)Lcom/vkontakte/android/ui/OverlayTextView;

    move-result-object v1

    goto/16 :goto_0

    .line 728
    :cond_c
    const/4 v1, 0x0

    goto/16 :goto_0
.end method

.method public isEnabled(II)Z
    .locals 1
    .param p1, "section"    # I
    .param p2, "item"    # I

    .prologue
    .line 746
    const/4 v0, 0x1

    return v0
.end method

.method public isSectionHeaderVisible(I)Z
    .locals 2
    .param p1, "section"    # I

    .prologue
    const/4 v0, 0x0

    .line 776
    iget-object v1, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment$ChatMembersAdapter;->this$0:Lcom/vkontakte/android/fragments/ChatMembersFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->access$13(Lcom/vkontakte/android/fragments/ChatMembersFragment;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 777
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setHeaderStyle(Landroid/widget/TextView;)V
    .locals 4
    .param p1, "t"    # Landroid/widget/TextView;

    .prologue
    const/4 v2, 0x0

    .line 805
    const/4 v0, 0x1

    const/high16 v1, 0x41900000    # 18.0f

    invoke-virtual {p1, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 806
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 807
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 808
    const/high16 v0, 0x41a00000    # 20.0f

    invoke-static {v0}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v0

    const/high16 v1, 0x41000000    # 8.0f

    invoke-static {v1}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v1

    invoke-virtual {p1, v0, v1, v2, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 809
    const v0, -0x767677

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 810
    const v0, 0x33d6bf95    # 1.0E-7f

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v2

    int-to-float v2, v2

    const/4 v3, -0x1

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 811
    return-void
.end method
