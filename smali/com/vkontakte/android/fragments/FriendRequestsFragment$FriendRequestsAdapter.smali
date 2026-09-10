.class Lcom/vkontakte/android/fragments/FriendRequestsFragment$FriendRequestsAdapter;
.super Lcom/vkontakte/android/ui/MultiSectionAdapter;
.source "FriendRequestsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/fragments/FriendRequestsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FriendRequestsAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/FriendRequestsFragment;


# direct methods
.method private constructor <init>(Lcom/vkontakte/android/fragments/FriendRequestsFragment;)V
    .locals 0

    .prologue
    .line 493
    iput-object p1, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$FriendRequestsAdapter;->this$0:Lcom/vkontakte/android/fragments/FriendRequestsFragment;

    invoke-direct {p0}, Lcom/vkontakte/android/ui/MultiSectionAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkontakte/android/fragments/FriendRequestsFragment;Lcom/vkontakte/android/fragments/FriendRequestsFragment$FriendRequestsAdapter;)V
    .locals 0

    .prologue
    .line 493
    invoke-direct {p0, p1}, Lcom/vkontakte/android/fragments/FriendRequestsFragment$FriendRequestsAdapter;-><init>(Lcom/vkontakte/android/fragments/FriendRequestsFragment;)V

    return-void
.end method


# virtual methods
.method public getExtraViewTypeCount()I
    .locals 1

    .prologue
    .line 612
    const/4 v0, 0x1

    return v0
.end method

.method public getHeaderLayoutResource()I
    .locals 1

    .prologue
    .line 661
    const v0, 0x7f03004a

    return v0
.end method

.method public getItemCount(I)I
    .locals 2
    .param p1, "section"    # I

    .prologue
    .line 622
    packed-switch p1, :pswitch_data_0

    .line 630
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$FriendRequestsAdapter;->this$0:Lcom/vkontakte/android/fragments/FriendRequestsFragment;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->suggestions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    return v0

    .line 624
    :pswitch_0
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$FriendRequestsAdapter;->this$0:Lcom/vkontakte/android/fragments/FriendRequestsFragment;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->recommends:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$FriendRequestsAdapter;->this$0:Lcom/vkontakte/android/fragments/FriendRequestsFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->access$3(Lcom/vkontakte/android/fragments/FriendRequestsFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_1
    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 626
    :pswitch_1
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$FriendRequestsAdapter;->this$0:Lcom/vkontakte/android/fragments/FriendRequestsFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->access$0(Lcom/vkontakte/android/fragments/FriendRequestsFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0

    .line 628
    :pswitch_2
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$FriendRequestsAdapter;->this$0:Lcom/vkontakte/android/fragments/FriendRequestsFragment;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->suggestions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0

    .line 622
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getItemId(II)J
    .locals 3
    .param p1, "section"    # I
    .param p2, "item"    # I

    .prologue
    .line 635
    if-nez p1, :cond_0

    iget-object v1, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$FriendRequestsAdapter;->this$0:Lcom/vkontakte/android/fragments/FriendRequestsFragment;

    iget-object v1, v1, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->recommends:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne p2, v1, :cond_0

    const-wide/16 v1, -0x1

    .line 645
    :goto_0
    return-wide v1

    .line 637
    :cond_0
    if-nez p1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$FriendRequestsAdapter;->this$0:Lcom/vkontakte/android/fragments/FriendRequestsFragment;

    iget-object v1, v1, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->recommends:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 638
    iget-object v1, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$FriendRequestsAdapter;->this$0:Lcom/vkontakte/android/fragments/FriendRequestsFragment;

    iget-object v1, v1, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->recommends:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/api/FriendRequest;

    iget-object v1, v1, Lcom/vkontakte/android/api/FriendRequest;->profile:Lcom/vkontakte/android/UserProfile;

    iget v1, v1, Lcom/vkontakte/android/UserProfile;->uid:I

    int-to-long v1, v1

    goto :goto_0

    .line 639
    :cond_1
    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    iget-object v1, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$FriendRequestsAdapter;->this$0:Lcom/vkontakte/android/fragments/FriendRequestsFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->access$0(Lcom/vkontakte/android/fragments/FriendRequestsFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 640
    iget-object v1, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$FriendRequestsAdapter;->this$0:Lcom/vkontakte/android/fragments/FriendRequestsFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->access$0(Lcom/vkontakte/android/fragments/FriendRequestsFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/api/FriendRequest;

    iget-object v1, v1, Lcom/vkontakte/android/api/FriendRequest;->profile:Lcom/vkontakte/android/UserProfile;

    iget v1, v1, Lcom/vkontakte/android/UserProfile;->uid:I

    int-to-long v1, v1

    goto :goto_0

    .line 642
    :cond_2
    iget-object v1, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$FriendRequestsAdapter;->this$0:Lcom/vkontakte/android/fragments/FriendRequestsFragment;

    iget-object v1, v1, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->suggestions:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/api/FriendRequest;

    iget-object v1, v1, Lcom/vkontakte/android/api/FriendRequest;->profile:Lcom/vkontakte/android/UserProfile;

    iget v1, v1, Lcom/vkontakte/android/UserProfile;->uid:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    int-to-long v1, v1

    goto :goto_0

    .line 644
    :catch_0
    move-exception v0

    .line 645
    .local v0, "x":Ljava/lang/Exception;
    const-wide/16 v1, 0x0

    goto :goto_0
.end method

.method public getItemViewType(II)I
    .locals 1
    .param p1, "section"    # I
    .param p2, "item"    # I

    .prologue
    .line 607
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$FriendRequestsAdapter;->this$0:Lcom/vkontakte/android/fragments/FriendRequestsFragment;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->recommends:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne p2, v0, :cond_0

    const/4 v0, 0x2

    .line 608
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSectionCount()I
    .locals 1

    .prologue
    .line 617
    const/4 v0, 0x3

    return v0
.end method

.method public getSectionTitle(I)Ljava/lang/String;
    .locals 2
    .param p1, "section"    # I

    .prologue
    .line 600
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$FriendRequestsAdapter;->this$0:Lcom/vkontakte/android/fragments/FriendRequestsFragment;

    invoke-virtual {v0}, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0802b3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 603
    :goto_0
    return-object v0

    .line 601
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$FriendRequestsAdapter;->this$0:Lcom/vkontakte/android/fragments/FriendRequestsFragment;

    invoke-virtual {v0}, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0800eb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 602
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$FriendRequestsAdapter;->this$0:Lcom/vkontakte/android/fragments/FriendRequestsFragment;

    invoke-virtual {v0}, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080128

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 603
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getView(IILandroid/view/View;)Landroid/view/View;
    .locals 8
    .param p1, "section"    # I
    .param p2, "pos"    # I
    .param p3, "view"    # Landroid/view/View;

    .prologue
    .line 498
    if-nez p1, :cond_1

    iget-object v4, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$FriendRequestsAdapter;->this$0:Lcom/vkontakte/android/fragments/FriendRequestsFragment;

    iget-object v4, v4, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->recommends:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne p2, v4, :cond_1

    .line 499
    if-nez p3, :cond_0

    .line 500
    iget-object v4, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$FriendRequestsAdapter;->this$0:Lcom/vkontakte/android/fragments/FriendRequestsFragment;

    invoke-virtual {v4}, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const v5, 0x7f030043

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    :cond_0
    move-object v3, p3

    .line 594
    .end local p3    # "view":Landroid/view/View;
    .local v3, "view":Landroid/view/View;
    :goto_0
    return-object v3

    .line 504
    .end local v3    # "view":Landroid/view/View;
    .restart local p3    # "view":Landroid/view/View;
    :cond_1
    if-nez p3, :cond_2

    .line 505
    iget-object v4, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$FriendRequestsAdapter;->this$0:Lcom/vkontakte/android/fragments/FriendRequestsFragment;

    invoke-virtual {v4}, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const v5, 0x7f030044

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    .line 506
    const v4, 0x7f09009b

    invoke-virtual {p3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const-string v5, "add"

    invoke-virtual {v4, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 507
    const v4, 0x7f09009b

    invoke-virtual {p3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$FriendRequestsAdapter;->this$0:Lcom/vkontakte/android/fragments/FriendRequestsFragment;

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 508
    const v4, 0x7f09009c

    invoke-virtual {p3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const-string v5, "decline"

    invoke-virtual {v4, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 509
    const v4, 0x7f09009c

    invoke-virtual {p3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$FriendRequestsAdapter;->this$0:Lcom/vkontakte/android/fragments/FriendRequestsFragment;

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 510
    const v4, 0x7f09009b

    invoke-virtual {p3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const v5, 0x7f090021

    invoke-virtual {v4, v5, p3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 511
    const v4, 0x7f09009c

    invoke-virtual {p3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const v5, 0x7f090021

    invoke-virtual {v4, v5, p3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 513
    :cond_2
    const/4 v2, 0x0

    .line 514
    .local v2, "req":Lcom/vkontakte/android/api/FriendRequest;
    packed-switch p1, :pswitch_data_0

    .line 526
    :goto_1
    const v4, 0x7f0900c9

    invoke-virtual {p3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iget-object v5, v2, Lcom/vkontakte/android/api/FriendRequest;->profile:Lcom/vkontakte/android/UserProfile;

    iget-object v5, v5, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 528
    iget-object v4, v2, Lcom/vkontakte/android/api/FriendRequest;->info:Ljava/lang/String;

    if-eqz v4, :cond_6

    .line 529
    const v4, 0x7f0900ca

    invoke-virtual {p3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iget-object v5, v2, Lcom/vkontakte/android/api/FriendRequest;->info:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 530
    const v4, 0x7f0900ca

    invoke-virtual {p3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const/16 v5, 0x2328

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setMaxHeight(I)V

    .line 535
    :goto_2
    iget-object v4, v2, Lcom/vkontakte/android/api/FriendRequest;->message:Ljava/lang/String;

    if-eqz v4, :cond_7

    iget-object v4, v2, Lcom/vkontakte/android/api/FriendRequest;->message:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_7

    .line 536
    const v4, 0x7f0900cb

    invoke-virtual {p3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 537
    const v4, 0x7f0900cb

    invoke-virtual {p3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iget-object v5, v2, Lcom/vkontakte/android/api/FriendRequest;->message:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 541
    :goto_3
    iget v4, v2, Lcom/vkontakte/android/api/FriendRequest;->numMutualFriends:I

    if-lez v4, :cond_e

    .line 542
    const v4, 0x7f0900cc

    invoke-virtual {p3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 543
    const v4, 0x7f0900cc

    invoke-virtual {p3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f0d0018

    iget v6, v2, Lcom/vkontakte/android/api/FriendRequest;->numMutualFriends:I

    iget-object v7, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$FriendRequestsAdapter;->this$0:Lcom/vkontakte/android/fragments/FriendRequestsFragment;

    invoke-virtual {v7}, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/vkontakte/android/Global;->langPlural(IILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 544
    const v4, 0x7f0900cd

    invoke-virtual {p3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 545
    const v4, 0x7f0900ce

    invoke-virtual {p3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iget v4, v2, Lcom/vkontakte/android/api/FriendRequest;->numMutualFriends:I

    const/4 v6, 0x1

    if-le v4, v6, :cond_8

    const/4 v4, 0x0

    :goto_4
    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    .line 546
    const v4, 0x7f0900cf

    invoke-virtual {p3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iget v4, v2, Lcom/vkontakte/android/api/FriendRequest;->numMutualFriends:I

    const/4 v6, 0x2

    if-le v4, v6, :cond_9

    const/4 v4, 0x0

    :goto_5
    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    .line 547
    const v4, 0x7f0900d0

    invoke-virtual {p3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iget v4, v2, Lcom/vkontakte/android/api/FriendRequest;->numMutualFriends:I

    const/4 v6, 0x3

    if-le v4, v6, :cond_a

    const/4 v4, 0x0

    :goto_6
    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    .line 548
    const v4, 0x7f0900d1

    invoke-virtual {p3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iget v4, v2, Lcom/vkontakte/android/api/FriendRequest;->numMutualFriends:I

    const/4 v6, 0x4

    if-le v4, v6, :cond_b

    const/4 v4, 0x0

    :goto_7
    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    .line 549
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    iget-object v4, v2, Lcom/vkontakte/android/api/FriendRequest;->mutualFriends:[Lcom/vkontakte/android/UserProfile;

    array-length v4, v4

    if-lt v1, v4, :cond_c

    .line 562
    :cond_3
    const v4, 0x7f0900d2

    invoke-virtual {p3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ViewFlipper;

    .line 563
    .local v0, "flipper":Landroid/widget/ViewFlipper;
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 564
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/widget/ViewFlipper;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 565
    iget v4, v2, Lcom/vkontakte/android/api/FriendRequest;->state:I

    packed-switch v4, :pswitch_data_1

    .line 577
    :goto_9
    iget-object v4, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$FriendRequestsAdapter;->this$0:Lcom/vkontakte/android/fragments/FriendRequestsFragment;

    invoke-virtual {v4}, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const v5, 0x7f040008

    invoke-virtual {v0, v4, v5}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/content/Context;I)V

    .line 578
    iget-object v4, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$FriendRequestsAdapter;->this$0:Lcom/vkontakte/android/fragments/FriendRequestsFragment;

    invoke-virtual {v4}, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const v5, 0x7f040009

    invoke-virtual {v0, v4, v5}, Landroid/widget/ViewFlipper;->setOutAnimation(Landroid/content/Context;I)V

    .line 579
    iget v4, v2, Lcom/vkontakte/android/api/FriendRequest;->state:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_4

    .line 580
    const v4, 0x7f0900d5

    invoke-virtual {v0, v4}, Landroid/widget/ViewFlipper;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const/4 v5, 0x1

    if-ne p1, v5, :cond_f

    const v5, 0x7f0800e9

    :goto_a
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 582
    :cond_4
    iget v4, v2, Lcom/vkontakte/android/api/FriendRequest;->state:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_5

    .line 583
    const v4, 0x7f0900d5

    invoke-virtual {v0, v4}, Landroid/widget/ViewFlipper;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f0800ea

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 586
    :cond_5
    iget-object v4, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$FriendRequestsAdapter;->this$0:Lcom/vkontakte/android/fragments/FriendRequestsFragment;

    invoke-static {v4}, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->access$1(Lcom/vkontakte/android/fragments/FriendRequestsFragment;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    move-result-object v4

    iget-object v5, v2, Lcom/vkontakte/android/api/FriendRequest;->profile:Lcom/vkontakte/android/UserProfile;

    iget-object v5, v5, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->isAlreadyLoaded(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 587
    const v4, 0x7f0900c8

    invoke-virtual {p3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$FriendRequestsAdapter;->this$0:Lcom/vkontakte/android/fragments/FriendRequestsFragment;

    invoke-static {v5}, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->access$1(Lcom/vkontakte/android/fragments/FriendRequestsFragment;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    move-result-object v5

    iget-object v6, v2, Lcom/vkontakte/android/api/FriendRequest;->profile:Lcom/vkontakte/android/UserProfile;

    iget-object v6, v6, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 591
    :goto_b
    iget-object v4, v2, Lcom/vkontakte/android/api/FriendRequest;->profile:Lcom/vkontakte/android/UserProfile;

    iget v4, v4, Lcom/vkontakte/android/UserProfile;->uid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p3, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 592
    const v5, 0x7f090028

    const/4 v4, 0x1

    if-ne p1, v4, :cond_11

    const/4 v4, 0x1

    :goto_c
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p3, v5, v4}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    move-object v3, p3

    .line 594
    .end local p3    # "view":Landroid/view/View;
    .restart local v3    # "view":Landroid/view/View;
    goto/16 :goto_0

    .line 516
    .end local v0    # "flipper":Landroid/widget/ViewFlipper;
    .end local v1    # "i":I
    .end local v3    # "view":Landroid/view/View;
    .restart local p3    # "view":Landroid/view/View;
    :pswitch_0
    iget-object v4, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$FriendRequestsAdapter;->this$0:Lcom/vkontakte/android/fragments/FriendRequestsFragment;

    iget-object v4, v4, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->recommends:Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "req":Lcom/vkontakte/android/api/FriendRequest;
    check-cast v2, Lcom/vkontakte/android/api/FriendRequest;

    .line 517
    .restart local v2    # "req":Lcom/vkontakte/android/api/FriendRequest;
    goto/16 :goto_1

    .line 519
    :pswitch_1
    iget-object v4, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$FriendRequestsAdapter;->this$0:Lcom/vkontakte/android/fragments/FriendRequestsFragment;

    invoke-static {v4}, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->access$0(Lcom/vkontakte/android/fragments/FriendRequestsFragment;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "req":Lcom/vkontakte/android/api/FriendRequest;
    check-cast v2, Lcom/vkontakte/android/api/FriendRequest;

    .line 520
    .restart local v2    # "req":Lcom/vkontakte/android/api/FriendRequest;
    goto/16 :goto_1

    .line 522
    :pswitch_2
    iget-object v4, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$FriendRequestsAdapter;->this$0:Lcom/vkontakte/android/fragments/FriendRequestsFragment;

    iget-object v4, v4, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->suggestions:Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "req":Lcom/vkontakte/android/api/FriendRequest;
    check-cast v2, Lcom/vkontakte/android/api/FriendRequest;

    .restart local v2    # "req":Lcom/vkontakte/android/api/FriendRequest;
    goto/16 :goto_1

    .line 532
    :cond_6
    const v4, 0x7f0900ca

    invoke-virtual {p3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setMaxHeight(I)V

    goto/16 :goto_2

    .line 539
    :cond_7
    const v4, 0x7f0900cb

    invoke-virtual {p3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_3

    .line 545
    :cond_8
    const/16 v4, 0x8

    goto/16 :goto_4

    .line 546
    :cond_9
    const/16 v4, 0x8

    goto/16 :goto_5

    .line 547
    :cond_a
    const/16 v4, 0x8

    goto/16 :goto_6

    .line 548
    :cond_b
    const/16 v4, 0x8

    goto/16 :goto_7

    .line 550
    .restart local v1    # "i":I
    :cond_c
    iget-object v4, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$FriendRequestsAdapter;->this$0:Lcom/vkontakte/android/fragments/FriendRequestsFragment;

    invoke-static {v4}, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->access$1(Lcom/vkontakte/android/fragments/FriendRequestsFragment;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    move-result-object v4

    iget-object v5, v2, Lcom/vkontakte/android/api/FriendRequest;->mutualFriends:[Lcom/vkontakte/android/UserProfile;

    aget-object v5, v5, v1

    iget-object v5, v5, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->isAlreadyLoaded(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 551
    iget-object v4, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$FriendRequestsAdapter;->this$0:Lcom/vkontakte/android/fragments/FriendRequestsFragment;

    invoke-static {v4, v1, p3}, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->access$2(Lcom/vkontakte/android/fragments/FriendRequestsFragment;ILandroid/view/View;)Landroid/widget/ImageView;

    move-result-object v4

    iget-object v5, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$FriendRequestsAdapter;->this$0:Lcom/vkontakte/android/fragments/FriendRequestsFragment;

    invoke-static {v5}, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->access$1(Lcom/vkontakte/android/fragments/FriendRequestsFragment;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    move-result-object v5

    iget-object v6, v2, Lcom/vkontakte/android/api/FriendRequest;->mutualFriends:[Lcom/vkontakte/android/UserProfile;

    aget-object v6, v6, v1

    iget-object v6, v6, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 549
    :goto_d
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_8

    .line 553
    :cond_d
    iget-object v4, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$FriendRequestsAdapter;->this$0:Lcom/vkontakte/android/fragments/FriendRequestsFragment;

    invoke-static {v4, v1, p3}, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->access$2(Lcom/vkontakte/android/fragments/FriendRequestsFragment;ILandroid/view/View;)Landroid/widget/ImageView;

    move-result-object v4

    const v5, 0x7f02027c

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_d

    .line 556
    .end local v1    # "i":I
    :cond_e
    const v4, 0x7f0900cc

    invoke-virtual {p3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 557
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_e
    const/4 v4, 0x5

    if-ge v1, v4, :cond_3

    .line 558
    iget-object v4, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$FriendRequestsAdapter;->this$0:Lcom/vkontakte/android/fragments/FriendRequestsFragment;

    invoke-static {v4, v1, p3}, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->access$2(Lcom/vkontakte/android/fragments/FriendRequestsFragment;ILandroid/view/View;)Landroid/widget/ImageView;

    move-result-object v4

    const v5, 0x7f02027c

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 559
    iget-object v4, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$FriendRequestsAdapter;->this$0:Lcom/vkontakte/android/fragments/FriendRequestsFragment;

    invoke-static {v4, v1, p3}, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->access$2(Lcom/vkontakte/android/fragments/FriendRequestsFragment;ILandroid/view/View;)Landroid/widget/ImageView;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 557
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 567
    .restart local v0    # "flipper":Landroid/widget/ViewFlipper;
    :pswitch_3
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    goto/16 :goto_9

    .line 570
    :pswitch_4
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    goto/16 :goto_9

    .line 574
    :pswitch_5
    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    goto/16 :goto_9

    .line 580
    :cond_f
    const v5, 0x7f08015d

    goto/16 :goto_a

    .line 589
    :cond_10
    const v4, 0x7f0900c8

    invoke-virtual {p3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    const v5, 0x7f02027c

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_b

    .line 592
    :cond_11
    const/4 v4, 0x0

    goto/16 :goto_c

    .line 514
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 565
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method public isSectionHeaderVisible(I)Z
    .locals 3
    .param p1, "section"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 651
    if-nez p1, :cond_2

    iget-object v2, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$FriendRequestsAdapter;->this$0:Lcom/vkontakte/android/fragments/FriendRequestsFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->access$4(Lcom/vkontakte/android/fragments/FriendRequestsFragment;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 652
    iget-object v2, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$FriendRequestsAdapter;->this$0:Lcom/vkontakte/android/fragments/FriendRequestsFragment;

    iget-object v2, v2, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->recommends:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 657
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 652
    goto :goto_0

    .line 653
    :cond_2
    if-ne p1, v0, :cond_4

    .line 654
    iget-object v2, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$FriendRequestsAdapter;->this$0:Lcom/vkontakte/android/fragments/FriendRequestsFragment;

    iget-object v2, v2, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->recommends:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_3

    iget-object v2, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$FriendRequestsAdapter;->this$0:Lcom/vkontakte/android/fragments/FriendRequestsFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->access$0(Lcom/vkontakte/android/fragments/FriendRequestsFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0

    .line 655
    :cond_4
    const/4 v2, 0x2

    if-ne p1, v2, :cond_6

    .line 656
    iget-object v2, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$FriendRequestsAdapter;->this$0:Lcom/vkontakte/android/fragments/FriendRequestsFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->access$0(Lcom/vkontakte/android/fragments/FriendRequestsFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_5

    iget-object v2, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$FriendRequestsAdapter;->this$0:Lcom/vkontakte/android/fragments/FriendRequestsFragment;

    iget-object v2, v2, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->suggestions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_0

    :cond_5
    move v0, v1

    goto :goto_0

    :cond_6
    move v0, v1

    .line 657
    goto :goto_0
.end method
