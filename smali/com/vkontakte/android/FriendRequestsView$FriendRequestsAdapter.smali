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
    .line 475
    iput-object p1, p0, Lcom/vkontakte/android/FriendRequestsView$FriendRequestsAdapter;->this$0:Lcom/vkontakte/android/FriendRequestsView;

    invoke-direct {p0}, Lcom/vkontakte/android/ui/MultiSectionAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkontakte/android/FriendRequestsView;Lcom/vkontakte/android/FriendRequestsView$FriendRequestsAdapter;)V
    .locals 0

    .prologue
    .line 475
    invoke-direct {p0, p1}, Lcom/vkontakte/android/FriendRequestsView$FriendRequestsAdapter;-><init>(Lcom/vkontakte/android/FriendRequestsView;)V

    return-void
.end method


# virtual methods
.method public getItemCount(I)I
    .locals 1
    .param p1, "section"    # I

    .prologue
    .line 636
    iget-object v0, p0, Lcom/vkontakte/android/FriendRequestsView$FriendRequestsAdapter;->this$0:Lcom/vkontakte/android/FriendRequestsView;

    iget-object v0, v0, Lcom/vkontakte/android/FriendRequestsView;->reqs:[Lcom/vkontakte/android/api/FriendRequest;

    array-length v0, v0

    if-lez v0, :cond_0

    .line 637
    packed-switch p1, :pswitch_data_0

    .line 643
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/FriendRequestsView$FriendRequestsAdapter;->this$0:Lcom/vkontakte/android/FriendRequestsView;

    iget-object v0, v0, Lcom/vkontakte/android/FriendRequestsView;->suggestions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    return v0

    .line 639
    :pswitch_0
    iget-object v0, p0, Lcom/vkontakte/android/FriendRequestsView$FriendRequestsAdapter;->this$0:Lcom/vkontakte/android/FriendRequestsView;

    iget-object v0, v0, Lcom/vkontakte/android/FriendRequestsView;->reqs:[Lcom/vkontakte/android/api/FriendRequest;

    array-length v0, v0

    goto :goto_0

    .line 641
    :pswitch_1
    iget-object v0, p0, Lcom/vkontakte/android/FriendRequestsView$FriendRequestsAdapter;->this$0:Lcom/vkontakte/android/FriendRequestsView;

    iget-object v0, v0, Lcom/vkontakte/android/FriendRequestsView;->suggestions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0

    .line 637
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getItemId(II)J
    .locals 3
    .param p1, "section"    # I
    .param p2, "item"    # I

    .prologue
    .line 649
    if-nez p1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/vkontakte/android/FriendRequestsView$FriendRequestsAdapter;->this$0:Lcom/vkontakte/android/FriendRequestsView;

    iget-object v1, v1, Lcom/vkontakte/android/FriendRequestsView;->reqs:[Lcom/vkontakte/android/api/FriendRequest;

    array-length v1, v1

    if-lez v1, :cond_0

    .line 650
    iget-object v1, p0, Lcom/vkontakte/android/FriendRequestsView$FriendRequestsAdapter;->this$0:Lcom/vkontakte/android/FriendRequestsView;

    iget-object v1, v1, Lcom/vkontakte/android/FriendRequestsView;->reqs:[Lcom/vkontakte/android/api/FriendRequest;

    aget-object v1, v1, p2

    iget-object v1, v1, Lcom/vkontakte/android/api/FriendRequest;->profile:Lcom/vkontakte/android/UserProfile;

    iget v1, v1, Lcom/vkontakte/android/UserProfile;->uid:I

    int-to-long v1, v1

    .line 655
    :goto_0
    return-wide v1

    .line 652
    :cond_0
    iget-object v1, p0, Lcom/vkontakte/android/FriendRequestsView$FriendRequestsAdapter;->this$0:Lcom/vkontakte/android/FriendRequestsView;

    iget-object v1, v1, Lcom/vkontakte/android/FriendRequestsView;->suggestions:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/api/FriendRequest;

    iget-object v1, v1, Lcom/vkontakte/android/api/FriendRequest;->profile:Lcom/vkontakte/android/UserProfile;

    iget v1, v1, Lcom/vkontakte/android/UserProfile;->uid:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    int-to-long v1, v1

    goto :goto_0

    .line 654
    :catch_0
    move-exception v0

    .line 655
    .local v0, "x":Ljava/lang/Exception;
    const-wide/16 v1, 0x0

    goto :goto_0
.end method

.method public getSectionCount()I
    .locals 2

    .prologue
    .line 630
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

    .line 631
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
    .line 624
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/FriendRequestsView$FriendRequestsAdapter;->this$0:Lcom/vkontakte/android/FriendRequestsView;

    invoke-virtual {v0}, Lcom/vkontakte/android/FriendRequestsView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09015c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 625
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
    .line 479
    if-nez p1, :cond_17

    iget-object v5, p0, Lcom/vkontakte/android/FriendRequestsView$FriendRequestsAdapter;->this$0:Lcom/vkontakte/android/FriendRequestsView;

    iget-object v5, v5, Lcom/vkontakte/android/FriendRequestsView;->reqs:[Lcom/vkontakte/android/api/FriendRequest;

    array-length v5, v5

    if-lez v5, :cond_17

    .line 480
    if-nez p3, :cond_8

    .line 481
    iget-object v5, p0, Lcom/vkontakte/android/FriendRequestsView$FriendRequestsAdapter;->this$0:Lcom/vkontakte/android/FriendRequestsView;

    invoke-virtual {v5}, Lcom/vkontakte/android/FriendRequestsView;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f03001f

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    .line 482
    const v5, 0x7f060083

    invoke-virtual {p3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ProgressBar;

    iget-object v6, p0, Lcom/vkontakte/android/FriendRequestsView$FriendRequestsAdapter;->this$0:Lcom/vkontakte/android/FriendRequestsView;

    invoke-virtual {v6}, Lcom/vkontakte/android/FriendRequestsView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f020224

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 484
    const v5, 0x7f06007b

    invoke-virtual {p3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iget-object v6, p0, Lcom/vkontakte/android/FriendRequestsView$FriendRequestsAdapter;->this$0:Lcom/vkontakte/android/FriendRequestsView;

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 485
    new-instance v5, Lcom/vkontakte/android/ui/HighlightDrawable;

    invoke-direct {v5}, Lcom/vkontakte/android/ui/HighlightDrawable;-><init>()V

    invoke-virtual {p3, v5}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 486
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/high16 v8, 0x40e00000    # 7.0f

    invoke-static {v8}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v8

    invoke-virtual {p3, v5, v6, v7, v8}, Landroid/view/View;->setPadding(IIII)V

    .line 489
    invoke-static {p3}, Lcom/vkontakte/android/Global;->setFontOnAll(Landroid/view/View;)V

    .line 490
    iget-object v5, p0, Lcom/vkontakte/android/FriendRequestsView$FriendRequestsAdapter;->this$0:Lcom/vkontakte/android/FriendRequestsView;

    invoke-static {v5}, Lcom/vkontakte/android/FriendRequestsView;->access$0(Lcom/vkontakte/android/FriendRequestsView;)Ljava/util/Vector;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_0
    move-object v5, p3

    .line 494
    check-cast v5, Lcom/vkontakte/android/ui/FixedRelativeLayout;

    invoke-virtual {v5}, Lcom/vkontakte/android/ui/FixedRelativeLayout;->allowResize()V

    .line 495
    iget-object v5, p0, Lcom/vkontakte/android/FriendRequestsView$FriendRequestsAdapter;->this$0:Lcom/vkontakte/android/FriendRequestsView;

    iget-object v5, v5, Lcom/vkontakte/android/FriendRequestsView;->reqs:[Lcom/vkontakte/android/api/FriendRequest;

    aget-object v1, v5, p2

    .line 496
    .local v1, "req":Lcom/vkontakte/android/api/FriendRequest;
    iget-object v5, p0, Lcom/vkontakte/android/FriendRequestsView$FriendRequestsAdapter;->this$0:Lcom/vkontakte/android/FriendRequestsView;

    invoke-static {v5}, Lcom/vkontakte/android/FriendRequestsView;->access$1(Lcom/vkontakte/android/FriendRequestsView;)Ljava/util/Vector;

    move-result-object v5

    iget-object v6, v1, Lcom/vkontakte/android/api/FriendRequest;->profile:Lcom/vkontakte/android/UserProfile;

    iget v6, v6, Lcom/vkontakte/android/UserProfile;->uid:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 498
    const v5, 0x7f060079

    invoke-virtual {p3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iget-object v6, v1, Lcom/vkontakte/android/api/FriendRequest;->profile:Lcom/vkontakte/android/UserProfile;

    iget-object v6, v6, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 500
    const v5, 0x7f06007c

    invoke-virtual {p3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iget-object v5, v1, Lcom/vkontakte/android/api/FriendRequest;->info:Ljava/lang/String;

    if-eqz v5, :cond_9

    const/4 v5, 0x0

    :goto_1
    invoke-virtual {v6, v5}, Landroid/view/View;->setVisibility(I)V

    .line 501
    iget-object v5, v1, Lcom/vkontakte/android/api/FriendRequest;->info:Ljava/lang/String;

    if-eqz v5, :cond_1

    .line 502
    const v5, 0x7f06007c

    invoke-virtual {p3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iget-object v6, v1, Lcom/vkontakte/android/api/FriendRequest;->info:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 505
    :cond_1
    iget-object v5, v1, Lcom/vkontakte/android/api/FriendRequest;->message:Ljava/lang/String;

    if-eqz v5, :cond_a

    iget-object v5, v1, Lcom/vkontakte/android/api/FriendRequest;->message:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_a

    .line 506
    const v5, 0x7f06007a

    invoke-virtual {p3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 507
    const v5, 0x7f06007a

    invoke-virtual {p3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iget-object v6, v1, Lcom/vkontakte/android/api/FriendRequest;->message:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 511
    :goto_2
    iget v5, v1, Lcom/vkontakte/android/api/FriendRequest;->numMutualFriends:I

    if-lez v5, :cond_11

    .line 512
    const v5, 0x7f06007d

    invoke-virtual {p3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 513
    const v5, 0x7f06007d

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

    .line 514
    const v5, 0x7f06007e

    invoke-virtual {p3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 515
    const v5, 0x7f06007f

    invoke-virtual {p3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iget v5, v1, Lcom/vkontakte/android/api/FriendRequest;->numMutualFriends:I

    const/4 v7, 0x1

    if-le v5, v7, :cond_b

    const/4 v5, 0x0

    :goto_3
    invoke-virtual {v6, v5}, Landroid/view/View;->setVisibility(I)V

    .line 516
    const v5, 0x7f060080

    invoke-virtual {p3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iget v5, v1, Lcom/vkontakte/android/api/FriendRequest;->numMutualFriends:I

    const/4 v7, 0x2

    if-le v5, v7, :cond_c

    const/4 v5, 0x0

    :goto_4
    invoke-virtual {v6, v5}, Landroid/view/View;->setVisibility(I)V

    .line 517
    const v5, 0x7f060081

    invoke-virtual {p3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iget v5, v1, Lcom/vkontakte/android/api/FriendRequest;->numMutualFriends:I

    const/4 v7, 0x3

    if-le v5, v7, :cond_d

    const/4 v5, 0x0

    :goto_5
    invoke-virtual {v6, v5}, Landroid/view/View;->setVisibility(I)V

    .line 518
    const v5, 0x7f060082

    invoke-virtual {p3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iget v5, v1, Lcom/vkontakte/android/api/FriendRequest;->numMutualFriends:I

    const/4 v7, 0x4

    if-le v5, v7, :cond_e

    const/4 v5, 0x0

    :goto_6
    invoke-virtual {v6, v5}, Landroid/view/View;->setVisibility(I)V

    .line 519
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    iget-object v5, v1, Lcom/vkontakte/android/api/FriendRequest;->mutualFriends:[Lcom/vkontakte/android/UserProfile;

    array-length v5, v5

    if-lt v0, v5, :cond_f

    .line 532
    :cond_2
    const v5, 0x7f060083

    invoke-virtual {p3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iget v5, v1, Lcom/vkontakte/android/api/FriendRequest;->state:I

    const/4 v7, 0x1

    if-ne v5, v7, :cond_12

    const/4 v5, 0x0

    :goto_8
    invoke-virtual {v6, v5}, Landroid/view/View;->setVisibility(I)V

    .line 533
    const v5, 0x7f06007b

    invoke-virtual {p3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iget v5, v1, Lcom/vkontakte/android/api/FriendRequest;->state:I

    if-nez v5, :cond_13

    const/4 v5, 0x1

    :goto_9
    invoke-virtual {v6, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 536
    const v5, 0x7f06007b

    invoke-virtual {p3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iget v5, v1, Lcom/vkontakte/android/api/FriendRequest;->state:I

    if-nez v5, :cond_14

    const/4 v5, 0x0

    :goto_a
    invoke-virtual {v6, v5}, Landroid/view/View;->setVisibility(I)V

    .line 538
    const/4 v3, 0x0

    .line 539
    .local v3, "vID":I
    const v5, 0x7f06007d

    invoke-virtual {p3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_3

    const v3, 0x7f06007d

    .line 540
    :cond_3
    const v5, 0x7f06007c

    invoke-virtual {p3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_4

    const v3, 0x7f06007c

    .line 541
    :cond_4
    if-nez v3, :cond_5

    .line 542
    const v3, 0x7f06007c

    .line 543
    invoke-virtual {p3, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const-string v6, ""

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 544
    invoke-virtual {p3, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 546
    :cond_5
    iget v5, v1, Lcom/vkontakte/android/api/FriendRequest;->state:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_6

    .line 548
    invoke-virtual {p3, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v6, 0x7f0900f2

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 550
    :cond_6
    iget v5, v1, Lcom/vkontakte/android/api/FriendRequest;->state:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_7

    .line 552
    invoke-virtual {p3, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v6, 0x7f0900f3

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 555
    :cond_7
    iget-object v5, p0, Lcom/vkontakte/android/FriendRequestsView$FriendRequestsAdapter;->this$0:Lcom/vkontakte/android/FriendRequestsView;

    invoke-static {v5}, Lcom/vkontakte/android/FriendRequestsView;->access$2(Lcom/vkontakte/android/FriendRequestsView;)Lcom/vkontakte/android/ui/ListImageLoader;

    move-result-object v5

    iget-object v6, v1, Lcom/vkontakte/android/api/FriendRequest;->profile:Lcom/vkontakte/android/UserProfile;

    iget-object v6, v6, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/vkontakte/android/ui/ListImageLoader;->isAlreadyLoaded(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_15

    .line 556
    const v5, 0x7f060078

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

    .line 560
    :goto_b
    invoke-virtual {p3}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    check-cast v5, Lcom/vkontakte/android/ui/HighlightDrawable;

    if-nez p2, :cond_16

    const/4 v6, 0x1

    :goto_c
    invoke-virtual {v5, v6}, Lcom/vkontakte/android/ui/HighlightDrawable;->setFirst(Z)V

    .line 561
    iget-object v5, v1, Lcom/vkontakte/android/api/FriendRequest;->profile:Lcom/vkontakte/android/UserProfile;

    iget v5, v5, Lcom/vkontakte/android/UserProfile;->uid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p3, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v4, p3

    .line 617
    .end local p3    # "view":Landroid/view/View;
    .local v4, "view":Landroid/view/View;
    :goto_d
    return-object v4

    .line 492
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

    .line 500
    .restart local v1    # "req":Lcom/vkontakte/android/api/FriendRequest;
    :cond_9
    const/16 v5, 0x8

    goto/16 :goto_1

    .line 509
    :cond_a
    const v5, 0x7f06007a

    invoke-virtual {p3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    .line 515
    :cond_b
    const/16 v5, 0x8

    goto/16 :goto_3

    .line 516
    :cond_c
    const/16 v5, 0x8

    goto/16 :goto_4

    .line 517
    :cond_d
    const/16 v5, 0x8

    goto/16 :goto_5

    .line 518
    :cond_e
    const/16 v5, 0x8

    goto/16 :goto_6

    .line 520
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

    .line 521
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

    .line 519
    :goto_e
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_7

    .line 523
    :cond_10
    iget-object v5, p0, Lcom/vkontakte/android/FriendRequestsView$FriendRequestsAdapter;->this$0:Lcom/vkontakte/android/FriendRequestsView;

    invoke-static {v5, v0, p3}, Lcom/vkontakte/android/FriendRequestsView;->access$3(Lcom/vkontakte/android/FriendRequestsView;ILandroid/view/View;)Landroid/widget/ImageView;

    move-result-object v5

    const v6, 0x7f020206

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_e

    .line 526
    .end local v0    # "i":I
    :cond_11
    const v5, 0x7f06007d

    invoke-virtual {p3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 527
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_f
    const/4 v5, 0x5

    if-ge v0, v5, :cond_2

    .line 528
    iget-object v5, p0, Lcom/vkontakte/android/FriendRequestsView$FriendRequestsAdapter;->this$0:Lcom/vkontakte/android/FriendRequestsView;

    invoke-static {v5, v0, p3}, Lcom/vkontakte/android/FriendRequestsView;->access$3(Lcom/vkontakte/android/FriendRequestsView;ILandroid/view/View;)Landroid/widget/ImageView;

    move-result-object v5

    const v6, 0x7f020206

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 529
    iget-object v5, p0, Lcom/vkontakte/android/FriendRequestsView$FriendRequestsAdapter;->this$0:Lcom/vkontakte/android/FriendRequestsView;

    invoke-static {v5, v0, p3}, Lcom/vkontakte/android/FriendRequestsView;->access$3(Lcom/vkontakte/android/FriendRequestsView;ILandroid/view/View;)Landroid/widget/ImageView;

    move-result-object v5

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 527
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 532
    :cond_12
    const/4 v5, 0x4

    goto/16 :goto_8

    .line 533
    :cond_13
    const/4 v5, 0x0

    goto/16 :goto_9

    .line 536
    :cond_14
    const/4 v5, 0x4

    goto/16 :goto_a

    .line 558
    .restart local v3    # "vID":I
    :cond_15
    const v5, 0x7f060078

    invoke-virtual {p3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    const v6, 0x7f020206

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_b

    .line 560
    :cond_16
    const/4 v6, 0x0

    goto/16 :goto_c

    .line 565
    .end local v0    # "i":I
    .end local v1    # "req":Lcom/vkontakte/android/api/FriendRequest;
    .end local v3    # "vID":I
    :cond_17
    if-nez p3, :cond_1d

    .line 566
    iget-object v5, p0, Lcom/vkontakte/android/FriendRequestsView$FriendRequestsAdapter;->this$0:Lcom/vkontakte/android/FriendRequestsView;

    invoke-virtual {v5}, Lcom/vkontakte/android/FriendRequestsView;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f03001f

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    .line 567
    const v5, 0x7f060083

    invoke-virtual {p3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ProgressBar;

    iget-object v6, p0, Lcom/vkontakte/android/FriendRequestsView$FriendRequestsAdapter;->this$0:Lcom/vkontakte/android/FriendRequestsView;

    invoke-virtual {v6}, Lcom/vkontakte/android/FriendRequestsView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f020224

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 568
    const v5, 0x7f06007b

    invoke-virtual {p3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iget-object v6, p0, Lcom/vkontakte/android/FriendRequestsView$FriendRequestsAdapter;->this$0:Lcom/vkontakte/android/FriendRequestsView;

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 569
    new-instance v5, Lcom/vkontakte/android/ui/HighlightDrawable;

    invoke-direct {v5}, Lcom/vkontakte/android/ui/HighlightDrawable;-><init>()V

    invoke-virtual {p3, v5}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 570
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/high16 v8, 0x40e00000    # 7.0f

    invoke-static {v8}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v8

    invoke-virtual {p3, v5, v6, v7, v8}, Landroid/view/View;->setPadding(IIII)V

    .line 571
    invoke-static {p3}, Lcom/vkontakte/android/Global;->setFontOnAll(Landroid/view/View;)V

    .line 572
    iget-object v5, p0, Lcom/vkontakte/android/FriendRequestsView$FriendRequestsAdapter;->this$0:Lcom/vkontakte/android/FriendRequestsView;

    invoke-static {v5}, Lcom/vkontakte/android/FriendRequestsView;->access$0(Lcom/vkontakte/android/FriendRequestsView;)Ljava/util/Vector;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_18
    :goto_10
    move-object v5, p3

    .line 576
    check-cast v5, Lcom/vkontakte/android/ui/FixedRelativeLayout;

    invoke-virtual {v5}, Lcom/vkontakte/android/ui/FixedRelativeLayout;->allowResize()V

    .line 577
    iget-object v5, p0, Lcom/vkontakte/android/FriendRequestsView$FriendRequestsAdapter;->this$0:Lcom/vkontakte/android/FriendRequestsView;

    iget-object v5, v5, Lcom/vkontakte/android/FriendRequestsView;->suggestions:Ljava/util/ArrayList;

    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/api/FriendRequest;

    .line 578
    .restart local v1    # "req":Lcom/vkontakte/android/api/FriendRequest;
    iget-object v2, v1, Lcom/vkontakte/android/api/FriendRequest;->profile:Lcom/vkontakte/android/UserProfile;

    .line 579
    .local v2, "user":Lcom/vkontakte/android/UserProfile;
    iget-object v5, p0, Lcom/vkontakte/android/FriendRequestsView$FriendRequestsAdapter;->this$0:Lcom/vkontakte/android/FriendRequestsView;

    invoke-static {v5}, Lcom/vkontakte/android/FriendRequestsView;->access$1(Lcom/vkontakte/android/FriendRequestsView;)Ljava/util/Vector;

    move-result-object v5

    iget v6, v2, Lcom/vkontakte/android/UserProfile;->uid:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 580
    iget v5, v2, Lcom/vkontakte/android/UserProfile;->uid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p3, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 581
    const v5, 0x7f06007a

    invoke-virtual {p3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 582
    const v5, 0x7f06007d

    invoke-virtual {p3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 583
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_11
    const/4 v5, 0x5

    if-lt v0, v5, :cond_1e

    .line 587
    const v5, 0x7f060079

    invoke-virtual {p3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iget-object v6, v2, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 588
    iget-object v5, p0, Lcom/vkontakte/android/FriendRequestsView$FriendRequestsAdapter;->this$0:Lcom/vkontakte/android/FriendRequestsView;

    invoke-static {v5}, Lcom/vkontakte/android/FriendRequestsView;->access$2(Lcom/vkontakte/android/FriendRequestsView;)Lcom/vkontakte/android/ui/ListImageLoader;

    move-result-object v5

    iget-object v6, v2, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/vkontakte/android/ui/ListImageLoader;->isAlreadyLoaded(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1f

    .line 589
    const v5, 0x7f060078

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

    .line 593
    :goto_12
    const v5, 0x7f06007c

    invoke-virtual {p3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iget-object v6, v2, Lcom/vkontakte/android/UserProfile;->university:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 596
    const v5, 0x7f060083

    invoke-virtual {p3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iget v5, v1, Lcom/vkontakte/android/api/FriendRequest;->state:I

    const/4 v7, 0x1

    if-ne v5, v7, :cond_20

    const/4 v5, 0x0

    :goto_13
    invoke-virtual {v6, v5}, Landroid/view/View;->setVisibility(I)V

    .line 597
    const v5, 0x7f06007b

    invoke-virtual {p3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iget v5, v1, Lcom/vkontakte/android/api/FriendRequest;->state:I

    if-nez v5, :cond_21

    const/4 v5, 0x1

    :goto_14
    invoke-virtual {v6, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 600
    const v5, 0x7f06007b

    invoke-virtual {p3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iget v5, v1, Lcom/vkontakte/android/api/FriendRequest;->state:I

    if-nez v5, :cond_22

    const/4 v5, 0x0

    :goto_15
    invoke-virtual {v6, v5}, Landroid/view/View;->setVisibility(I)V

    .line 602
    const/4 v3, 0x0

    .line 603
    .restart local v3    # "vID":I
    const v5, 0x7f06007d

    invoke-virtual {p3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_19

    const v3, 0x7f06007d

    .line 604
    :cond_19
    const v5, 0x7f06007c

    invoke-virtual {p3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_1a

    const v3, 0x7f06007c

    .line 605
    :cond_1a
    if-nez v3, :cond_1b

    .line 606
    const v3, 0x7f06007c

    .line 607
    invoke-virtual {p3, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const-string v6, ""

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 608
    invoke-virtual {p3, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 610
    :cond_1b
    iget v5, v1, Lcom/vkontakte/android/api/FriendRequest;->state:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1c

    .line 612
    invoke-virtual {p3, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v6, 0x7f0901ad

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 615
    :cond_1c
    invoke-virtual {p3}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    check-cast v5, Lcom/vkontakte/android/ui/HighlightDrawable;

    if-nez p2, :cond_23

    const/4 v6, 0x1

    :goto_16
    invoke-virtual {v5, v6}, Lcom/vkontakte/android/ui/HighlightDrawable;->setFirst(Z)V

    move-object v4, p3

    .line 617
    .end local p3    # "view":Landroid/view/View;
    .restart local v4    # "view":Landroid/view/View;
    goto/16 :goto_d

    .line 574
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

    .line 584
    .restart local v0    # "i":I
    .restart local v1    # "req":Lcom/vkontakte/android/api/FriendRequest;
    .restart local v2    # "user":Lcom/vkontakte/android/UserProfile;
    :cond_1e
    iget-object v5, p0, Lcom/vkontakte/android/FriendRequestsView$FriendRequestsAdapter;->this$0:Lcom/vkontakte/android/FriendRequestsView;

    invoke-static {v5, v0, p3}, Lcom/vkontakte/android/FriendRequestsView;->access$3(Lcom/vkontakte/android/FriendRequestsView;ILandroid/view/View;)Landroid/widget/ImageView;

    move-result-object v5

    const v6, 0x7f020206

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 585
    iget-object v5, p0, Lcom/vkontakte/android/FriendRequestsView$FriendRequestsAdapter;->this$0:Lcom/vkontakte/android/FriendRequestsView;

    invoke-static {v5, v0, p3}, Lcom/vkontakte/android/FriendRequestsView;->access$3(Lcom/vkontakte/android/FriendRequestsView;ILandroid/view/View;)Landroid/widget/ImageView;

    move-result-object v5

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 583
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_11

    .line 591
    :cond_1f
    const v5, 0x7f060078

    invoke-virtual {p3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    const v6, 0x7f020206

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_12

    .line 596
    :cond_20
    const/4 v5, 0x4

    goto/16 :goto_13

    .line 597
    :cond_21
    const/4 v5, 0x0

    goto/16 :goto_14

    .line 600
    :cond_22
    const/4 v5, 0x4

    goto/16 :goto_15

    .line 615
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

    .line 661
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
