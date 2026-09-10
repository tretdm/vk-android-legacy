.class Lcom/vkontakte/android/fragments/FriendsFragment$FriendsPagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
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
.method private constructor <init>(Lcom/vkontakte/android/fragments/FriendsFragment;)V
    .locals 0

    .prologue
    .line 398
    iput-object p1, p0, Lcom/vkontakte/android/fragments/FriendsFragment$FriendsPagerAdapter;->this$0:Lcom/vkontakte/android/fragments/FriendsFragment;

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkontakte/android/fragments/FriendsFragment;Lcom/vkontakte/android/fragments/FriendsFragment$FriendsPagerAdapter;)V
    .locals 0

    .prologue
    .line 398
    invoke-direct {p0, p1}, Lcom/vkontakte/android/fragments/FriendsFragment$FriendsPagerAdapter;-><init>(Lcom/vkontakte/android/fragments/FriendsFragment;)V

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 3
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 432
    const/4 v0, 0x0

    .line 433
    .local v0, "v":Landroid/view/View;
    packed-switch p2, :pswitch_data_0

    .line 444
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 445
    return-void

    .line 435
    :pswitch_0
    iget-object v1, p0, Lcom/vkontakte/android/fragments/FriendsFragment$FriendsPagerAdapter;->this$0:Lcom/vkontakte/android/fragments/FriendsFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/FriendsFragment;->access$8(Lcom/vkontakte/android/fragments/FriendsFragment;)Lcom/vkontakte/android/FriendsView;

    move-result-object v0

    .line 436
    goto :goto_0

    .line 438
    :pswitch_1
    iget-object v1, p0, Lcom/vkontakte/android/fragments/FriendsFragment$FriendsPagerAdapter;->this$0:Lcom/vkontakte/android/fragments/FriendsFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/FriendsFragment;->access$5(Lcom/vkontakte/android/fragments/FriendsFragment;)Lcom/vkontakte/android/FriendsView;

    move-result-object v0

    .line 439
    goto :goto_0

    .line 441
    :pswitch_2
    iget-object v1, p0, Lcom/vkontakte/android/fragments/FriendsFragment$FriendsPagerAdapter;->this$0:Lcom/vkontakte/android/fragments/FriendsFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/FriendsFragment;->access$6(Lcom/vkontakte/android/fragments/FriendsFragment;)I

    move-result v1

    sget v2, Lcom/vkontakte/android/Global;->uid:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/vkontakte/android/fragments/FriendsFragment$FriendsPagerAdapter;->this$0:Lcom/vkontakte/android/fragments/FriendsFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/FriendsFragment;->access$9(Lcom/vkontakte/android/fragments/FriendsFragment;)Lcom/vkontakte/android/FriendRequestsView;

    move-result-object v0

    :goto_1
    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/vkontakte/android/fragments/FriendsFragment$FriendsPagerAdapter;->this$0:Lcom/vkontakte/android/fragments/FriendsFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/FriendsFragment;->access$10(Lcom/vkontakte/android/fragments/FriendsFragment;)Lcom/vkontakte/android/FriendsView;

    move-result-object v0

    goto :goto_1

    .line 433
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 401
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendsFragment$FriendsPagerAdapter;->this$0:Lcom/vkontakte/android/fragments/FriendsFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/FriendsFragment;->access$6(Lcom/vkontakte/android/fragments/FriendsFragment;)I

    move-result v0

    sget v1, Lcom/vkontakte/android/Global;->uid:I

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendsFragment$FriendsPagerAdapter;->this$0:Lcom/vkontakte/android/fragments/FriendsFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/FriendsFragment;->access$7(Lcom/vkontakte/android/fragments/FriendsFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendsFragment$FriendsPagerAdapter;->this$0:Lcom/vkontakte/android/fragments/FriendsFragment;

    invoke-virtual {v0}, Lcom/vkontakte/android/fragments/FriendsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "select"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x3

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public getPageBadgeValue(I)Ljava/lang/String;
    .locals 6
    .param p1, "position"    # I

    .prologue
    const v4, 0xf4240

    const/16 v3, 0x3e8

    .line 449
    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    sget v1, Lcom/vkontakte/android/Global;->uid:I

    iget-object v2, p0, Lcom/vkontakte/android/fragments/FriendsFragment$FriendsPagerAdapter;->this$0:Lcom/vkontakte/android/fragments/FriendsFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/FriendsFragment;->access$6(Lcom/vkontakte/android/fragments/FriendsFragment;)I

    move-result v2

    if-ne v1, v2, :cond_2

    sget v1, Lcom/vkontakte/android/LongPollService;->numFriendRequests:I

    if-lez v1, :cond_2

    .line 450
    sget v0, Lcom/vkontakte/android/LongPollService;->numFriendRequests:I

    .line 451
    .local v0, "cnt":I
    if-ge v0, v3, :cond_0

    .line 452
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 459
    .end local v0    # "cnt":I
    :goto_0
    return-object v1

    .line 453
    .restart local v0    # "cnt":I
    :cond_0
    if-lt v0, v3, :cond_1

    if-ge v0, v4, :cond_1

    .line 454
    new-instance v1, Ljava/lang/StringBuilder;

    div-int/lit16 v2, v0, 0x3e8

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "K"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 455
    :cond_1
    if-lt v0, v4, :cond_2

    .line 456
    const-string v1, "%.1fM"

    const/4 v2, 0x1

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

    goto :goto_0

    .line 459
    .end local v0    # "cnt":I
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "pos"    # I

    .prologue
    .line 427
    iget-object v1, p0, Lcom/vkontakte/android/fragments/FriendsFragment$FriendsPagerAdapter;->this$0:Lcom/vkontakte/android/fragments/FriendsFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/FriendsFragment;->access$11(Lcom/vkontakte/android/fragments/FriendsFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    iget-object v1, p0, Lcom/vkontakte/android/fragments/FriendsFragment$FriendsPagerAdapter;->this$0:Lcom/vkontakte/android/fragments/FriendsFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/FriendsFragment;->access$11(Lcom/vkontakte/android/fragments/FriendsFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    move-object v0, v1

    .line 428
    .local v0, "res":Ljava/lang/CharSequence;
    :goto_0
    return-object v0

    .line 427
    .end local v0    # "res":Ljava/lang/CharSequence;
    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 3
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    .prologue
    .line 410
    const/4 v0, 0x0

    .line 411
    .local v0, "v":Landroid/view/View;
    packed-switch p2, :pswitch_data_0

    .line 422
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 423
    return-object v0

    .line 413
    :pswitch_0
    iget-object v1, p0, Lcom/vkontakte/android/fragments/FriendsFragment$FriendsPagerAdapter;->this$0:Lcom/vkontakte/android/fragments/FriendsFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/FriendsFragment;->access$8(Lcom/vkontakte/android/fragments/FriendsFragment;)Lcom/vkontakte/android/FriendsView;

    move-result-object v0

    .line 414
    goto :goto_0

    .line 416
    :pswitch_1
    iget-object v1, p0, Lcom/vkontakte/android/fragments/FriendsFragment$FriendsPagerAdapter;->this$0:Lcom/vkontakte/android/fragments/FriendsFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/FriendsFragment;->access$5(Lcom/vkontakte/android/fragments/FriendsFragment;)Lcom/vkontakte/android/FriendsView;

    move-result-object v0

    .line 417
    goto :goto_0

    .line 419
    :pswitch_2
    iget-object v1, p0, Lcom/vkontakte/android/fragments/FriendsFragment$FriendsPagerAdapter;->this$0:Lcom/vkontakte/android/fragments/FriendsFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/FriendsFragment;->access$6(Lcom/vkontakte/android/fragments/FriendsFragment;)I

    move-result v1

    sget v2, Lcom/vkontakte/android/Global;->uid:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/vkontakte/android/fragments/FriendsFragment$FriendsPagerAdapter;->this$0:Lcom/vkontakte/android/fragments/FriendsFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/FriendsFragment;->access$9(Lcom/vkontakte/android/fragments/FriendsFragment;)Lcom/vkontakte/android/FriendRequestsView;

    move-result-object v0

    :goto_1
    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/vkontakte/android/fragments/FriendsFragment$FriendsPagerAdapter;->this$0:Lcom/vkontakte/android/fragments/FriendsFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/FriendsFragment;->access$10(Lcom/vkontakte/android/fragments/FriendsFragment;)Lcom/vkontakte/android/FriendsView;

    move-result-object v0

    goto :goto_1

    .line 411
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    .line 406
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
