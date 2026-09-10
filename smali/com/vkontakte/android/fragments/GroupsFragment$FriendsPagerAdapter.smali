.class Lcom/vkontakte/android/fragments/GroupsFragment$FriendsPagerAdapter;
.super Landroid/support/v4/app/FragmentPagerAdapter;
.source "GroupsFragment.java"

# interfaces
.implements Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip$BadgeTabProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/fragments/GroupsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FriendsPagerAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/GroupsFragment;


# direct methods
.method public constructor <init>(Lcom/vkontakte/android/fragments/GroupsFragment;)V
    .locals 1

    .prologue
    .line 407
    iput-object p1, p0, Lcom/vkontakte/android/fragments/GroupsFragment$FriendsPagerAdapter;->this$0:Lcom/vkontakte/android/fragments/GroupsFragment;

    .line 408
    invoke-virtual {p1}, Lcom/vkontakte/android/fragments/GroupsFragment;->getInnerFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/v4/app/FragmentPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 409
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 2

    .prologue
    .line 413
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GroupsFragment$FriendsPagerAdapter;->this$0:Lcom/vkontakte/android/fragments/GroupsFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/GroupsFragment;->access$5(Lcom/vkontakte/android/fragments/GroupsFragment;)I

    move-result v0

    sget v1, Lcom/vkontakte/android/Global;->uid:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/fragments/GroupsFragment$FriendsPagerAdapter;->this$0:Lcom/vkontakte/android/fragments/GroupsFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/GroupsFragment;->access$6(Lcom/vkontakte/android/fragments/GroupsFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/fragments/GroupsFragment$FriendsPagerAdapter;->this$0:Lcom/vkontakte/android/fragments/GroupsFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/GroupsFragment;->access$3(Lcom/vkontakte/android/fragments/GroupsFragment;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x3

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .locals 1
    .param p1, "pos"    # I

    .prologue
    .line 422
    packed-switch p1, :pswitch_data_0

    .line 430
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 424
    :pswitch_0
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GroupsFragment$FriendsPagerAdapter;->this$0:Lcom/vkontakte/android/fragments/GroupsFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/GroupsFragment;->access$8(Lcom/vkontakte/android/fragments/GroupsFragment;)Lcom/vkontakte/android/fragments/GroupListFragment;

    move-result-object v0

    goto :goto_0

    .line 426
    :pswitch_1
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GroupsFragment$FriendsPagerAdapter;->this$0:Lcom/vkontakte/android/fragments/GroupsFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/GroupsFragment;->access$9(Lcom/vkontakte/android/fragments/GroupsFragment;)Lcom/vkontakte/android/fragments/GroupListFragment;

    move-result-object v0

    goto :goto_0

    .line 428
    :pswitch_2
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GroupsFragment$FriendsPagerAdapter;->this$0:Lcom/vkontakte/android/fragments/GroupsFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/GroupsFragment;->access$10(Lcom/vkontakte/android/fragments/GroupsFragment;)Lcom/vkontakte/android/fragments/GroupInvitationsFragment;

    move-result-object v0

    goto :goto_0

    .line 422
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
    .line 450
    invoke-virtual {p0, p1}, Lcom/vkontakte/android/fragments/GroupsFragment$FriendsPagerAdapter;->getItem(I)Landroid/support/v4/app/Fragment;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->hashCode()I

    move-result v0

    .line 451
    .local v0, "hash":I
    int-to-long v1, v0

    return-wide v1
.end method

.method public getPageBadgeValue(I)Ljava/lang/String;
    .locals 6
    .param p1, "position"    # I

    .prologue
    const v4, 0xf4240

    const/16 v3, 0x3e8

    .line 435
    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    sget v1, Lcom/vkontakte/android/Global;->uid:I

    iget-object v2, p0, Lcom/vkontakte/android/fragments/GroupsFragment$FriendsPagerAdapter;->this$0:Lcom/vkontakte/android/fragments/GroupsFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/GroupsFragment;->access$5(Lcom/vkontakte/android/fragments/GroupsFragment;)I

    move-result v2

    if-ne v1, v2, :cond_2

    sget v1, Lcom/vkontakte/android/LongPollService;->numGroupInvitations:I

    if-lez v1, :cond_2

    .line 436
    sget v0, Lcom/vkontakte/android/LongPollService;->numGroupInvitations:I

    .line 437
    .local v0, "cnt":I
    if-ge v0, v3, :cond_0

    .line 438
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 445
    .end local v0    # "cnt":I
    :goto_0
    return-object v1

    .line 439
    .restart local v0    # "cnt":I
    :cond_0
    if-lt v0, v3, :cond_1

    if-ge v0, v4, :cond_1

    .line 440
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

    .line 441
    :cond_1
    if-lt v0, v4, :cond_2

    .line 442
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

    .line 445
    .end local v0    # "cnt":I
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "pos"    # I

    .prologue
    .line 417
    iget-object v1, p0, Lcom/vkontakte/android/fragments/GroupsFragment$FriendsPagerAdapter;->this$0:Lcom/vkontakte/android/fragments/GroupsFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/GroupsFragment;->access$7(Lcom/vkontakte/android/fragments/GroupsFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    iget-object v1, p0, Lcom/vkontakte/android/fragments/GroupsFragment$FriendsPagerAdapter;->this$0:Lcom/vkontakte/android/fragments/GroupsFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/GroupsFragment;->access$7(Lcom/vkontakte/android/fragments/GroupsFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    move-object v0, v1

    .line 418
    .local v0, "res":Ljava/lang/CharSequence;
    :goto_0
    return-object v0

    .line 417
    .end local v0    # "res":Ljava/lang/CharSequence;
    :cond_0
    const-string v0, ""

    goto :goto_0
.end method
