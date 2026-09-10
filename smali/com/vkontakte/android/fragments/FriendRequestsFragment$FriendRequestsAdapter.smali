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
    .line 466
    iput-object p1, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$FriendRequestsAdapter;->this$0:Lcom/vkontakte/android/fragments/FriendRequestsFragment;

    invoke-direct {p0}, Lcom/vkontakte/android/ui/MultiSectionAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkontakte/android/fragments/FriendRequestsFragment;Lcom/vkontakte/android/fragments/FriendRequestsFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/vkontakte/android/fragments/FriendRequestsFragment;
    .param p2, "x1"    # Lcom/vkontakte/android/fragments/FriendRequestsFragment$1;

    .prologue
    .line 466
    invoke-direct {p0, p1}, Lcom/vkontakte/android/fragments/FriendRequestsFragment$FriendRequestsAdapter;-><init>(Lcom/vkontakte/android/fragments/FriendRequestsFragment;)V

    return-void
.end method


# virtual methods
.method public getExtraViewTypeCount()I
    .locals 1

    .prologue
    .line 585
    const/4 v0, 0x1

    return v0
.end method

.method public getHeaderLayoutResource()I
    .locals 1

    .prologue
    .line 634
    const v0, 0x7f03003c

    return v0
.end method

.method public getItemCount(I)I
    .locals 2
    .param p1, "section"    # I

    .prologue
    .line 595
    packed-switch p1, :pswitch_data_0

    .line 603
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$FriendRequestsAdapter;->this$0:Lcom/vkontakte/android/fragments/FriendRequestsFragment;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->suggestions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    return v0

    .line 597
    :pswitch_0
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$FriendRequestsAdapter;->this$0:Lcom/vkontakte/android/fragments/FriendRequestsFragment;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->recommends:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$FriendRequestsAdapter;->this$0:Lcom/vkontakte/android/fragments/FriendRequestsFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->access$600(Lcom/vkontakte/android/fragments/FriendRequestsFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_1
    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 599
    :pswitch_1
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$FriendRequestsAdapter;->this$0:Lcom/vkontakte/android/fragments/FriendRequestsFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->access$400(Lcom/vkontakte/android/fragments/FriendRequestsFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0

    .line 601
    :pswitch_2
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$FriendRequestsAdapter;->this$0:Lcom/vkontakte/android/fragments/FriendRequestsFragment;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->suggestions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0

    .line 595
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
    .line 608
    if-nez p1, :cond_0

    iget-object v1, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$FriendRequestsAdapter;->this$0:Lcom/vkontakte/android/fragments/FriendRequestsFragment;

    iget-object v1, v1, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->recommends:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne p2, v1, :cond_0

    const-wide/16 v1, -0x1

    .line 618
    :goto_0
    return-wide v1

    .line 610
    :cond_0
    if-nez p1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$FriendRequestsAdapter;->this$0:Lcom/vkontakte/android/fragments/FriendRequestsFragment;

    iget-object v1, v1, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->recommends:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 611
    iget-object v1, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$FriendRequestsAdapter;->this$0:Lcom/vkontakte/android/fragments/FriendRequestsFragment;

    iget-object v1, v1, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->recommends:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/api/FriendRequest;

    iget-object v1, v1, Lcom/vkontakte/android/api/FriendRequest;->profile:Lcom/vkontakte/android/UserProfile;

    iget v1, v1, Lcom/vkontakte/android/UserProfile;->uid:I

    int-to-long v1, v1

    goto :goto_0

    .line 612
    :cond_1
    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    iget-object v1, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$FriendRequestsAdapter;->this$0:Lcom/vkontakte/android/fragments/FriendRequestsFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->access$400(Lcom/vkontakte/android/fragments/FriendRequestsFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 613
    iget-object v1, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$FriendRequestsAdapter;->this$0:Lcom/vkontakte/android/fragments/FriendRequestsFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->access$400(Lcom/vkontakte/android/fragments/FriendRequestsFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/api/FriendRequest;

    iget-object v1, v1, Lcom/vkontakte/android/api/FriendRequest;->profile:Lcom/vkontakte/android/UserProfile;

    iget v1, v1, Lcom/vkontakte/android/UserProfile;->uid:I

    int-to-long v1, v1

    goto :goto_0

    .line 615
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

    .line 617
    :catch_0
    move-exception v0

    .line 618
    .local v0, "x":Ljava/lang/Exception;
    const-wide/16 v1, 0x0

    goto :goto_0
.end method

.method public getItemViewType(II)I
    .locals 1
    .param p1, "section"    # I
    .param p2, "item"    # I

    .prologue
    .line 580
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$FriendRequestsAdapter;->this$0:Lcom/vkontakte/android/fragments/FriendRequestsFragment;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->recommends:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne p2, v0, :cond_0

    const/4 v0, 0x2

    .line 581
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSectionCount()I
    .locals 1

    .prologue
    .line 590
    const/4 v0, 0x3

    return v0
.end method

.method public getSectionTitle(I)Ljava/lang/String;
    .locals 2
    .param p1, "section"    # I

    .prologue
    .line 573
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$FriendRequestsAdapter;->this$0:Lcom/vkontakte/android/fragments/FriendRequestsFragment;

    invoke-virtual {v0}, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0104

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 576
    :goto_0
    return-object v0

    .line 574
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$FriendRequestsAdapter;->this$0:Lcom/vkontakte/android/fragments/FriendRequestsFragment;

    invoke-virtual {v0}, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d00f4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 575
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$FriendRequestsAdapter;->this$0:Lcom/vkontakte/android/fragments/FriendRequestsFragment;

    invoke-virtual {v0}, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d030e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 576
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
    .line 471
    if-nez p1, :cond_1

    iget-object v4, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$FriendRequestsAdapter;->this$0:Lcom/vkontakte/android/fragments/FriendRequestsFragment;

    iget-object v4, v4, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->recommends:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne p2, v4, :cond_1

    .line 472
    if-nez p3, :cond_0

    .line 473
    iget-object v4, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$FriendRequestsAdapter;->this$0:Lcom/vkontakte/android/fragments/FriendRequestsFragment;

    invoke-virtual {v4}, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f030034

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    :cond_0
    move-object v3, p3

    .line 567
    .end local p3    # "view":Landroid/view/View;
    .local v3, "view":Landroid/view/View;
    :goto_0
    return-object v3

    .line 477
    .end local v3    # "view":Landroid/view/View;
    .restart local p3    # "view":Landroid/view/View;
    :cond_1
    if-nez p3, :cond_2

    .line 478
    iget-object v4, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$FriendRequestsAdapter;->this$0:Lcom/vkontakte/android/fragments/FriendRequestsFragment;

    invoke-virtual {v4}, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f030035

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    .line 479
    const v4, 0x7f080034

    invoke-virtual {p3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const-string v5, "add"

    invoke-virtual {v4, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 480
    const v4, 0x7f080034

    invoke-virtual {p3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$FriendRequestsAdapter;->this$0:Lcom/vkontakte/android/fragments/FriendRequestsFragment;

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 481
    const v4, 0x7f080035

    invoke-virtual {p3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const-string v5, "decline"

    invoke-virtual {v4, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 482
    const v4, 0x7f080035

    invoke-virtual {p3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$FriendRequestsAdapter;->this$0:Lcom/vkontakte/android/fragments/FriendRequestsFragment;

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 483
    const v4, 0x7f080034

    invoke-virtual {p3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const v5, 0x7f080016

    invoke-virtual {v4, v5, p3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 484
    const v4, 0x7f080035

    invoke-virtual {p3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const v5, 0x7f080016

    invoke-virtual {v4, v5, p3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 486
    :cond_2
    const/4 v2, 0x0

    .line 487
    .local v2, "req":Lcom/vkontakte/android/api/FriendRequest;
    packed-switch p1, :pswitch_data_0

    .line 499
    :goto_1
    const v4, 0x7f08002f

    invoke-virtual {p3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iget-object v5, v2, Lcom/vkontakte/android/api/FriendRequest;->profile:Lcom/vkontakte/android/UserProfile;

    iget-object v5, v5, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 501
    iget-object v4, v2, Lcom/vkontakte/android/api/FriendRequest;->info:Ljava/lang/String;

    if-eqz v4, :cond_3

    .line 502
    const v4, 0x7f080031

    invoke-virtual {p3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iget-object v5, v2, Lcom/vkontakte/android/api/FriendRequest;->info:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 503
    const v4, 0x7f080031

    invoke-virtual {p3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const/16 v5, 0x2328

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setMaxHeight(I)V

    .line 508
    :goto_2
    iget-object v4, v2, Lcom/vkontakte/android/api/FriendRequest;->message:Ljava/lang/String;

    if-eqz v4, :cond_4

    iget-object v4, v2, Lcom/vkontakte/android/api/FriendRequest;->message:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_4

    .line 509
    const v4, 0x7f0800b2

    invoke-virtual {p3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 510
    const v4, 0x7f0800b2

    invoke-virtual {p3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iget-object v5, v2, Lcom/vkontakte/android/api/FriendRequest;->message:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 514
    :goto_3
    iget v4, v2, Lcom/vkontakte/android/api/FriendRequest;->numMutualFriends:I

    if-lez v4, :cond_a

    .line 515
    const v4, 0x7f0800b3

    invoke-virtual {p3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 516
    const v4, 0x7f0800b3

    invoke-virtual {p3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f070037

    iget v6, v2, Lcom/vkontakte/android/api/FriendRequest;->numMutualFriends:I

    iget-object v7, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$FriendRequestsAdapter;->this$0:Lcom/vkontakte/android/fragments/FriendRequestsFragment;

    invoke-virtual {v7}, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/vkontakte/android/Global;->langPlural(IILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 517
    const v4, 0x7f0800b4

    invoke-virtual {p3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 518
    const v4, 0x7f0800b5

    invoke-virtual {p3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iget v4, v2, Lcom/vkontakte/android/api/FriendRequest;->numMutualFriends:I

    const/4 v6, 0x1

    if-le v4, v6, :cond_5

    const/4 v4, 0x0

    :goto_4
    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    .line 519
    const v4, 0x7f0800b6

    invoke-virtual {p3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iget v4, v2, Lcom/vkontakte/android/api/FriendRequest;->numMutualFriends:I

    const/4 v6, 0x2

    if-le v4, v6, :cond_6

    const/4 v4, 0x0

    :goto_5
    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    .line 520
    const v4, 0x7f0800b7

    invoke-virtual {p3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iget v4, v2, Lcom/vkontakte/android/api/FriendRequest;->numMutualFriends:I

    const/4 v6, 0x3

    if-le v4, v6, :cond_7

    const/4 v4, 0x0

    :goto_6
    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    .line 521
    const v4, 0x7f0800b8

    invoke-virtual {p3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iget v4, v2, Lcom/vkontakte/android/api/FriendRequest;->numMutualFriends:I

    const/4 v6, 0x4

    if-le v4, v6, :cond_8

    const/4 v4, 0x0

    :goto_7
    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    .line 522
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    iget-object v4, v2, Lcom/vkontakte/android/api/FriendRequest;->mutualFriends:[Lcom/vkontakte/android/UserProfile;

    array-length v4, v4

    if-ge v1, v4, :cond_b

    .line 523
    iget-object v4, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$FriendRequestsAdapter;->this$0:Lcom/vkontakte/android/fragments/FriendRequestsFragment;

    invoke-static {v4}, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->access$1700(Lcom/vkontakte/android/fragments/FriendRequestsFragment;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    move-result-object v4

    iget-object v5, v2, Lcom/vkontakte/android/api/FriendRequest;->mutualFriends:[Lcom/vkontakte/android/UserProfile;

    aget-object v5, v5, v1

    iget-object v5, v5, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->isAlreadyLoaded(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 524
    iget-object v4, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$FriendRequestsAdapter;->this$0:Lcom/vkontakte/android/fragments/FriendRequestsFragment;

    invoke-static {v4, v1, p3}, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->access$2000(Lcom/vkontakte/android/fragments/FriendRequestsFragment;ILandroid/view/View;)Landroid/widget/ImageView;

    move-result-object v4

    iget-object v5, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$FriendRequestsAdapter;->this$0:Lcom/vkontakte/android/fragments/FriendRequestsFragment;

    invoke-static {v5}, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->access$1700(Lcom/vkontakte/android/fragments/FriendRequestsFragment;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    move-result-object v5

    iget-object v6, v2, Lcom/vkontakte/android/api/FriendRequest;->mutualFriends:[Lcom/vkontakte/android/UserProfile;

    aget-object v6, v6, v1

    iget-object v6, v6, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 522
    :goto_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 489
    .end local v1    # "i":I
    :pswitch_0
    iget-object v4, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$FriendRequestsAdapter;->this$0:Lcom/vkontakte/android/fragments/FriendRequestsFragment;

    iget-object v4, v4, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->recommends:Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "req":Lcom/vkontakte/android/api/FriendRequest;
    check-cast v2, Lcom/vkontakte/android/api/FriendRequest;

    .line 490
    .restart local v2    # "req":Lcom/vkontakte/android/api/FriendRequest;
    goto/16 :goto_1

    .line 492
    :pswitch_1
    iget-object v4, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$FriendRequestsAdapter;->this$0:Lcom/vkontakte/android/fragments/FriendRequestsFragment;

    invoke-static {v4}, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->access$400(Lcom/vkontakte/android/fragments/FriendRequestsFragment;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "req":Lcom/vkontakte/android/api/FriendRequest;
    check-cast v2, Lcom/vkontakte/android/api/FriendRequest;

    .line 493
    .restart local v2    # "req":Lcom/vkontakte/android/api/FriendRequest;
    goto/16 :goto_1

    .line 495
    :pswitch_2
    iget-object v4, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$FriendRequestsAdapter;->this$0:Lcom/vkontakte/android/fragments/FriendRequestsFragment;

    iget-object v4, v4, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->suggestions:Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "req":Lcom/vkontakte/android/api/FriendRequest;
    check-cast v2, Lcom/vkontakte/android/api/FriendRequest;

    .restart local v2    # "req":Lcom/vkontakte/android/api/FriendRequest;
    goto/16 :goto_1

    .line 505
    :cond_3
    const v4, 0x7f080031

    invoke-virtual {p3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setMaxHeight(I)V

    goto/16 :goto_2

    .line 512
    :cond_4
    const v4, 0x7f0800b2

    invoke-virtual {p3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_3

    .line 518
    :cond_5
    const/16 v4, 0x8

    goto/16 :goto_4

    .line 519
    :cond_6
    const/16 v4, 0x8

    goto/16 :goto_5

    .line 520
    :cond_7
    const/16 v4, 0x8

    goto/16 :goto_6

    .line 521
    :cond_8
    const/16 v4, 0x8

    goto/16 :goto_7

    .line 526
    .restart local v1    # "i":I
    :cond_9
    iget-object v4, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$FriendRequestsAdapter;->this$0:Lcom/vkontakte/android/fragments/FriendRequestsFragment;

    invoke-static {v4, v1, p3}, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->access$2000(Lcom/vkontakte/android/fragments/FriendRequestsFragment;ILandroid/view/View;)Landroid/widget/ImageView;

    move-result-object v4

    const v5, 0x7f0201ec

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_9

    .line 529
    .end local v1    # "i":I
    :cond_a
    const v4, 0x7f0800b3

    invoke-virtual {p3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 530
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_a
    const/4 v4, 0x5

    if-ge v1, v4, :cond_b

    .line 531
    iget-object v4, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$FriendRequestsAdapter;->this$0:Lcom/vkontakte/android/fragments/FriendRequestsFragment;

    invoke-static {v4, v1, p3}, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->access$2000(Lcom/vkontakte/android/fragments/FriendRequestsFragment;ILandroid/view/View;)Landroid/widget/ImageView;

    move-result-object v4

    const v5, 0x7f0201ec

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 532
    iget-object v4, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$FriendRequestsAdapter;->this$0:Lcom/vkontakte/android/fragments/FriendRequestsFragment;

    invoke-static {v4, v1, p3}, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->access$2000(Lcom/vkontakte/android/fragments/FriendRequestsFragment;ILandroid/view/View;)Landroid/widget/ImageView;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 530
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 535
    :cond_b
    const v4, 0x7f080032

    invoke-virtual {p3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ViewFlipper;

    .line 536
    .local v0, "flipper":Landroid/widget/ViewFlipper;
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 537
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/widget/ViewFlipper;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 538
    iget v4, v2, Lcom/vkontakte/android/api/FriendRequest;->state:I

    packed-switch v4, :pswitch_data_1

    .line 550
    :goto_b
    iget-object v4, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$FriendRequestsAdapter;->this$0:Lcom/vkontakte/android/fragments/FriendRequestsFragment;

    invoke-virtual {v4}, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f040008

    invoke-virtual {v0, v4, v5}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/content/Context;I)V

    .line 551
    iget-object v4, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$FriendRequestsAdapter;->this$0:Lcom/vkontakte/android/fragments/FriendRequestsFragment;

    invoke-virtual {v4}, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f040009

    invoke-virtual {v0, v4, v5}, Landroid/widget/ViewFlipper;->setOutAnimation(Landroid/content/Context;I)V

    .line 552
    iget v4, v2, Lcom/vkontakte/android/api/FriendRequest;->state:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_c

    .line 553
    const v4, 0x7f0800bb

    invoke-virtual {v0, v4}, Landroid/widget/ViewFlipper;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const/4 v5, 0x1

    if-ne p1, v5, :cond_e

    const v5, 0x7f0d00ef

    :goto_c
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 555
    :cond_c
    iget v4, v2, Lcom/vkontakte/android/api/FriendRequest;->state:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_d

    .line 556
    const v4, 0x7f0800bb

    invoke-virtual {v0, v4}, Landroid/widget/ViewFlipper;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f0d00f0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 559
    :cond_d
    iget-object v4, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$FriendRequestsAdapter;->this$0:Lcom/vkontakte/android/fragments/FriendRequestsFragment;

    invoke-static {v4}, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->access$1700(Lcom/vkontakte/android/fragments/FriendRequestsFragment;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    move-result-object v4

    iget-object v5, v2, Lcom/vkontakte/android/api/FriendRequest;->profile:Lcom/vkontakte/android/UserProfile;

    iget-object v5, v5, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->isAlreadyLoaded(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 560
    const v4, 0x7f08002e

    invoke-virtual {p3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$FriendRequestsAdapter;->this$0:Lcom/vkontakte/android/fragments/FriendRequestsFragment;

    invoke-static {v5}, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->access$1700(Lcom/vkontakte/android/fragments/FriendRequestsFragment;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    move-result-object v5

    iget-object v6, v2, Lcom/vkontakte/android/api/FriendRequest;->profile:Lcom/vkontakte/android/UserProfile;

    iget-object v6, v6, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 564
    :goto_d
    iget-object v4, v2, Lcom/vkontakte/android/api/FriendRequest;->profile:Lcom/vkontakte/android/UserProfile;

    iget v4, v4, Lcom/vkontakte/android/UserProfile;->uid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p3, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 565
    const v5, 0x7f080015

    const/4 v4, 0x1

    if-ne p1, v4, :cond_10

    const/4 v4, 0x1

    :goto_e
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p3, v5, v4}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    move-object v3, p3

    .line 567
    .end local p3    # "view":Landroid/view/View;
    .restart local v3    # "view":Landroid/view/View;
    goto/16 :goto_0

    .line 540
    .end local v3    # "view":Landroid/view/View;
    .restart local p3    # "view":Landroid/view/View;
    :pswitch_3
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    goto/16 :goto_b

    .line 543
    :pswitch_4
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    goto/16 :goto_b

    .line 547
    :pswitch_5
    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    goto/16 :goto_b

    .line 553
    :cond_e
    const v5, 0x7f0d00f1

    goto :goto_c

    .line 562
    :cond_f
    const v4, 0x7f08002e

    invoke-virtual {p3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    const v5, 0x7f0201ec

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_d

    .line 565
    :cond_10
    const/4 v4, 0x0

    goto :goto_e

    .line 487
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 538
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

    .line 624
    if-nez p1, :cond_2

    iget-object v2, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$FriendRequestsAdapter;->this$0:Lcom/vkontakte/android/fragments/FriendRequestsFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->access$700(Lcom/vkontakte/android/fragments/FriendRequestsFragment;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 625
    iget-object v2, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$FriendRequestsAdapter;->this$0:Lcom/vkontakte/android/fragments/FriendRequestsFragment;

    iget-object v2, v2, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->recommends:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 630
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 625
    goto :goto_0

    .line 626
    :cond_2
    if-ne p1, v0, :cond_4

    .line 627
    iget-object v2, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$FriendRequestsAdapter;->this$0:Lcom/vkontakte/android/fragments/FriendRequestsFragment;

    iget-object v2, v2, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->recommends:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_3

    iget-object v2, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$FriendRequestsAdapter;->this$0:Lcom/vkontakte/android/fragments/FriendRequestsFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->access$400(Lcom/vkontakte/android/fragments/FriendRequestsFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0

    .line 628
    :cond_4
    const/4 v2, 0x2

    if-ne p1, v2, :cond_6

    .line 629
    iget-object v2, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$FriendRequestsAdapter;->this$0:Lcom/vkontakte/android/fragments/FriendRequestsFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->access$400(Lcom/vkontakte/android/fragments/FriendRequestsFragment;)Ljava/util/ArrayList;

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

    .line 630
    goto :goto_0
.end method
