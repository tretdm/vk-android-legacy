.class Lcom/vkontakte/android/fragments/FriendsFragment$FriendsPagerAdapter;
.super Landroid/support/v13/app/FragmentPagerAdapter;
.source "FriendsFragment.java"

# interfaces
.implements Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip$BadgeTabProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/fragments/FriendsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FriendsPagerAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/FriendsFragment;


# direct methods
.method public constructor <init>(Lcom/vkontakte/android/fragments/FriendsFragment;)V
    .locals 1

    .prologue
    .line 489
    iput-object p1, p0, Lcom/vkontakte/android/fragments/FriendsFragment$FriendsPagerAdapter;->this$0:Lcom/vkontakte/android/fragments/FriendsFragment;

    .line 490
    invoke-virtual {p1}, Lcom/vkontakte/android/fragments/FriendsFragment;->getInnerFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/v13/app/FragmentPagerAdapter;-><init>(Landroid/app/FragmentManager;)V

    .line 491
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 3

    .prologue
    .line 495
    const/4 v0, 0x1

    .line 496
    .local v0, "cnt":I
    iget-object v1, p0, Lcom/vkontakte/android/fragments/FriendsFragment$FriendsPagerAdapter;->this$0:Lcom/vkontakte/android/fragments/FriendsFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/FriendsFragment;->access$200(Lcom/vkontakte/android/fragments/FriendsFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/vkontakte/android/fragments/FriendsFragment$FriendsPagerAdapter;->this$0:Lcom/vkontakte/android/fragments/FriendsFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/FriendsFragment;->access$800(Lcom/vkontakte/android/fragments/FriendsFragment;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 497
    add-int/lit8 v0, v0, 0x1

    .line 498
    :cond_0
    iget-object v1, p0, Lcom/vkontakte/android/fragments/FriendsFragment$FriendsPagerAdapter;->this$0:Lcom/vkontakte/android/fragments/FriendsFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/FriendsFragment;->access$900(Lcom/vkontakte/android/fragments/FriendsFragment;)I

    move-result v1

    sget v2, Lcom/vkontakte/android/Global;->uid:I

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/vkontakte/android/fragments/FriendsFragment$FriendsPagerAdapter;->this$0:Lcom/vkontakte/android/fragments/FriendsFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/FriendsFragment;->access$2200(Lcom/vkontakte/android/fragments/FriendsFragment;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/vkontakte/android/fragments/FriendsFragment$FriendsPagerAdapter;->this$0:Lcom/vkontakte/android/fragments/FriendsFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/FriendsFragment;->access$1700(Lcom/vkontakte/android/fragments/FriendsFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 499
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 500
    :cond_3
    return v0
.end method

.method public getItem(I)Landroid/app/Fragment;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 526
    packed-switch p1, :pswitch_data_0

    .line 537
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 528
    :pswitch_0
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendsFragment$FriendsPagerAdapter;->this$0:Lcom/vkontakte/android/fragments/FriendsFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/FriendsFragment;->access$300(Lcom/vkontakte/android/fragments/FriendsFragment;)Lcom/vkontakte/android/fragments/FriendListFragment;

    move-result-object v0

    goto :goto_0

    .line 530
    :pswitch_1
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendsFragment$FriendsPagerAdapter;->this$0:Lcom/vkontakte/android/fragments/FriendsFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/FriendsFragment;->access$200(Lcom/vkontakte/android/fragments/FriendsFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 531
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendsFragment$FriendsPagerAdapter;->this$0:Lcom/vkontakte/android/fragments/FriendsFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/FriendsFragment;->access$900(Lcom/vkontakte/android/fragments/FriendsFragment;)I

    move-result v0

    sget v1, Lcom/vkontakte/android/Global;->uid:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendsFragment$FriendsPagerAdapter;->this$0:Lcom/vkontakte/android/fragments/FriendsFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/FriendsFragment;->access$1100(Lcom/vkontakte/android/fragments/FriendsFragment;)Lcom/vkontakte/android/fragments/FriendRequestsFragment;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendsFragment$FriendsPagerAdapter;->this$0:Lcom/vkontakte/android/fragments/FriendsFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/FriendsFragment;->access$1800(Lcom/vkontakte/android/fragments/FriendsFragment;)Lcom/vkontakte/android/fragments/FriendListFragment;

    move-result-object v0

    goto :goto_0

    .line 533
    :cond_1
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendsFragment$FriendsPagerAdapter;->this$0:Lcom/vkontakte/android/fragments/FriendsFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/FriendsFragment;->access$500(Lcom/vkontakte/android/fragments/FriendsFragment;)Lcom/vkontakte/android/fragments/FriendListFragment;

    move-result-object v0

    goto :goto_0

    .line 535
    :pswitch_2
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendsFragment$FriendsPagerAdapter;->this$0:Lcom/vkontakte/android/fragments/FriendsFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/FriendsFragment;->access$900(Lcom/vkontakte/android/fragments/FriendsFragment;)I

    move-result v0

    sget v1, Lcom/vkontakte/android/Global;->uid:I

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendsFragment$FriendsPagerAdapter;->this$0:Lcom/vkontakte/android/fragments/FriendsFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/FriendsFragment;->access$1100(Lcom/vkontakte/android/fragments/FriendsFragment;)Lcom/vkontakte/android/fragments/FriendRequestsFragment;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendsFragment$FriendsPagerAdapter;->this$0:Lcom/vkontakte/android/fragments/FriendsFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/FriendsFragment;->access$1800(Lcom/vkontakte/android/fragments/FriendsFragment;)Lcom/vkontakte/android/fragments/FriendListFragment;

    move-result-object v0

    goto :goto_0

    .line 526
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getItemId(I)J
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 554
    invoke-virtual {p0, p1}, Lcom/vkontakte/android/fragments/FriendsFragment$FriendsPagerAdapter;->getItem(I)Landroid/app/Fragment;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Fragment;->hashCode()I

    move-result v0

    .line 555
    .local v0, "hash":I
    int-to-long v1, v0

    return-wide v1
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 3
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x2

    const/4 v1, 0x1

    .line 541
    iget-object v2, p0, Lcom/vkontakte/android/fragments/FriendsFragment$FriendsPagerAdapter;->this$0:Lcom/vkontakte/android/fragments/FriendsFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/FriendsFragment;->access$300(Lcom/vkontakte/android/fragments/FriendsFragment;)Lcom/vkontakte/android/fragments/FriendListFragment;

    move-result-object v2

    if-ne p1, v2, :cond_1

    .line 542
    const/4 v0, 0x0

    .line 549
    :cond_0
    :goto_0
    return v0

    .line 543
    :cond_1
    iget-object v2, p0, Lcom/vkontakte/android/fragments/FriendsFragment$FriendsPagerAdapter;->this$0:Lcom/vkontakte/android/fragments/FriendsFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/FriendsFragment;->access$500(Lcom/vkontakte/android/fragments/FriendsFragment;)Lcom/vkontakte/android/fragments/FriendListFragment;

    move-result-object v2

    if-ne p1, v2, :cond_2

    move v0, v1

    .line 544
    goto :goto_0

    .line 545
    :cond_2
    iget-object v2, p0, Lcom/vkontakte/android/fragments/FriendsFragment$FriendsPagerAdapter;->this$0:Lcom/vkontakte/android/fragments/FriendsFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/FriendsFragment;->access$1800(Lcom/vkontakte/android/fragments/FriendsFragment;)Lcom/vkontakte/android/fragments/FriendListFragment;

    move-result-object v2

    if-eq p1, v2, :cond_0

    .line 547
    iget-object v2, p0, Lcom/vkontakte/android/fragments/FriendsFragment$FriendsPagerAdapter;->this$0:Lcom/vkontakte/android/fragments/FriendsFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/FriendsFragment;->access$1100(Lcom/vkontakte/android/fragments/FriendsFragment;)Lcom/vkontakte/android/fragments/FriendRequestsFragment;

    move-result-object v2

    if-ne p1, v2, :cond_3

    .line 548
    iget-object v2, p0, Lcom/vkontakte/android/fragments/FriendsFragment$FriendsPagerAdapter;->this$0:Lcom/vkontakte/android/fragments/FriendsFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/FriendsFragment;->access$200(Lcom/vkontakte/android/fragments/FriendsFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 549
    :cond_3
    const/4 v0, -0x2

    goto :goto_0
.end method

.method public getPageBadgeValue(I)Ljava/lang/String;
    .locals 6
    .param p1, "position"    # I

    .prologue
    const v5, 0xf4240

    const/16 v4, 0x3e8

    const/4 v2, 0x1

    .line 510
    iget-object v1, p0, Lcom/vkontakte/android/fragments/FriendsFragment$FriendsPagerAdapter;->this$0:Lcom/vkontakte/android/fragments/FriendsFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/FriendsFragment;->access$200(Lcom/vkontakte/android/fragments/FriendsFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/vkontakte/android/fragments/FriendsFragment$FriendsPagerAdapter;->this$0:Lcom/vkontakte/android/fragments/FriendsFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/FriendsFragment;->access$800(Lcom/vkontakte/android/fragments/FriendsFragment;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    :goto_0
    if-ne p1, v1, :cond_3

    sget v1, Lcom/vkontakte/android/Global;->uid:I

    iget-object v3, p0, Lcom/vkontakte/android/fragments/FriendsFragment$FriendsPagerAdapter;->this$0:Lcom/vkontakte/android/fragments/FriendsFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/FriendsFragment;->access$900(Lcom/vkontakte/android/fragments/FriendsFragment;)I

    move-result v3

    if-ne v1, v3, :cond_3

    sget v1, Lcom/vkontakte/android/LongPollService;->numFriendRequests:I

    if-lez v1, :cond_3

    .line 511
    sget v0, Lcom/vkontakte/android/LongPollService;->numFriendRequests:I

    .line 512
    .local v0, "cnt":I
    if-ge v0, v4, :cond_1

    .line 513
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 520
    .end local v0    # "cnt":I
    :goto_1
    return-object v1

    :cond_0
    move v1, v2

    .line 510
    goto :goto_0

    .line 514
    .restart local v0    # "cnt":I
    :cond_1
    if-lt v0, v4, :cond_2

    if-ge v0, v5, :cond_2

    .line 515
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    div-int/lit16 v2, v0, 0x3e8

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "K"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 516
    :cond_2
    if-lt v0, v5, :cond_3

    .line 517
    const-string v1, "%.1fM"

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    int-to-float v4, v0

    const v5, 0x49742400    # 1000000.0f

    div-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 520
    .end local v0    # "cnt":I
    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "pos"    # I

    .prologue
    .line 504
    iget-object v1, p0, Lcom/vkontakte/android/fragments/FriendsFragment$FriendsPagerAdapter;->this$0:Lcom/vkontakte/android/fragments/FriendsFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/FriendsFragment;->access$2300(Lcom/vkontakte/android/fragments/FriendsFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    iget-object v1, p0, Lcom/vkontakte/android/fragments/FriendsFragment$FriendsPagerAdapter;->this$0:Lcom/vkontakte/android/fragments/FriendsFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/FriendsFragment;->access$2300(Lcom/vkontakte/android/fragments/FriendsFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    move-object v0, v1

    .line 505
    .local v0, "res":Ljava/lang/CharSequence;
    :goto_0
    return-object v0

    .line 504
    .end local v0    # "res":Ljava/lang/CharSequence;
    :cond_0
    const-string v0, ""

    goto :goto_0
.end method
