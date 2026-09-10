.class Lcom/vkontakte/android/FriendRequestsView$FriendRequestsAdapter;
.super Lcom/vkontakte/android/ui/MultiSectionAdapter;
.source "FriendRequestsView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/FriendRequestsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FriendRequestsAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/FriendRequestsView;


# direct methods
.method private constructor <init>(Lcom/vkontakte/android/FriendRequestsView;)V
    .locals 0

    .prologue
    .line 460
    iput-object p1, p0, Lcom/vkontakte/android/FriendRequestsView$FriendRequestsAdapter;->this$0:Lcom/vkontakte/android/FriendRequestsView;

    invoke-direct {p0}, Lcom/vkontakte/android/ui/MultiSectionAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkontakte/android/FriendRequestsView;Lcom/vkontakte/android/FriendRequestsView$FriendRequestsAdapter;)V
    .locals 0

    .prologue
    .line 460
    invoke-direct {p0, p1}, Lcom/vkontakte/android/FriendRequestsView$FriendRequestsAdapter;-><init>(Lcom/vkontakte/android/FriendRequestsView;)V

    return-void
.end method


# virtual methods
.method public getItemCount(I)I
    .locals 1
    .param p1, "section"    # I

    .prologue
    .line 621
    iget-object v0, p0, Lcom/vkontakte/android/FriendRequestsView$FriendRequestsAdapter;->this$0:Lcom/vkontakte/android/FriendRequestsView;

    iget-object v0, v0, Lcom/vkontakte/android/FriendRequestsView;->reqs:[Lcom/vkontakte/android/api/FriendRequest;

    array-length v0, v0

    if-lez v0, :cond_0

    .line 622
    packed-switch p1, :pswitch_data_0

    .line 628
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/FriendRequestsView$FriendRequestsAdapter;->this$0:Lcom/vkontakte/android/FriendRequestsView;

    iget-object v0, v0, Lcom/vkontakte/android/FriendRequestsView;->suggestions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    return v0

    .line 624
    :pswitch_0
    iget-object v0, p0, Lcom/vkontakte/android/FriendRequestsView$FriendRequestsAdapter;->this$0:Lcom/vkontakte/android/FriendRequestsView;

    iget-object v0, v0, Lcom/vkontakte/android/FriendRequestsView;->reqs:[Lcom/vkontakte/android/api/FriendRequest;

    array-length v0, v0

    goto :goto_0

    .line 626
    :pswitch_1
    iget-object v0, p0, Lcom/vkontakte/android/FriendRequestsView$FriendRequestsAdapter;->this$0:Lcom/vkontakte/android/FriendRequestsView;

    iget-object v0, v0, Lcom/vkontakte/android/FriendRequestsView;->suggestions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0

    .line 622
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getItemId(II)J
    .locals 2
    .param p1, "section"    # I
    .param p2, "item"    # I

    .prologue
    .line 633
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/FriendRequestsView$FriendRequestsAdapter;->this$0:Lcom/vkontakte/android/FriendRequestsView;

    iget-object v0, v0, Lcom/vkontakte/android/FriendRequestsView;->reqs:[Lcom/vkontakte/android/api/FriendRequest;

    array-length v0, v0

    if-lez v0, :cond_0

    .line 634
    iget-object v0, p0, Lcom/vkontakte/android/FriendRequestsView$FriendRequestsAdapter;->this$0:Lcom/vkontakte/android/FriendRequestsView;

    iget-object v0, v0, Lcom/vkontakte/android/FriendRequestsView;->reqs:[Lcom/vkontakte/android/api/FriendRequest;

    aget-object v0, v0, p2

    iget-object v0, v0, Lcom/vkontakte/android/api/FriendRequest;->profile:Lcom/vkontakte/android/UserProfile;

    iget v0, v0, Lcom/vkontakte/android/UserProfile;->uid:I

    int-to-long v0, v0

    .line 636
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/FriendRequestsView$FriendRequestsAdapter;->this$0:Lcom/vkontakte/android/FriendRequestsView;

    iget-object v0, v0, Lcom/vkontakte/android/FriendRequestsView;->suggestions:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/api/FriendRequest;

    iget-object v0, v0, Lcom/vkontakte/android/api/FriendRequest;->profile:Lcom/vkontakte/android/UserProfile;

    iget v0, v0, Lcom/vkontakte/android/UserProfile;->uid:I

    int-to-long v0, v0

    goto :goto_0
.end method

.method public getSectionCount()I
    .locals 2

    .prologue
    .line 615
    iget-object v0, p0, Lcom/vkontakte/android/FriendRequestsView$FriendRequestsAdapter;->this$0:Lcom/vkontakte/android/FriendRequestsView;

    iget-object v0, v0, Lcom/vkontakte/android/FriendRequestsView;->reqs:[Lcom/vkontakte/android/api/FriendRequest;

    array-length v0, v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/FriendRequestsView$FriendRequestsAdapter;->this$0:Lcom/vkontakte/android/FriendRequestsView;

    iget-object v0, v0, Lcom/vkontakte/android/FriendRequestsView;->reqs:[Lcom/vkontakte/android/api/FriendRequest;

    array-length v0, v0

    const/16 v1, 0xa

    if-le v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 616
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public getSectionTitle(I)Ljava/lang/String;
    .locals 2
    .param p1, "section"    # I

    .prologue
    .line 609
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/FriendRequestsView$FriendRequestsAdapter;->this$0:Lcom/vkontakte/android/FriendRequestsView;

    invoke-virtual {v0}, Lcom/vkontakte/android/FriendRequestsView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09015b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 610
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getView(IILandroid/view/View;)Landroid/view/View;
    .locals 9
    .param p1, "section"    # I
    .param p2, "pos"    # I
    .param p3, "view"    # Landroid/view/View;

    .prologue
    .line 464
    if-nez p1, :cond_17

    iget-object v5, p0, Lcom/vkontakte/android/FriendRequestsView$FriendRequestsAdapter;->this$0:Lcom/vkontakte/android/FriendRequestsView;

    iget-object v5, v5, Lcom/vkontakte/android/FriendRequestsView;->reqs:[Lcom/vkontakte/android/api/FriendRequest;

    array-length v5, v5

    if-lez v5, :cond_17

    .line 465
    if-nez p3, :cond_8

    .line 466
    iget-object v5, p0, Lcom/vkontakte/android/FriendRequestsView$FriendRequestsAdapter;->this$0:Lcom/vkontakte/android/FriendRequestsView;

    invoke-virtual {v5}, Lcom/vkontakte/android/FriendRequestsView;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f03001a

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    .line 467
    const v5, 0x7f060079

    invoke-virtual {p3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ProgressBar;

    iget-object v6, p0, Lcom/vkontakte/android/FriendRequestsView$FriendRequestsAdapter;->this$0:Lcom/vkontakte/android/FriendRequestsView;

    invoke-virtual {v6}, Lcom/vkontakte/android/FriendRequestsView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f020206

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 469
    const v5, 0x7f060071

    invoke-virtual {p3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iget-object v6, p0, Lcom/vkontakte/android/FriendRequestsView$FriendRequestsAdapter;->this$0:Lcom/vkontakte/android/FriendRequestsView;

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 470
    new-instance v5, Lcom/vkontakte/android/ui/HighlightDrawable;

    invoke-direct {v5}, Lcom/vkontakte/android/ui/HighlightDrawable;-><init>()V

    invoke-virtual {p3, v5}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 471
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/high16 v8, 0x40e00000    # 7.0f

    invoke-static {v8}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v8

    invoke-virtual {p3, v5, v6, v7, v8}, Landroid/view/View;->setPadding(IIII)V

    .line 474
    invoke-static {p3}, Lcom/vkontakte/android/Global;->setFontOnAll(Landroid/view/View;)V

    .line 475
    iget-object v5, p0, Lcom/vkontakte/android/FriendRequestsView$FriendRequestsAdapter;->this$0:Lcom/vkontakte/android/FriendRequestsView;

    invoke-static {v5}, Lcom/vkontakte/android/FriendRequestsView;->access$0(Lcom/vkontakte/android/FriendRequestsView;)Ljava/util/Vector;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_0
    move-object v5, p3

    .line 479
    check-cast v5, Lcom/vkontakte/android/ui/FixedRelativeLayout;

    invoke-virtual {v5}, Lcom/vkontakte/android/ui/FixedRelativeLayout;->allowResize()V

    .line 480
    iget-object v5, p0, Lcom/vkontakte/android/FriendRequestsView$FriendRequestsAdapter;->this$0:Lcom/vkontakte/android/FriendRequestsView;

    iget-object v5, v5, Lcom/vkontakte/android/FriendRequestsView;->reqs:[Lcom/vkontakte/android/api/FriendRequest;

    aget-object v1, v5, p2

    .line 481
    .local v1, "req":Lcom/vkontakte/android/api/FriendRequest;
    iget-object v5, p0, Lcom/vkontakte/android/FriendRequestsView$FriendRequestsAdapter;->this$0:Lcom/vkontakte/android/FriendRequestsView;

    invoke-static {v5}, Lcom/vkontakte/android/FriendRequestsView;->access$1(Lcom/vkontakte/android/FriendRequestsView;)Ljava/util/Vector;

    move-result-object v5

    iget-object v6, v1, Lcom/vkontakte/android/api/FriendRequest;->profile:Lcom/vkontakte/android/UserProfile;

    iget v6, v6, Lcom/vkontakte/android/UserProfile;->uid:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 483
    const v5, 0x7f06006f

    invoke-virtual {p3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iget-object v6, v1, Lcom/vkontakte/android/api/FriendRequest;->profile:Lcom/vkontakte/android/UserProfile;

    iget-object v6, v6, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 485
    const v5, 0x7f060072

    invoke-virtual {p3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iget-object v5, v1, Lcom/vkontakte/android/api/FriendRequest;->info:Ljava/lang/String;

    if-eqz v5, :cond_9

    const/4 v5, 0x0

    :goto_1
    invoke-virtual {v6, v5}, Landroid/view/View;->setVisibility(I)V

    .line 486
    iget-object v5, v1, Lcom/vkontakte/android/api/FriendRequest;->info:Ljava/lang/String;

    if-eqz v5, :cond_1

    .line 487
    const v5, 0x7f060072

    invoke-virtual {p3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iget-object v6, v1, Lcom/vkontakte/android/api/FriendRequest;->info:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 490
    :cond_1
    iget-object v5, v1, Lcom/vkontakte/android/api/FriendRequest;->message:Ljava/lang/String;

    if-eqz v5, :cond_a

    iget-object v5, v1, Lcom/vkontakte/android/api/FriendRequest;->message:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_a

    .line 491
    const v5, 0x7f060070

    invoke-virtual {p3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 492
    const v5, 0x7f060070

    invoke-virtual {p3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iget-object v6, v1, Lcom/vkontakte/android/api/FriendRequest;->message:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 496
    :goto_2
    iget v5, v1, Lcom/vkontakte/android/api/FriendRequest;->numMutualFriends:I

    if-lez v5, :cond_11

    .line 497
    const v5, 0x7f060073

    invoke-virtual {p3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 498
    const v5, 0x7f060073

    invoke-virtual {p3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v6, 0x7f0a0018

    iget v7, v1, Lcom/vkontakte/android/api/FriendRequest;->numMutualFriends:I

    iget-object v8, p0, Lcom/vkontakte/android/FriendRequestsView$FriendRequestsAdapter;->this$0:Lcom/vkontakte/android/FriendRequestsView;

    invoke-virtual {v8}, Lcom/vkontakte/android/FriendRequestsView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/vkontakte/android/Global;->langPlural(IILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 499
    const v5, 0x7f060074

    invoke-virtual {p3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 500
    const v5, 0x7f060075

    invoke-virtual {p3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iget v5, v1, Lcom/vkontakte/android/api/FriendRequest;->numMutualFriends:I

    const/4 v7, 0x1

    if-le v5, v7, :cond_b

    const/4 v5, 0x0

    :goto_3
    invoke-virtual {v6, v5}, Landroid/view/View;->setVisibility(I)V

    .line 501
    const v5, 0x7f060076

    invoke-virtual {p3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iget v5, v1, Lcom/vkontakte/android/api/FriendRequest;->numMutualFriends:I

    const/4 v7, 0x2

    if-le v5, v7, :cond_c

    const/4 v5, 0x0

    :goto_4
    invoke-virtual {v6, v5}, Landroid/view/View;->setVisibility(I)V

    .line 502
    const v5, 0x7f060077

    invoke-virtual {p3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iget v5, v1, Lcom/vkontakte/android/api/FriendRequest;->numMutualFriends:I

    const/4 v7, 0x3

    if-le v5, v7, :cond_d

    const/4 v5, 0x0

    :goto_5
    invoke-virtual {v6, v5}, Landroid/view/View;->setVisibility(I)V

    .line 503
    const v5, 0x7f060078

    invoke-virtual {p3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iget v5, v1, Lcom/vkontakte/android/api/FriendRequest;->numMutualFriends:I

    const/4 v7, 0x4

    if-le v5, v7, :cond_e

    const/4 v5, 0x0

    :goto_6
    invoke-virtual {v6, v5}, Landroid/view/View;->setVisibility(I)V

    .line 504
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    iget-object v5, v1, Lcom/vkontakte/android/api/FriendRequest;->mutualFriends:[Lcom/vkontakte/android/UserProfile;

    array-length v5, v5

    if-lt v0, v5, :cond_f

    .line 517
    :cond_2
    const v5, 0x7f060079

    invoke-virtual {p3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iget v5, v1, Lcom/vkontakte/android/api/FriendRequest;->state:I

    const/4 v7, 0x1

    if-ne v5, v7, :cond_12

    const/4 v5, 0x0

    :goto_8
    invoke-virtual {v6, v5}, Landroid/view/View;->setVisibility(I)V

    .line 518
    const v5, 0x7f060071

    invoke-virtual {p3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iget v5, v1, Lcom/vkontakte/android/api/FriendRequest;->state:I

    if-nez v5, :cond_13

    const/4 v5, 0x1

    :goto_9
    invoke-virtual {v6, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 521
    const v5, 0x7f060071

    invoke-virtual {p3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iget v5, v1, Lcom/vkontakte/android/api/FriendRequest;->state:I

    if-nez v5, :cond_14

    const/4 v5, 0x0

    :goto_a
    invoke-virtual {v6, v5}, Landroid/view/View;->setVisibility(I)V

    .line 523
    const/4 v3, 0x0

    .line 524
    .local v3, "vID":I
    const v5, 0x7f060073

    invoke-virtual {p3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_3

    const v3, 0x7f060073

    .line 525
    :cond_3
    const v5, 0x7f060072

    invoke-virtual {p3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_4

    const v3, 0x7f060072

    .line 526
    :cond_4
    if-nez v3, :cond_5

    .line 527
    const v3, 0x7f060072

    .line 528
    invoke-virtual {p3, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const-string v6, ""

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 529
    invoke-virtual {p3, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 531
    :cond_5
    iget v5, v1, Lcom/vkontakte/android/api/FriendRequest;->state:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_6

    .line 533
    invoke-virtual {p3, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v6, 0x7f0900f1

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 535
    :cond_6
    iget v5, v1, Lcom/vkontakte/android/api/FriendRequest;->state:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_7

    .line 537
    invoke-virtual {p3, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v6, 0x7f0900f2

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 540
    :cond_7
    iget-object v5, p0, Lcom/vkontakte/android/FriendRequestsView$FriendRequestsAdapter;->this$0:Lcom/vkontakte/android/FriendRequestsView;

    invoke-static {v5}, Lcom/vkontakte/android/FriendRequestsView;->access$2(Lcom/vkontakte/android/FriendRequestsView;)Lcom/vkontakte/android/ui/ListImageLoader;

    move-result-object v5

    iget-object v6, v1, Lcom/vkontakte/android/api/FriendRequest;->profile:Lcom/vkontakte/android/UserProfile;

    iget-object v6, v6, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/vkontakte/android/ui/ListImageLoader;->isAlreadyLoaded(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_15

    .line 541
    const v5, 0x7f06006e

    invoke-virtual {p3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/vkontakte/android/FriendRequestsView$FriendRequestsAdapter;->this$0:Lcom/vkontakte/android/FriendRequestsView;

    invoke-static {v6}, Lcom/vkontakte/android/FriendRequestsView;->access$2(Lcom/vkontakte/android/FriendRequestsView;)Lcom/vkontakte/android/ui/ListImageLoader;

    move-result-object v6

    iget-object v7, v1, Lcom/vkontakte/android/api/FriendRequest;->profile:Lcom/vkontakte/android/UserProfile;

    iget-object v7, v7, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/vkontakte/android/ui/ListImageLoader;->getImage(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 545
    :goto_b
    invoke-virtual {p3}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    check-cast v5, Lcom/vkontakte/android/ui/HighlightDrawable;

    if-nez p2, :cond_16

    const/4 v6, 0x1

    :goto_c
    invoke-virtual {v5, v6}, Lcom/vkontakte/android/ui/HighlightDrawable;->setFirst(Z)V

    .line 546
    iget-object v5, v1, Lcom/vkontakte/android/api/FriendRequest;->profile:Lcom/vkontakte/android/UserProfile;

    iget v5, v5, Lcom/vkontakte/android/UserProfile;->uid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p3, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v4, p3

    .line 602
    .end local p3    # "view":Landroid/view/View;
    .local v4, "view":Landroid/view/View;
    :goto_d
    return-object v4

    .line 477
    .end local v0    # "i":I
    .end local v1    # "req":Lcom/vkontakte/android/api/FriendRequest;
    .end local v3    # "vID":I
    .end local v4    # "view":Landroid/view/View;
    .restart local p3    # "view":Landroid/view/View;
    :cond_8
    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/vkontakte/android/FriendRequestsView$FriendRequestsAdapter;->this$0:Lcom/vkontakte/android/FriendRequestsView;

    invoke-static {v5}, Lcom/vkontakte/android/FriendRequestsView;->access$1(Lcom/vkontakte/android/FriendRequestsView;)Ljava/util/Vector;

    move-result-object v5

    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 485
    .restart local v1    # "req":Lcom/vkontakte/android/api/FriendRequest;
    :cond_9
    const/16 v5, 0x8

    goto/16 :goto_1

    .line 494
    :cond_a
    const v5, 0x7f060070

    invoke-virtual {p3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    .line 500
    :cond_b
    const/16 v5, 0x8

    goto/16 :goto_3

    .line 501
    :cond_c
    const/16 v5, 0x8

    goto/16 :goto_4

    .line 502
    :cond_d
    const/16 v5, 0x8

    goto/16 :goto_5

    .line 503
    :cond_e
    const/16 v5, 0x8

    goto/16 :goto_6

    .line 505
    .restart local v0    # "i":I
    :cond_f
    iget-object v5, p0, Lcom/vkontakte/android/FriendRequestsView$FriendRequestsAdapter;->this$0:Lcom/vkontakte/android/FriendRequestsView;

    invoke-static {v5}, Lcom/vkontakte/android/FriendRequestsView;->access$2(Lcom/vkontakte/android/FriendRequestsView;)Lcom/vkontakte/android/ui/ListImageLoader;

    move-result-object v5

    iget-object v6, v1, Lcom/vkontakte/android/api/FriendRequest;->mutualFriends:[Lcom/vkontakte/android/UserProfile;

    aget-object v6, v6, v0

    iget-object v6, v6, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/vkontakte/android/ui/ListImageLoader;->isAlreadyLoaded(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 506
    iget-object v5, p0, Lcom/vkontakte/android/FriendRequestsView$FriendRequestsAdapter;->this$0:Lcom/vkontakte/android/FriendRequestsView;

    invoke-static {v5, v0, p3}, Lcom/vkontakte/android/FriendRequestsView;->access$3(Lcom/vkontakte/android/FriendRequestsView;ILandroid/view/View;)Landroid/widget/ImageView;

    move-result-object v5

    iget-object v6, p0, Lcom/vkontakte/android/FriendRequestsView$FriendRequestsAdapter;->this$0:Lcom/vkontakte/android/FriendRequestsView;

    invoke-static {v6}, Lcom/vkontakte/android/FriendRequestsView;->access$2(Lcom/vkontakte/android/FriendRequestsView;)Lcom/vkontakte/android/ui/ListImageLoader;

    move-result-object v6

    iget-object v7, v1, Lcom/vkontakte/android/api/FriendRequest;->mutualFriends:[Lcom/vkontakte/android/UserProfile;

    aget-object v7, v7, v0

    iget-object v7, v7, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/vkontakte/android/ui/ListImageLoader;->getImage(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 504
    :goto_e
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_7

    .line 508
    :cond_10
    iget-object v5, p0, Lcom/vkontakte/android/FriendRequestsView$FriendRequestsAdapter;->this$0:Lcom/vkontakte/android/FriendRequestsView;

    invoke-static {v5, v0, p3}, Lcom/vkontakte/android/FriendRequestsView;->access$3(Lcom/vkontakte/android/FriendRequestsView;ILandroid/view/View;)Landroid/widget/ImageView;

    move-result-object v5

    const v6, 0x7f0201e8

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_e

    .line 511
    .end local v0    # "i":I
    :cond_11
    const v5, 0x7f060073

    invoke-virtual {p3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 512
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_f
    const/4 v5, 0x5

    if-ge v0, v5, :cond_2

    .line 513
    iget-object v5, p0, Lcom/vkontakte/android/FriendRequestsView$FriendRequestsAdapter;->this$0:Lcom/vkontakte/android/FriendRequestsView;

    invoke-static {v5, v0, p3}, Lcom/vkontakte/android/FriendRequestsView;->access$3(Lcom/vkontakte/android/FriendRequestsView;ILandroid/view/View;)Landroid/widget/ImageView;

    move-result-object v5

    const v6, 0x7f0201e8

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 514
    iget-object v5, p0, Lcom/vkontakte/android/FriendRequestsView$FriendRequestsAdapter;->this$0:Lcom/vkontakte/android/FriendRequestsView;

    invoke-static {v5, v0, p3}, Lcom/vkontakte/android/FriendRequestsView;->access$3(Lcom/vkontakte/android/FriendRequestsView;ILandroid/view/View;)Landroid/widget/ImageView;

    move-result-object v5

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 512
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 517
    :cond_12
    const/4 v5, 0x4

    goto/16 :goto_8

    .line 518
    :cond_13
    const/4 v5, 0x0

    goto/16 :goto_9

    .line 521
    :cond_14
    const/4 v5, 0x4

    goto/16 :goto_a

    .line 543
    .restart local v3    # "vID":I
    :cond_15
    const v5, 0x7f06006e

    invoke-virtual {p3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    const v6, 0x7f0201e8

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_b

    .line 545
    :cond_16
    const/4 v6, 0x0

    goto/16 :goto_c

    .line 550
    .end local v0    # "i":I
    .end local v1    # "req":Lcom/vkontakte/android/api/FriendRequest;
    .end local v3    # "vID":I
    :cond_17
    if-nez p3, :cond_1d

    .line 551
    iget-object v5, p0, Lcom/vkontakte/android/FriendRequestsView$FriendRequestsAdapter;->this$0:Lcom/vkontakte/android/FriendRequestsView;

    invoke-virtual {v5}, Lcom/vkontakte/android/FriendRequestsView;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f03001a

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    .line 552
    const v5, 0x7f060079

    invoke-virtual {p3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ProgressBar;

    iget-object v6, p0, Lcom/vkontakte/android/FriendRequestsView$FriendRequestsAdapter;->this$0:Lcom/vkontakte/android/FriendRequestsView;

    invoke-virtual {v6}, Lcom/vkontakte/android/FriendRequestsView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f020206

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 553
    const v5, 0x7f060071

    invoke-virtual {p3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iget-object v6, p0, Lcom/vkontakte/android/FriendRequestsView$FriendRequestsAdapter;->this$0:Lcom/vkontakte/android/FriendRequestsView;

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 554
    new-instance v5, Lcom/vkontakte/android/ui/HighlightDrawable;

    invoke-direct {v5}, Lcom/vkontakte/android/ui/HighlightDrawable;-><init>()V

    invoke-virtual {p3, v5}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 555
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/high16 v8, 0x40e00000    # 7.0f

    invoke-static {v8}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v8

    invoke-virtual {p3, v5, v6, v7, v8}, Landroid/view/View;->setPadding(IIII)V

    .line 556
    invoke-static {p3}, Lcom/vkontakte/android/Global;->setFontOnAll(Landroid/view/View;)V

    .line 557
    iget-object v5, p0, Lcom/vkontakte/android/FriendRequestsView$FriendRequestsAdapter;->this$0:Lcom/vkontakte/android/FriendRequestsView;

    invoke-static {v5}, Lcom/vkontakte/android/FriendRequestsView;->access$0(Lcom/vkontakte/android/FriendRequestsView;)Ljava/util/Vector;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_18
    :goto_10
    move-object v5, p3

    .line 561
    check-cast v5, Lcom/vkontakte/android/ui/FixedRelativeLayout;

    invoke-virtual {v5}, Lcom/vkontakte/android/ui/FixedRelativeLayout;->allowResize()V

    .line 562
    iget-object v5, p0, Lcom/vkontakte/android/FriendRequestsView$FriendRequestsAdapter;->this$0:Lcom/vkontakte/android/FriendRequestsView;

    iget-object v5, v5, Lcom/vkontakte/android/FriendRequestsView;->suggestions:Ljava/util/ArrayList;

    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/api/FriendRequest;

    .line 563
    .restart local v1    # "req":Lcom/vkontakte/android/api/FriendRequest;
    iget-object v2, v1, Lcom/vkontakte/android/api/FriendRequest;->profile:Lcom/vkontakte/android/UserProfile;

    .line 564
    .local v2, "user":Lcom/vkontakte/android/UserProfile;
    iget-object v5, p0, Lcom/vkontakte/android/FriendRequestsView$FriendRequestsAdapter;->this$0:Lcom/vkontakte/android/FriendRequestsView;

    invoke-static {v5}, Lcom/vkontakte/android/FriendRequestsView;->access$1(Lcom/vkontakte/android/FriendRequestsView;)Ljava/util/Vector;

    move-result-object v5

    iget v6, v2, Lcom/vkontakte/android/UserProfile;->uid:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 565
    iget v5, v2, Lcom/vkontakte/android/UserProfile;->uid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p3, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 566
    const v5, 0x7f060070

    invoke-virtual {p3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 567
    const v5, 0x7f060073

    invoke-virtual {p3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 568
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_11
    const/4 v5, 0x5

    if-lt v0, v5, :cond_1e

    .line 572
    const v5, 0x7f06006f

    invoke-virtual {p3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iget-object v6, v2, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 573
    iget-object v5, p0, Lcom/vkontakte/android/FriendRequestsView$FriendRequestsAdapter;->this$0:Lcom/vkontakte/android/FriendRequestsView;

    invoke-static {v5}, Lcom/vkontakte/android/FriendRequestsView;->access$2(Lcom/vkontakte/android/FriendRequestsView;)Lcom/vkontakte/android/ui/ListImageLoader;

    move-result-object v5

    iget-object v6, v2, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/vkontakte/android/ui/ListImageLoader;->isAlreadyLoaded(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1f

    .line 574
    const v5, 0x7f06006e

    invoke-virtual {p3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/vkontakte/android/FriendRequestsView$FriendRequestsAdapter;->this$0:Lcom/vkontakte/android/FriendRequestsView;

    invoke-static {v6}, Lcom/vkontakte/android/FriendRequestsView;->access$2(Lcom/vkontakte/android/FriendRequestsView;)Lcom/vkontakte/android/ui/ListImageLoader;

    move-result-object v6

    iget-object v7, v2, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/vkontakte/android/ui/ListImageLoader;->getImage(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 578
    :goto_12
    const v5, 0x7f060072

    invoke-virtual {p3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iget-object v6, v2, Lcom/vkontakte/android/UserProfile;->university:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 581
    const v5, 0x7f060079

    invoke-virtual {p3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iget v5, v1, Lcom/vkontakte/android/api/FriendRequest;->state:I

    const/4 v7, 0x1

    if-ne v5, v7, :cond_20

    const/4 v5, 0x0

    :goto_13
    invoke-virtual {v6, v5}, Landroid/view/View;->setVisibility(I)V

    .line 582
    const v5, 0x7f060071

    invoke-virtual {p3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iget v5, v1, Lcom/vkontakte/android/api/FriendRequest;->state:I

    if-nez v5, :cond_21

    const/4 v5, 0x1

    :goto_14
    invoke-virtual {v6, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 585
    const v5, 0x7f060071

    invoke-virtual {p3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iget v5, v1, Lcom/vkontakte/android/api/FriendRequest;->state:I

    if-nez v5, :cond_22

    const/4 v5, 0x0

    :goto_15
    invoke-virtual {v6, v5}, Landroid/view/View;->setVisibility(I)V

    .line 587
    const/4 v3, 0x0

    .line 588
    .restart local v3    # "vID":I
    const v5, 0x7f060073

    invoke-virtual {p3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_19

    const v3, 0x7f060073

    .line 589
    :cond_19
    const v5, 0x7f060072

    invoke-virtual {p3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_1a

    const v3, 0x7f060072

    .line 590
    :cond_1a
    if-nez v3, :cond_1b

    .line 591
    const v3, 0x7f060072

    .line 592
    invoke-virtual {p3, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const-string v6, ""

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 593
    invoke-virtual {p3, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 595
    :cond_1b
    iget v5, v1, Lcom/vkontakte/android/api/FriendRequest;->state:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1c

    .line 597
    invoke-virtual {p3, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v6, 0x7f0901ac

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 600
    :cond_1c
    invoke-virtual {p3}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    check-cast v5, Lcom/vkontakte/android/ui/HighlightDrawable;

    if-nez p2, :cond_23

    const/4 v6, 0x1

    :goto_16
    invoke-virtual {v5, v6}, Lcom/vkontakte/android/ui/HighlightDrawable;->setFirst(Z)V

    move-object v4, p3

    .line 602
    .end local p3    # "view":Landroid/view/View;
    .restart local v4    # "view":Landroid/view/View;
    goto/16 :goto_d

    .line 559
    .end local v0    # "i":I
    .end local v1    # "req":Lcom/vkontakte/android/api/FriendRequest;
    .end local v2    # "user":Lcom/vkontakte/android/UserProfile;
    .end local v3    # "vID":I
    .end local v4    # "view":Landroid/view/View;
    .restart local p3    # "view":Landroid/view/View;
    :cond_1d
    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_18

    iget-object v5, p0, Lcom/vkontakte/android/FriendRequestsView$FriendRequestsAdapter;->this$0:Lcom/vkontakte/android/FriendRequestsView;

    invoke-static {v5}, Lcom/vkontakte/android/FriendRequestsView;->access$1(Lcom/vkontakte/android/FriendRequestsView;)Ljava/util/Vector;

    move-result-object v5

    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_10

    .line 569
    .restart local v0    # "i":I
    .restart local v1    # "req":Lcom/vkontakte/android/api/FriendRequest;
    .restart local v2    # "user":Lcom/vkontakte/android/UserProfile;
    :cond_1e
    iget-object v5, p0, Lcom/vkontakte/android/FriendRequestsView$FriendRequestsAdapter;->this$0:Lcom/vkontakte/android/FriendRequestsView;

    invoke-static {v5, v0, p3}, Lcom/vkontakte/android/FriendRequestsView;->access$3(Lcom/vkontakte/android/FriendRequestsView;ILandroid/view/View;)Landroid/widget/ImageView;

    move-result-object v5

    const v6, 0x7f0201e8

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 570
    iget-object v5, p0, Lcom/vkontakte/android/FriendRequestsView$FriendRequestsAdapter;->this$0:Lcom/vkontakte/android/FriendRequestsView;

    invoke-static {v5, v0, p3}, Lcom/vkontakte/android/FriendRequestsView;->access$3(Lcom/vkontakte/android/FriendRequestsView;ILandroid/view/View;)Landroid/widget/ImageView;

    move-result-object v5

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 568
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_11

    .line 576
    :cond_1f
    const v5, 0x7f06006e

    invoke-virtual {p3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    const v6, 0x7f0201e8

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_12

    .line 581
    :cond_20
    const/4 v5, 0x4

    goto/16 :goto_13

    .line 582
    :cond_21
    const/4 v5, 0x0

    goto/16 :goto_14

    .line 585
    :cond_22
    const/4 v5, 0x4

    goto/16 :goto_15

    .line 600
    .restart local v3    # "vID":I
    :cond_23
    const/4 v6, 0x0

    goto :goto_16
.end method

.method public isSectionHeaderVisible(I)Z
    .locals 2
    .param p1, "section"    # I

    .prologue
    const/4 v0, 0x1

    .line 642
    iget-object v1, p0, Lcom/vkontakte/android/FriendRequestsView$FriendRequestsAdapter;->this$0:Lcom/vkontakte/android/FriendRequestsView;

    iget-object v1, v1, Lcom/vkontakte/android/FriendRequestsView;->reqs:[Lcom/vkontakte/android/api/FriendRequest;

    array-length v1, v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/vkontakte/android/FriendRequestsView$FriendRequestsAdapter;->this$0:Lcom/vkontakte/android/FriendRequestsView;

    iget-object v1, v1, Lcom/vkontakte/android/FriendRequestsView;->suggestions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    if-ne p1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
