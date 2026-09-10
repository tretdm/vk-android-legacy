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
    .line 452
    iput-object p1, p0, Lcom/vkontakte/android/FriendRequestsView$FriendRequestsAdapter;->this$0:Lcom/vkontakte/android/FriendRequestsView;

    invoke-direct {p0}, Lcom/vkontakte/android/ui/MultiSectionAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkontakte/android/FriendRequestsView;Lcom/vkontakte/android/FriendRequestsView$FriendRequestsAdapter;)V
    .locals 0

    .prologue
    .line 452
    invoke-direct {p0, p1}, Lcom/vkontakte/android/FriendRequestsView$FriendRequestsAdapter;-><init>(Lcom/vkontakte/android/FriendRequestsView;)V

    return-void
.end method


# virtual methods
.method public getItemCount(I)I
    .locals 1
    .param p1, "section"    # I

    .prologue
    .line 557
    packed-switch p1, :pswitch_data_0

    .line 563
    iget-object v0, p0, Lcom/vkontakte/android/FriendRequestsView$FriendRequestsAdapter;->this$0:Lcom/vkontakte/android/FriendRequestsView;

    iget-object v0, v0, Lcom/vkontakte/android/FriendRequestsView;->suggestions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    return v0

    .line 559
    :pswitch_0
    iget-object v0, p0, Lcom/vkontakte/android/FriendRequestsView$FriendRequestsAdapter;->this$0:Lcom/vkontakte/android/FriendRequestsView;

    invoke-static {v0}, Lcom/vkontakte/android/FriendRequestsView;->access$0(Lcom/vkontakte/android/FriendRequestsView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0

    .line 561
    :pswitch_1
    iget-object v0, p0, Lcom/vkontakte/android/FriendRequestsView$FriendRequestsAdapter;->this$0:Lcom/vkontakte/android/FriendRequestsView;

    iget-object v0, v0, Lcom/vkontakte/android/FriendRequestsView;->suggestions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0

    .line 557
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
    .line 569
    if-nez p1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/vkontakte/android/FriendRequestsView$FriendRequestsAdapter;->this$0:Lcom/vkontakte/android/FriendRequestsView;

    invoke-static {v1}, Lcom/vkontakte/android/FriendRequestsView;->access$0(Lcom/vkontakte/android/FriendRequestsView;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 570
    iget-object v1, p0, Lcom/vkontakte/android/FriendRequestsView$FriendRequestsAdapter;->this$0:Lcom/vkontakte/android/FriendRequestsView;

    invoke-static {v1}, Lcom/vkontakte/android/FriendRequestsView;->access$0(Lcom/vkontakte/android/FriendRequestsView;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/api/FriendRequest;

    iget-object v1, v1, Lcom/vkontakte/android/api/FriendRequest;->profile:Lcom/vkontakte/android/UserProfile;

    iget v1, v1, Lcom/vkontakte/android/UserProfile;->uid:I

    int-to-long v1, v1

    .line 575
    :goto_0
    return-wide v1

    .line 572
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

    .line 574
    :catch_0
    move-exception v0

    .line 575
    .local v0, "x":Ljava/lang/Exception;
    const-wide/16 v1, 0x0

    goto :goto_0
.end method

.method public getSectionCount()I
    .locals 1

    .prologue
    .line 551
    const/4 v0, 0x2

    return v0
.end method

.method public getSectionTitle(I)Ljava/lang/String;
    .locals 2
    .param p1, "section"    # I

    .prologue
    .line 544
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/FriendRequestsView$FriendRequestsAdapter;->this$0:Lcom/vkontakte/android/FriendRequestsView;

    invoke-virtual {v0}, Lcom/vkontakte/android/FriendRequestsView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06010f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 545
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getView(IILandroid/view/View;)Landroid/view/View;
    .locals 11
    .param p1, "section"    # I
    .param p2, "pos"    # I
    .param p3, "view"    # Landroid/view/View;

    .prologue
    const v9, 0x7f0800a9

    const/4 v10, 0x2

    const/4 v6, 0x1

    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 457
    if-nez p3, :cond_0

    .line 458
    iget-object v3, p0, Lcom/vkontakte/android/FriendRequestsView$FriendRequestsAdapter;->this$0:Lcom/vkontakte/android/FriendRequestsView;

    invoke-virtual {v3}, Lcom/vkontakte/android/FriendRequestsView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v7, 0x7f030032

    const/4 v8, 0x0

    invoke-static {v3, v7, v8}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    .line 459
    const v3, 0x7f0800ab

    invoke-virtual {p3, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const-string v7, "add"

    invoke-virtual {v3, v7}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 460
    const v3, 0x7f0800ab

    invoke-virtual {p3, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iget-object v7, p0, Lcom/vkontakte/android/FriendRequestsView$FriendRequestsAdapter;->this$0:Lcom/vkontakte/android/FriendRequestsView;

    invoke-virtual {v3, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 461
    const v3, 0x7f0800b4

    invoke-virtual {p3, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const-string v7, "decline"

    invoke-virtual {v3, v7}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 462
    const v3, 0x7f0800b4

    invoke-virtual {p3, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iget-object v7, p0, Lcom/vkontakte/android/FriendRequestsView$FriendRequestsAdapter;->this$0:Lcom/vkontakte/android/FriendRequestsView;

    invoke-virtual {v3, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 463
    const v3, 0x7f0800ab

    invoke-virtual {p3, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const v7, 0x7f080017

    invoke-virtual {v3, v7, p3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 464
    const v3, 0x7f0800b4

    invoke-virtual {p3, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const v7, 0x7f080017

    invoke-virtual {v3, v7, p3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 467
    :cond_0
    if-nez p1, :cond_6

    iget-object v3, p0, Lcom/vkontakte/android/FriendRequestsView$FriendRequestsAdapter;->this$0:Lcom/vkontakte/android/FriendRequestsView;

    invoke-static {v3}, Lcom/vkontakte/android/FriendRequestsView;->access$0(Lcom/vkontakte/android/FriendRequestsView;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vkontakte/android/api/FriendRequest;

    move-object v2, v3

    .line 469
    .local v2, "req":Lcom/vkontakte/android/api/FriendRequest;
    :goto_0
    const v3, 0x7f0800a8

    invoke-virtual {p3, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v7, v2, Lcom/vkontakte/android/api/FriendRequest;->profile:Lcom/vkontakte/android/UserProfile;

    iget-object v7, v7, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 472
    iget-object v3, v2, Lcom/vkontakte/android/api/FriendRequest;->info:Ljava/lang/String;

    if-eqz v3, :cond_7

    .line 473
    invoke-virtual {p3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v7, v2, Lcom/vkontakte/android/api/FriendRequest;->info:Ljava/lang/String;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 474
    invoke-virtual {p3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const/16 v7, 0x2328

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setMaxHeight(I)V

    .line 479
    :goto_1
    iget-object v3, v2, Lcom/vkontakte/android/api/FriendRequest;->message:Ljava/lang/String;

    if-eqz v3, :cond_8

    iget-object v3, v2, Lcom/vkontakte/android/api/FriendRequest;->message:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_8

    .line 480
    const v3, 0x7f0800aa

    invoke-virtual {p3, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 481
    const v3, 0x7f0800aa

    invoke-virtual {p3, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v7, v2, Lcom/vkontakte/android/api/FriendRequest;->message:Ljava/lang/String;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 485
    :goto_2
    iget v3, v2, Lcom/vkontakte/android/api/FriendRequest;->numMutualFriends:I

    if-lez v3, :cond_e

    .line 486
    const v3, 0x7f0800ac

    invoke-virtual {p3, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 487
    const v3, 0x7f0800ac

    invoke-virtual {p3, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v7, 0x7f0d0018

    iget v8, v2, Lcom/vkontakte/android/api/FriendRequest;->numMutualFriends:I

    iget-object v9, p0, Lcom/vkontakte/android/FriendRequestsView$FriendRequestsAdapter;->this$0:Lcom/vkontakte/android/FriendRequestsView;

    invoke-virtual {v9}, Lcom/vkontakte/android/FriendRequestsView;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lcom/vkontakte/android/Global;->langPlural(IILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 488
    const v3, 0x7f0800ad

    invoke-virtual {p3, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 489
    const v3, 0x7f0800ae

    invoke-virtual {p3, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iget v3, v2, Lcom/vkontakte/android/api/FriendRequest;->numMutualFriends:I

    if-le v3, v6, :cond_9

    move v3, v4

    :goto_3
    invoke-virtual {v7, v3}, Landroid/view/View;->setVisibility(I)V

    .line 490
    const v3, 0x7f0800af

    invoke-virtual {p3, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iget v3, v2, Lcom/vkontakte/android/api/FriendRequest;->numMutualFriends:I

    if-le v3, v10, :cond_a

    move v3, v4

    :goto_4
    invoke-virtual {v7, v3}, Landroid/view/View;->setVisibility(I)V

    .line 491
    const v3, 0x7f0800b0

    invoke-virtual {p3, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iget v3, v2, Lcom/vkontakte/android/api/FriendRequest;->numMutualFriends:I

    const/4 v8, 0x3

    if-le v3, v8, :cond_b

    move v3, v4

    :goto_5
    invoke-virtual {v7, v3}, Landroid/view/View;->setVisibility(I)V

    .line 492
    const v3, 0x7f0800b1

    invoke-virtual {p3, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iget v7, v2, Lcom/vkontakte/android/api/FriendRequest;->numMutualFriends:I

    const/4 v8, 0x4

    if-le v7, v8, :cond_1

    move v5, v4

    :cond_1
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 493
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    iget-object v3, v2, Lcom/vkontakte/android/api/FriendRequest;->mutualFriends:[Lcom/vkontakte/android/UserProfile;

    array-length v3, v3

    if-lt v1, v3, :cond_c

    .line 506
    :cond_2
    const v3, 0x7f0800b2

    invoke-virtual {p3, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ViewFlipper;

    .line 507
    .local v0, "flipper":Landroid/widget/ViewFlipper;
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 508
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/ViewFlipper;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 509
    iget v3, v2, Lcom/vkontakte/android/api/FriendRequest;->state:I

    packed-switch v3, :pswitch_data_0

    .line 521
    :goto_7
    iget-object v3, p0, Lcom/vkontakte/android/FriendRequestsView$FriendRequestsAdapter;->this$0:Lcom/vkontakte/android/FriendRequestsView;

    invoke-virtual {v3}, Lcom/vkontakte/android/FriendRequestsView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v5, 0x7f040008

    invoke-virtual {v0, v3, v5}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/content/Context;I)V

    .line 522
    iget-object v3, p0, Lcom/vkontakte/android/FriendRequestsView$FriendRequestsAdapter;->this$0:Lcom/vkontakte/android/FriendRequestsView;

    invoke-virtual {v3}, Lcom/vkontakte/android/FriendRequestsView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v5, 0x7f040009

    invoke-virtual {v0, v3, v5}, Landroid/widget/ViewFlipper;->setOutAnimation(Landroid/content/Context;I)V

    .line 523
    iget v3, v2, Lcom/vkontakte/android/api/FriendRequest;->state:I

    if-ne v3, v10, :cond_3

    .line 524
    const v3, 0x7f0800b7

    invoke-virtual {v0, v3}, Landroid/widget/ViewFlipper;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    if-nez p1, :cond_f

    const v5, 0x7f0600cf

    :goto_8
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(I)V

    .line 526
    :cond_3
    iget v3, v2, Lcom/vkontakte/android/api/FriendRequest;->state:I

    const/4 v5, 0x3

    if-ne v3, v5, :cond_4

    .line 527
    const v3, 0x7f0800b7

    invoke-virtual {v0, v3}, Landroid/widget/ViewFlipper;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v5, 0x7f0600d0

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(I)V

    .line 530
    :cond_4
    iget-object v3, p0, Lcom/vkontakte/android/FriendRequestsView$FriendRequestsAdapter;->this$0:Lcom/vkontakte/android/FriendRequestsView;

    invoke-static {v3}, Lcom/vkontakte/android/FriendRequestsView;->access$1(Lcom/vkontakte/android/FriendRequestsView;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    move-result-object v3

    iget-object v5, v2, Lcom/vkontakte/android/api/FriendRequest;->profile:Lcom/vkontakte/android/UserProfile;

    iget-object v5, v5, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    invoke-virtual {v3, v5}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->isAlreadyLoaded(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 531
    const v3, 0x7f0800a7

    invoke-virtual {p3, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/vkontakte/android/FriendRequestsView$FriendRequestsAdapter;->this$0:Lcom/vkontakte/android/FriendRequestsView;

    invoke-static {v5}, Lcom/vkontakte/android/FriendRequestsView;->access$1(Lcom/vkontakte/android/FriendRequestsView;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    move-result-object v5

    iget-object v7, v2, Lcom/vkontakte/android/api/FriendRequest;->profile:Lcom/vkontakte/android/UserProfile;

    iget-object v7, v7, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    invoke-virtual {v5, v7}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 535
    :goto_9
    iget-object v3, v2, Lcom/vkontakte/android/api/FriendRequest;->profile:Lcom/vkontakte/android/UserProfile;

    iget v3, v3, Lcom/vkontakte/android/UserProfile;->uid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p3, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 536
    const v3, 0x7f08001e

    if-nez p1, :cond_5

    move v4, v6

    :cond_5
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p3, v3, v4}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 538
    return-object p3

    .line 467
    .end local v0    # "flipper":Landroid/widget/ViewFlipper;
    .end local v1    # "i":I
    .end local v2    # "req":Lcom/vkontakte/android/api/FriendRequest;
    :cond_6
    iget-object v3, p0, Lcom/vkontakte/android/FriendRequestsView$FriendRequestsAdapter;->this$0:Lcom/vkontakte/android/FriendRequestsView;

    iget-object v3, v3, Lcom/vkontakte/android/FriendRequestsView;->suggestions:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vkontakte/android/api/FriendRequest;

    move-object v2, v3

    goto/16 :goto_0

    .line 476
    .restart local v2    # "req":Lcom/vkontakte/android/api/FriendRequest;
    :cond_7
    invoke-virtual {p3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setMaxHeight(I)V

    goto/16 :goto_1

    .line 483
    :cond_8
    const v3, 0x7f0800aa

    invoke-virtual {p3, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    :cond_9
    move v3, v5

    .line 489
    goto/16 :goto_3

    :cond_a
    move v3, v5

    .line 490
    goto/16 :goto_4

    :cond_b
    move v3, v5

    .line 491
    goto/16 :goto_5

    .line 494
    .restart local v1    # "i":I
    :cond_c
    iget-object v3, p0, Lcom/vkontakte/android/FriendRequestsView$FriendRequestsAdapter;->this$0:Lcom/vkontakte/android/FriendRequestsView;

    invoke-static {v3}, Lcom/vkontakte/android/FriendRequestsView;->access$1(Lcom/vkontakte/android/FriendRequestsView;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    move-result-object v3

    iget-object v5, v2, Lcom/vkontakte/android/api/FriendRequest;->mutualFriends:[Lcom/vkontakte/android/UserProfile;

    aget-object v5, v5, v1

    iget-object v5, v5, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    invoke-virtual {v3, v5}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->isAlreadyLoaded(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 495
    iget-object v3, p0, Lcom/vkontakte/android/FriendRequestsView$FriendRequestsAdapter;->this$0:Lcom/vkontakte/android/FriendRequestsView;

    invoke-static {v3, v1, p3}, Lcom/vkontakte/android/FriendRequestsView;->access$2(Lcom/vkontakte/android/FriendRequestsView;ILandroid/view/View;)Landroid/widget/ImageView;

    move-result-object v3

    iget-object v5, p0, Lcom/vkontakte/android/FriendRequestsView$FriendRequestsAdapter;->this$0:Lcom/vkontakte/android/FriendRequestsView;

    invoke-static {v5}, Lcom/vkontakte/android/FriendRequestsView;->access$1(Lcom/vkontakte/android/FriendRequestsView;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    move-result-object v5

    iget-object v7, v2, Lcom/vkontakte/android/api/FriendRequest;->mutualFriends:[Lcom/vkontakte/android/UserProfile;

    aget-object v7, v7, v1

    iget-object v7, v7, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    invoke-virtual {v5, v7}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 493
    :goto_a
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_6

    .line 497
    :cond_d
    iget-object v3, p0, Lcom/vkontakte/android/FriendRequestsView$FriendRequestsAdapter;->this$0:Lcom/vkontakte/android/FriendRequestsView;

    invoke-static {v3, v1, p3}, Lcom/vkontakte/android/FriendRequestsView;->access$2(Lcom/vkontakte/android/FriendRequestsView;ILandroid/view/View;)Landroid/widget/ImageView;

    move-result-object v3

    const v5, 0x7f020247

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_a

    .line 500
    .end local v1    # "i":I
    :cond_e
    const v3, 0x7f0800ac

    invoke-virtual {p3, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 501
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_b
    const/4 v3, 0x5

    if-ge v1, v3, :cond_2

    .line 502
    iget-object v3, p0, Lcom/vkontakte/android/FriendRequestsView$FriendRequestsAdapter;->this$0:Lcom/vkontakte/android/FriendRequestsView;

    invoke-static {v3, v1, p3}, Lcom/vkontakte/android/FriendRequestsView;->access$2(Lcom/vkontakte/android/FriendRequestsView;ILandroid/view/View;)Landroid/widget/ImageView;

    move-result-object v3

    const v7, 0x7f020247

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 503
    iget-object v3, p0, Lcom/vkontakte/android/FriendRequestsView$FriendRequestsAdapter;->this$0:Lcom/vkontakte/android/FriendRequestsView;

    invoke-static {v3, v1, p3}, Lcom/vkontakte/android/FriendRequestsView;->access$2(Lcom/vkontakte/android/FriendRequestsView;ILandroid/view/View;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 501
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 511
    .restart local v0    # "flipper":Landroid/widget/ViewFlipper;
    :pswitch_0
    invoke-virtual {v0, v4}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    goto/16 :goto_7

    .line 514
    :pswitch_1
    invoke-virtual {v0, v6}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    goto/16 :goto_7

    .line 518
    :pswitch_2
    invoke-virtual {v0, v10}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    goto/16 :goto_7

    .line 524
    :cond_f
    const v5, 0x7f060144

    goto/16 :goto_8

    .line 533
    :cond_10
    const v3, 0x7f0800a7

    invoke-virtual {p3, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    const v5, 0x7f020207

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_9

    .line 509
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public isSectionHeaderVisible(I)Z
    .locals 2
    .param p1, "section"    # I

    .prologue
    const/4 v0, 0x1

    .line 581
    iget-object v1, p0, Lcom/vkontakte/android/FriendRequestsView$FriendRequestsAdapter;->this$0:Lcom/vkontakte/android/FriendRequestsView;

    invoke-static {v1}, Lcom/vkontakte/android/FriendRequestsView;->access$0(Lcom/vkontakte/android/FriendRequestsView;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

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

.method public setHeaderStyle(Landroid/widget/TextView;)V
    .locals 4
    .param p1, "t"    # Landroid/widget/TextView;

    .prologue
    const/4 v2, 0x0

    .line 585
    const/4 v0, 0x1

    const/high16 v1, 0x41900000    # 18.0f

    invoke-virtual {p1, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 586
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 587
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 588
    const/high16 v0, 0x41a00000    # 20.0f

    invoke-static {v0}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v0

    const/high16 v1, 0x41000000    # 8.0f

    invoke-static {v1}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v1

    invoke-virtual {p1, v0, v1, v2, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 589
    const v0, -0x767677

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 590
    const v0, 0x33d6bf95    # 1.0E-7f

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v2

    int-to-float v2, v2

    const/4 v3, -0x1

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 591
    return-void
.end method
