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
    .line 759
    iput-object p1, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment$ChatMembersAdapter;->this$0:Lcom/vkontakte/android/fragments/ChatMembersFragment;

    invoke-direct {p0}, Lcom/vkontakte/android/ui/MultiSectionAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkontakte/android/fragments/ChatMembersFragment;Lcom/vkontakte/android/fragments/ChatMembersFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/vkontakte/android/fragments/ChatMembersFragment;
    .param p2, "x1"    # Lcom/vkontakte/android/fragments/ChatMembersFragment$1;

    .prologue
    .line 759
    invoke-direct {p0, p1}, Lcom/vkontakte/android/fragments/ChatMembersFragment$ChatMembersAdapter;-><init>(Lcom/vkontakte/android/fragments/ChatMembersFragment;)V

    return-void
.end method


# virtual methods
.method public getExtraViewTypeCount()I
    .locals 1

    .prologue
    .line 898
    const/16 v0, 0x8

    return v0
.end method

.method public getHeaderLayoutResource()I
    .locals 1

    .prologue
    .line 902
    const v0, 0x7f03003c

    return v0
.end method

.method public getItemCount(I)I
    .locals 4
    .param p1, "section"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 845
    iget-object v2, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment$ChatMembersAdapter;->this$0:Lcom/vkontakte/android/fragments/ChatMembersFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->access$1900(Lcom/vkontakte/android/fragments/ChatMembersFragment;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 846
    if-eqz p1, :cond_0

    const/4 v2, 0x4

    if-ne p1, v2, :cond_1

    :cond_0
    move v0, v1

    .line 860
    :cond_1
    :goto_0
    :pswitch_0
    return v0

    .line 848
    :cond_2
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_1
    move v0, v1

    .line 850
    goto :goto_0

    .line 852
    :pswitch_2
    iget-object v1, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment$ChatMembersAdapter;->this$0:Lcom/vkontakte/android/fragments/ChatMembersFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->access$1300(Lcom/vkontakte/android/fragments/ChatMembersFragment;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    .line 854
    :pswitch_3
    iget-object v2, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment$ChatMembersAdapter;->this$0:Lcom/vkontakte/android/fragments/ChatMembersFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->access$900(Lcom/vkontakte/android/fragments/ChatMembersFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget-object v3, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment$ChatMembersAdapter;->this$0:Lcom/vkontakte/android/fragments/ChatMembersFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->access$1300(Lcom/vkontakte/android/fragments/ChatMembersFragment;)Z

    move-result v3

    if-eqz v3, :cond_3

    :goto_1
    add-int/2addr v0, v2

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1

    .line 856
    :pswitch_4
    iget-object v2, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment$ChatMembersAdapter;->this$0:Lcom/vkontakte/android/fragments/ChatMembersFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->access$1300(Lcom/vkontakte/android/fragments/ChatMembersFragment;)Z

    move-result v2

    if-nez v2, :cond_1

    move v0, v1

    goto :goto_0

    .line 848
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
    .line 865
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

    .line 875
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 894
    :goto_0
    return v0

    .line 878
    :cond_0
    const/4 v4, 0x1

    if-ne p1, v4, :cond_2

    .line 879
    if-nez p2, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 880
    goto :goto_0

    .line 882
    :cond_2
    if-ne p1, v0, :cond_4

    .line 883
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment$ChatMembersAdapter;->this$0:Lcom/vkontakte/android/fragments/ChatMembersFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->access$900(Lcom/vkontakte/android/fragments/ChatMembersFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne p2, v0, :cond_3

    .line 884
    const/4 v0, 0x5

    goto :goto_0

    :cond_3
    move v0, v3

    .line 886
    goto :goto_0

    .line 888
    :cond_4
    if-ne p1, v1, :cond_5

    .line 889
    const/4 v0, 0x6

    goto :goto_0

    .line 891
    :cond_5
    if-ne p1, v2, :cond_6

    .line 892
    const/4 v0, 0x7

    goto :goto_0

    :cond_6
    move v0, v3

    .line 894
    goto :goto_0
.end method

.method public getSectionCount()I
    .locals 1

    .prologue
    .line 840
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment$ChatMembersAdapter;->this$0:Lcom/vkontakte/android/fragments/ChatMembersFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->access$1900(Lcom/vkontakte/android/fragments/ChatMembersFragment;)Z

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
    .line 822
    packed-switch p1, :pswitch_data_0

    .line 830
    const-string v0, ""

    :goto_0
    return-object v0

    .line 824
    :pswitch_0
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment$ChatMembersAdapter;->this$0:Lcom/vkontakte/android/fragments/ChatMembersFragment;

    const v1, 0x7f0d0066

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 826
    :pswitch_1
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment$ChatMembersAdapter;->this$0:Lcom/vkontakte/android/fragments/ChatMembersFragment;

    const v1, 0x7f0d02bc

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 828
    :pswitch_2
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment$ChatMembersAdapter;->this$0:Lcom/vkontakte/android/fragments/ChatMembersFragment;

    const v1, 0x7f0d0060

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 822
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
    const v11, 0x7f080089

    const/4 v5, 0x4

    const v10, 0x7f08008a

    const/4 v4, 0x0

    const/4 v9, 0x1

    .line 763
    if-nez p1, :cond_0

    .line 764
    iget-object v2, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment$ChatMembersAdapter;->this$0:Lcom/vkontakte/android/fragments/ChatMembersFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->access$2000(Lcom/vkontakte/android/fragments/ChatMembersFragment;)Landroid/view/View;

    move-result-object v1

    .line 817
    :goto_0
    return-object v1

    .line 766
    :cond_0
    if-ne p1, v9, :cond_2

    .line 767
    if-nez p2, :cond_1

    .line 768
    iget-object v2, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment$ChatMembersAdapter;->this$0:Lcom/vkontakte/android/fragments/ChatMembersFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->access$2500(Lcom/vkontakte/android/fragments/ChatMembersFragment;)Landroid/widget/FrameLayout;

    move-result-object v1

    goto :goto_0

    .line 770
    :cond_1
    if-ne p2, v9, :cond_2

    .line 771
    iget-object v2, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment$ChatMembersAdapter;->this$0:Lcom/vkontakte/android/fragments/ChatMembersFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->access$2600(Lcom/vkontakte/android/fragments/ChatMembersFragment;)Landroid/widget/FrameLayout;

    move-result-object v1

    goto :goto_0

    .line 774
    :cond_2
    const/4 v2, 0x2

    if-ne p1, v2, :cond_f

    .line 775
    iget-object v2, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment$ChatMembersAdapter;->this$0:Lcom/vkontakte/android/fragments/ChatMembersFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->access$900(Lcom/vkontakte/android/fragments/ChatMembersFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p2, v2, :cond_e

    .line 776
    move-object v1, p3

    .line 777
    .local v1, "v":Landroid/view/View;
    if-nez v1, :cond_3

    .line 778
    iget-object v2, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment$ChatMembersAdapter;->this$0:Lcom/vkontakte/android/fragments/ChatMembersFragment;

    invoke-virtual {v2}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f03001f

    const/4 v6, 0x0

    invoke-static {v2, v3, v6}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 779
    invoke-virtual {v1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/vkontakte/android/fragments/ChatMembersFragment$ChatMembersAdapter$1;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/fragments/ChatMembersFragment$ChatMembersAdapter$1;-><init>(Lcom/vkontakte/android/fragments/ChatMembersFragment$ChatMembersAdapter;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 786
    :cond_3
    iget-object v2, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment$ChatMembersAdapter;->this$0:Lcom/vkontakte/android/fragments/ChatMembersFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->access$900(Lcom/vkontakte/android/fragments/ChatMembersFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/ChatUser;

    .line 787
    .local v0, "user":Lcom/vkontakte/android/ChatUser;
    const v2, 0x7f08008b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, v0, Lcom/vkontakte/android/ChatUser;->user:Lcom/vkontakte/android/UserProfile;

    iget-object v3, v3, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 788
    iget-object v2, v0, Lcom/vkontakte/android/ChatUser;->inviter:Lcom/vkontakte/android/UserProfile;

    iget v2, v2, Lcom/vkontakte/android/UserProfile;->uid:I

    iget-object v3, v0, Lcom/vkontakte/android/ChatUser;->user:Lcom/vkontakte/android/UserProfile;

    iget v3, v3, Lcom/vkontakte/android/UserProfile;->uid:I

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment$ChatMembersAdapter;->this$0:Lcom/vkontakte/android/fragments/ChatMembersFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->access$2800(Lcom/vkontakte/android/fragments/ChatMembersFragment;)I

    move-result v2

    iget-object v3, v0, Lcom/vkontakte/android/ChatUser;->user:Lcom/vkontakte/android/UserProfile;

    iget v3, v3, Lcom/vkontakte/android/UserProfile;->uid:I

    if-ne v2, v3, :cond_6

    .line 789
    :cond_4
    const v2, 0x7f08008d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0d005a

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 793
    :goto_1
    iget-object v2, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment$ChatMembersAdapter;->this$0:Lcom/vkontakte/android/fragments/ChatMembersFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->access$2900(Lcom/vkontakte/android/fragments/ChatMembersFragment;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    move-result-object v2

    iget-object v3, v0, Lcom/vkontakte/android/ChatUser;->user:Lcom/vkontakte/android/UserProfile;

    iget-object v3, v3, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->isAlreadyLoaded(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 794
    invoke-virtual {v1, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment$ChatMembersAdapter;->this$0:Lcom/vkontakte/android/fragments/ChatMembersFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->access$2900(Lcom/vkontakte/android/fragments/ChatMembersFragment;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    move-result-object v3

    iget-object v6, v0, Lcom/vkontakte/android/ChatUser;->user:Lcom/vkontakte/android/UserProfile;

    iget-object v6, v6, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    invoke-virtual {v3, v6}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 799
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

    invoke-static {v2}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->access$2800(Lcom/vkontakte/android/fragments/ChatMembersFragment;)I

    move-result v2

    sget v6, Lcom/vkontakte/android/Global;->uid:I

    if-ne v2, v6, :cond_9

    :cond_5
    iget-object v2, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment$ChatMembersAdapter;->this$0:Lcom/vkontakte/android/fragments/ChatMembersFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->access$1300(Lcom/vkontakte/android/fragments/ChatMembersFragment;)Z

    move-result v2

    if-nez v2, :cond_9

    move v2, v4

    :goto_3
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 800
    invoke-virtual {v1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 802
    const v2, 0x7f08008c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, v0, Lcom/vkontakte/android/ChatUser;->user:Lcom/vkontakte/android/UserProfile;

    iget v3, v3, Lcom/vkontakte/android/UserProfile;->online:I

    if-lez v3, :cond_a

    :goto_4
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 803
    const v2, 0x7f08008c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iget-object v3, v0, Lcom/vkontakte/android/ChatUser;->user:Lcom/vkontakte/android/UserProfile;

    iget v3, v3, Lcom/vkontakte/android/UserProfile;->online:I

    if-ne v3, v9, :cond_b

    const v3, 0x7f02011c

    :goto_5
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 805
    if-nez p2, :cond_c

    const v2, 0x7f020043

    :goto_6
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 791
    :cond_6
    const v2, 0x7f08008d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v6, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment$ChatMembersAdapter;->this$0:Lcom/vkontakte/android/fragments/ChatMembersFragment;

    iget-object v3, v0, Lcom/vkontakte/android/ChatUser;->inviter:Lcom/vkontakte/android/UserProfile;

    iget-boolean v3, v3, Lcom/vkontakte/android/UserProfile;->f:Z

    if-eqz v3, :cond_7

    const v3, 0x7f0d0144

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
    const v3, 0x7f0d0145

    goto :goto_7

    .line 796
    :cond_8
    invoke-virtual {v1, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const v3, 0x7f0201ec

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2

    :cond_9
    move v2, v5

    .line 799
    goto :goto_3

    .line 802
    :cond_a
    const/16 v4, 0x8

    goto :goto_4

    .line 803
    :cond_b
    const v3, 0x7f02011d

    goto :goto_5

    .line 805
    :cond_c
    iget-object v2, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment$ChatMembersAdapter;->this$0:Lcom/vkontakte/android/fragments/ChatMembersFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->access$1300(Lcom/vkontakte/android/fragments/ChatMembersFragment;)Z

    move-result v2

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment$ChatMembersAdapter;->this$0:Lcom/vkontakte/android/fragments/ChatMembersFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->access$900(Lcom/vkontakte/android/fragments/ChatMembersFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne p2, v2, :cond_d

    const v2, 0x7f02003f

    goto :goto_6

    :cond_d
    const v2, 0x7f020041

    goto :goto_6

    .line 809
    .end local v0    # "user":Lcom/vkontakte/android/ChatUser;
    .end local v1    # "v":Landroid/view/View;
    :cond_e
    iget-object v2, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment$ChatMembersAdapter;->this$0:Lcom/vkontakte/android/fragments/ChatMembersFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->access$3000(Lcom/vkontakte/android/fragments/ChatMembersFragment;)Lcom/vkontakte/android/ui/OverlayTextView;

    move-result-object v1

    goto/16 :goto_0

    .line 811
    :cond_f
    const/4 v2, 0x3

    if-ne p1, v2, :cond_10

    .line 812
    iget-object v2, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment$ChatMembersAdapter;->this$0:Lcom/vkontakte/android/fragments/ChatMembersFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->access$3100(Lcom/vkontakte/android/fragments/ChatMembersFragment;)Lcom/vkontakte/android/ui/OverlayTextView;

    move-result-object v1

    goto/16 :goto_0

    .line 814
    :cond_10
    if-ne p1, v5, :cond_11

    .line 815
    iget-object v2, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment$ChatMembersAdapter;->this$0:Lcom/vkontakte/android/fragments/ChatMembersFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->access$3200(Lcom/vkontakte/android/fragments/ChatMembersFragment;)Landroid/widget/TextView;

    move-result-object v1

    goto/16 :goto_0

    .line 817
    :cond_11
    const/4 v1, 0x0

    goto/16 :goto_0
.end method

.method public isEnabled(II)Z
    .locals 1
    .param p1, "section"    # I
    .param p2, "item"    # I

    .prologue
    .line 835
    const/4 v0, 0x1

    return v0
.end method

.method public isSectionHeaderVisible(I)Z
    .locals 2
    .param p1, "section"    # I

    .prologue
    const/4 v0, 0x0

    .line 870
    iget-object v1, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment$ChatMembersAdapter;->this$0:Lcom/vkontakte/android/fragments/ChatMembersFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->access$1300(Lcom/vkontakte/android/fragments/ChatMembersFragment;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment$ChatMembersAdapter;->this$0:Lcom/vkontakte/android/fragments/ChatMembersFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->access$1900(Lcom/vkontakte/android/fragments/ChatMembersFragment;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 871
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
