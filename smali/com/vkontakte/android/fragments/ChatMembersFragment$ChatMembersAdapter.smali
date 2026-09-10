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
    .line 735
    iput-object p1, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment$ChatMembersAdapter;->this$0:Lcom/vkontakte/android/fragments/ChatMembersFragment;

    invoke-direct {p0}, Lcom/vkontakte/android/ui/MultiSectionAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkontakte/android/fragments/ChatMembersFragment;Lcom/vkontakte/android/fragments/ChatMembersFragment$ChatMembersAdapter;)V
    .locals 0

    .prologue
    .line 735
    invoke-direct {p0, p1}, Lcom/vkontakte/android/fragments/ChatMembersFragment$ChatMembersAdapter;-><init>(Lcom/vkontakte/android/fragments/ChatMembersFragment;)V

    return-void
.end method

.method static synthetic access$1(Lcom/vkontakte/android/fragments/ChatMembersFragment$ChatMembersAdapter;)Lcom/vkontakte/android/fragments/ChatMembersFragment;
    .locals 1

    .prologue
    .line 735
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment$ChatMembersAdapter;->this$0:Lcom/vkontakte/android/fragments/ChatMembersFragment;

    return-object v0
.end method


# virtual methods
.method public getExtraViewTypeCount()I
    .locals 1

    .prologue
    .line 874
    const/16 v0, 0x8

    return v0
.end method

.method public getHeaderLayoutResource()I
    .locals 1

    .prologue
    .line 878
    const v0, 0x7f03004a

    return v0
.end method

.method public getItemCount(I)I
    .locals 4
    .param p1, "section"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 821
    iget-object v2, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment$ChatMembersAdapter;->this$0:Lcom/vkontakte/android/fragments/ChatMembersFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->access$16(Lcom/vkontakte/android/fragments/ChatMembersFragment;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 822
    if-eqz p1, :cond_0

    const/4 v2, 0x4

    if-ne p1, v2, :cond_1

    :cond_0
    move v0, v1

    .line 836
    :cond_1
    :goto_0
    :pswitch_0
    return v0

    .line 824
    :cond_2
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_1
    move v0, v1

    .line 826
    goto :goto_0

    .line 828
    :pswitch_2
    iget-object v1, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment$ChatMembersAdapter;->this$0:Lcom/vkontakte/android/fragments/ChatMembersFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->access$12(Lcom/vkontakte/android/fragments/ChatMembersFragment;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    .line 830
    :pswitch_3
    iget-object v2, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment$ChatMembersAdapter;->this$0:Lcom/vkontakte/android/fragments/ChatMembersFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->access$8(Lcom/vkontakte/android/fragments/ChatMembersFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget-object v3, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment$ChatMembersAdapter;->this$0:Lcom/vkontakte/android/fragments/ChatMembersFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->access$12(Lcom/vkontakte/android/fragments/ChatMembersFragment;)Z

    move-result v3

    if-eqz v3, :cond_3

    :goto_1
    add-int/2addr v0, v2

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1

    .line 832
    :pswitch_4
    iget-object v2, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment$ChatMembersAdapter;->this$0:Lcom/vkontakte/android/fragments/ChatMembersFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->access$12(Lcom/vkontakte/android/fragments/ChatMembersFragment;)Z

    move-result v2

    if-nez v2, :cond_1

    move v0, v1

    goto :goto_0

    .line 824
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
    .end packed-switch
.end method

.method public getItemId(II)J
    .locals 2
    .param p1, "section"    # I
    .param p2, "item"    # I

    .prologue
    .line 841
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getItemViewType(II)I
    .locals 5
    .param p1, "section"    # I
    .param p2, "item"    # I

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x3

    const/4 v0, 0x2

    const/4 v3, 0x0

    .line 851
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 870
    :goto_0
    return v0

    .line 854
    :cond_0
    const/4 v4, 0x1

    if-ne p1, v4, :cond_2

    .line 855
    if-nez p2, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 856
    goto :goto_0

    .line 858
    :cond_2
    if-ne p1, v0, :cond_4

    .line 859
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment$ChatMembersAdapter;->this$0:Lcom/vkontakte/android/fragments/ChatMembersFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->access$8(Lcom/vkontakte/android/fragments/ChatMembersFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne p2, v0, :cond_3

    .line 860
    const/4 v0, 0x5

    goto :goto_0

    :cond_3
    move v0, v3

    .line 862
    goto :goto_0

    .line 864
    :cond_4
    if-ne p1, v1, :cond_5

    .line 865
    const/4 v0, 0x6

    goto :goto_0

    .line 867
    :cond_5
    if-ne p1, v2, :cond_6

    .line 868
    const/4 v0, 0x7

    goto :goto_0

    :cond_6
    move v0, v3

    .line 870
    goto :goto_0
.end method

.method public getSectionCount()I
    .locals 1

    .prologue
    .line 816
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment$ChatMembersAdapter;->this$0:Lcom/vkontakte/android/fragments/ChatMembersFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->access$16(Lcom/vkontakte/android/fragments/ChatMembersFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public getSectionTitle(I)Ljava/lang/String;
    .locals 2
    .param p1, "section"    # I

    .prologue
    .line 798
    packed-switch p1, :pswitch_data_0

    .line 806
    const-string v0, ""

    :goto_0
    return-object v0

    .line 800
    :pswitch_0
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment$ChatMembersAdapter;->this$0:Lcom/vkontakte/android/fragments/ChatMembersFragment;

    const v1, 0x7f0801ed

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 802
    :pswitch_1
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment$ChatMembersAdapter;->this$0:Lcom/vkontakte/android/fragments/ChatMembersFragment;

    const v1, 0x7f080072

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 804
    :pswitch_2
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment$ChatMembersAdapter;->this$0:Lcom/vkontakte/android/fragments/ChatMembersFragment;

    const v1, 0x7f08014f

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 798
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getView(IILandroid/view/View;)Landroid/view/View;
    .locals 12
    .param p1, "section"    # I
    .param p2, "item"    # I
    .param p3, "convertView"    # Landroid/view/View;

    .prologue
    const v11, 0x7f0900a0

    const/4 v5, 0x4

    const v10, 0x7f0900a1

    const/4 v4, 0x0

    const/4 v9, 0x1

    .line 739
    if-nez p1, :cond_0

    .line 740
    iget-object v2, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment$ChatMembersAdapter;->this$0:Lcom/vkontakte/android/fragments/ChatMembersFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->access$5(Lcom/vkontakte/android/fragments/ChatMembersFragment;)Landroid/view/View;

    move-result-object v1

    .line 793
    :goto_0
    return-object v1

    .line 742
    :cond_0
    if-ne p1, v9, :cond_2

    .line 743
    if-nez p2, :cond_1

    .line 744
    iget-object v2, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment$ChatMembersAdapter;->this$0:Lcom/vkontakte/android/fragments/ChatMembersFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->access$6(Lcom/vkontakte/android/fragments/ChatMembersFragment;)Landroid/widget/FrameLayout;

    move-result-object v1

    goto :goto_0

    .line 746
    :cond_1
    if-ne p2, v9, :cond_2

    .line 747
    iget-object v2, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment$ChatMembersAdapter;->this$0:Lcom/vkontakte/android/fragments/ChatMembersFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->access$7(Lcom/vkontakte/android/fragments/ChatMembersFragment;)Landroid/widget/FrameLayout;

    move-result-object v1

    goto :goto_0

    .line 750
    :cond_2
    const/4 v2, 0x2

    if-ne p1, v2, :cond_f

    .line 751
    iget-object v2, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment$ChatMembersAdapter;->this$0:Lcom/vkontakte/android/fragments/ChatMembersFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->access$8(Lcom/vkontakte/android/fragments/ChatMembersFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p2, v2, :cond_e

    .line 752
    move-object v1, p3

    .line 753
    .local v1, "v":Landroid/view/View;
    if-nez v1, :cond_3

    .line 754
    iget-object v2, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment$ChatMembersAdapter;->this$0:Lcom/vkontakte/android/fragments/ChatMembersFragment;

    invoke-virtual {v2}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f03002f

    const/4 v6, 0x0

    invoke-static {v2, v3, v6}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 755
    invoke-virtual {v1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/vkontakte/android/fragments/ChatMembersFragment$ChatMembersAdapter$1;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/fragments/ChatMembersFragment$ChatMembersAdapter$1;-><init>(Lcom/vkontakte/android/fragments/ChatMembersFragment$ChatMembersAdapter;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 762
    :cond_3
    iget-object v2, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment$ChatMembersAdapter;->this$0:Lcom/vkontakte/android/fragments/ChatMembersFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->access$8(Lcom/vkontakte/android/fragments/ChatMembersFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/ChatUser;

    .line 763
    .local v0, "user":Lcom/vkontakte/android/ChatUser;
    const v2, 0x7f0900a2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, v0, Lcom/vkontakte/android/ChatUser;->user:Lcom/vkontakte/android/UserProfile;

    iget-object v3, v3, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 764
    iget-object v2, v0, Lcom/vkontakte/android/ChatUser;->inviter:Lcom/vkontakte/android/UserProfile;

    iget v2, v2, Lcom/vkontakte/android/UserProfile;->uid:I

    iget-object v3, v0, Lcom/vkontakte/android/ChatUser;->user:Lcom/vkontakte/android/UserProfile;

    iget v3, v3, Lcom/vkontakte/android/UserProfile;->uid:I

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment$ChatMembersAdapter;->this$0:Lcom/vkontakte/android/fragments/ChatMembersFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->access$10(Lcom/vkontakte/android/fragments/ChatMembersFragment;)I

    move-result v2

    iget-object v3, v0, Lcom/vkontakte/android/ChatUser;->user:Lcom/vkontakte/android/UserProfile;

    iget v3, v3, Lcom/vkontakte/android/UserProfile;->uid:I

    if-ne v2, v3, :cond_6

    .line 765
    :cond_4
    const v2, 0x7f0900a4

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0801f2

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 769
    :goto_1
    iget-object v2, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment$ChatMembersAdapter;->this$0:Lcom/vkontakte/android/fragments/ChatMembersFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->access$11(Lcom/vkontakte/android/fragments/ChatMembersFragment;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    move-result-object v2

    iget-object v3, v0, Lcom/vkontakte/android/ChatUser;->user:Lcom/vkontakte/android/UserProfile;

    iget-object v3, v3, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->isAlreadyLoaded(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 770
    invoke-virtual {v1, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment$ChatMembersAdapter;->this$0:Lcom/vkontakte/android/fragments/ChatMembersFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->access$11(Lcom/vkontakte/android/fragments/ChatMembersFragment;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    move-result-object v3

    iget-object v6, v0, Lcom/vkontakte/android/ChatUser;->user:Lcom/vkontakte/android/UserProfile;

    iget-object v6, v6, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    invoke-virtual {v3, v6}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 775
    :goto_2
    invoke-virtual {v1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iget-object v2, v0, Lcom/vkontakte/android/ChatUser;->user:Lcom/vkontakte/android/UserProfile;

    iget v2, v2, Lcom/vkontakte/android/UserProfile;->uid:I

    sget v6, Lcom/vkontakte/android/Global;->uid:I

    if-eq v2, v6, :cond_9

    iget-object v2, v0, Lcom/vkontakte/android/ChatUser;->inviter:Lcom/vkontakte/android/UserProfile;

    iget v2, v2, Lcom/vkontakte/android/UserProfile;->uid:I

    sget v6, Lcom/vkontakte/android/Global;->uid:I

    if-eq v2, v6, :cond_5

    iget-object v2, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment$ChatMembersAdapter;->this$0:Lcom/vkontakte/android/fragments/ChatMembersFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->access$10(Lcom/vkontakte/android/fragments/ChatMembersFragment;)I

    move-result v2

    sget v6, Lcom/vkontakte/android/Global;->uid:I

    if-ne v2, v6, :cond_9

    :cond_5
    iget-object v2, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment$ChatMembersAdapter;->this$0:Lcom/vkontakte/android/fragments/ChatMembersFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->access$12(Lcom/vkontakte/android/fragments/ChatMembersFragment;)Z

    move-result v2

    if-nez v2, :cond_9

    move v2, v4

    :goto_3
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 776
    invoke-virtual {v1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 778
    const v2, 0x7f0900a3

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, v0, Lcom/vkontakte/android/ChatUser;->user:Lcom/vkontakte/android/UserProfile;

    iget v3, v3, Lcom/vkontakte/android/UserProfile;->online:I

    if-lez v3, :cond_a

    :goto_4
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 779
    const v2, 0x7f0900a3

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iget-object v3, v0, Lcom/vkontakte/android/ChatUser;->user:Lcom/vkontakte/android/UserProfile;

    iget v3, v3, Lcom/vkontakte/android/UserProfile;->online:I

    if-ne v3, v9, :cond_b

    const v3, 0x7f02019e

    :goto_5
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 781
    if-nez p2, :cond_c

    const v2, 0x7f0200b1

    :goto_6
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 767
    :cond_6
    const v2, 0x7f0900a4

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v6, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment$ChatMembersAdapter;->this$0:Lcom/vkontakte/android/fragments/ChatMembersFragment;

    iget-object v3, v0, Lcom/vkontakte/android/ChatUser;->inviter:Lcom/vkontakte/android/UserProfile;

    iget-boolean v3, v3, Lcom/vkontakte/android/UserProfile;->f:Z

    if-eqz v3, :cond_7

    const v3, 0x7f0801f1

    :goto_7
    new-array v7, v9, [Ljava/lang/Object;

    iget-object v8, v0, Lcom/vkontakte/android/ChatUser;->inviter:Lcom/vkontakte/android/UserProfile;

    iget-object v8, v8, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    aput-object v8, v7, v4

    invoke-virtual {v6, v3, v7}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_7
    const v3, 0x7f0801f0

    goto :goto_7

    .line 772
    :cond_8
    invoke-virtual {v1, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const v3, 0x7f02027c

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2

    :cond_9
    move v2, v5

    .line 775
    goto :goto_3

    .line 778
    :cond_a
    const/16 v4, 0x8

    goto :goto_4

    .line 779
    :cond_b
    const v3, 0x7f02019f

    goto :goto_5

    .line 781
    :cond_c
    iget-object v2, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment$ChatMembersAdapter;->this$0:Lcom/vkontakte/android/fragments/ChatMembersFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->access$12(Lcom/vkontakte/android/fragments/ChatMembersFragment;)Z

    move-result v2

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment$ChatMembersAdapter;->this$0:Lcom/vkontakte/android/fragments/ChatMembersFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->access$8(Lcom/vkontakte/android/fragments/ChatMembersFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne p2, v2, :cond_d

    const v2, 0x7f0200ad

    goto :goto_6

    :cond_d
    const v2, 0x7f0200af

    goto :goto_6

    .line 785
    .end local v0    # "user":Lcom/vkontakte/android/ChatUser;
    .end local v1    # "v":Landroid/view/View;
    :cond_e
    iget-object v2, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment$ChatMembersAdapter;->this$0:Lcom/vkontakte/android/fragments/ChatMembersFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->access$13(Lcom/vkontakte/android/fragments/ChatMembersFragment;)Lcom/vkontakte/android/ui/OverlayTextView;

    move-result-object v1

    goto/16 :goto_0

    .line 787
    :cond_f
    const/4 v2, 0x3

    if-ne p1, v2, :cond_10

    .line 788
    iget-object v2, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment$ChatMembersAdapter;->this$0:Lcom/vkontakte/android/fragments/ChatMembersFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->access$14(Lcom/vkontakte/android/fragments/ChatMembersFragment;)Lcom/vkontakte/android/ui/OverlayTextView;

    move-result-object v1

    goto/16 :goto_0

    .line 790
    :cond_10
    if-ne p1, v5, :cond_11

    .line 791
    iget-object v2, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment$ChatMembersAdapter;->this$0:Lcom/vkontakte/android/fragments/ChatMembersFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->access$15(Lcom/vkontakte/android/fragments/ChatMembersFragment;)Landroid/widget/TextView;

    move-result-object v1

    goto/16 :goto_0

    .line 793
    :cond_11
    const/4 v1, 0x0

    goto/16 :goto_0
.end method

.method public isEnabled(II)Z
    .locals 1
    .param p1, "section"    # I
    .param p2, "item"    # I

    .prologue
    .line 811
    const/4 v0, 0x1

    return v0
.end method

.method public isSectionHeaderVisible(I)Z
    .locals 2
    .param p1, "section"    # I

    .prologue
    const/4 v0, 0x0

    .line 846
    iget-object v1, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment$ChatMembersAdapter;->this$0:Lcom/vkontakte/android/fragments/ChatMembersFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->access$12(Lcom/vkontakte/android/fragments/ChatMembersFragment;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment$ChatMembersAdapter;->this$0:Lcom/vkontakte/android/fragments/ChatMembersFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->access$16(Lcom/vkontakte/android/fragments/ChatMembersFragment;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 847
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    if-eqz p1, :cond_0

    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method
