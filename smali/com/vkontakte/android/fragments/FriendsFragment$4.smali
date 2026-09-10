.class Lcom/vkontakte/android/fragments/FriendsFragment$4;
.super Ljava/lang/Object;
.source "FriendsFragment.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/FriendsFragment;->onAttach(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/FriendsFragment;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/FriendsFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/fragments/FriendsFragment$4;->this$0:Lcom/vkontakte/android/fragments/FriendsFragment;

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "arg0"    # I

    .prologue
    .line 176
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "arg0"    # I
    .param p2, "arg1"    # F
    .param p3, "arg2"    # I

    .prologue
    .line 170
    return-void
.end method

.method public onPageSelected(I)V
    .locals 2
    .param p1, "pos"    # I

    .prologue
    .line 159
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendsFragment$4;->this$0:Lcom/vkontakte/android/fragments/FriendsFragment;

    invoke-static {v0, p1}, Lcom/vkontakte/android/fragments/FriendsFragment;->access$13(Lcom/vkontakte/android/fragments/FriendsFragment;I)V

    .line 160
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendsFragment$4;->this$0:Lcom/vkontakte/android/fragments/FriendsFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/FriendsFragment;->access$6(Lcom/vkontakte/android/fragments/FriendsFragment;)I

    move-result v0

    sget v1, Lcom/vkontakte/android/Global;->uid:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendsFragment$4;->this$0:Lcom/vkontakte/android/fragments/FriendsFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/FriendsFragment;->access$14(Lcom/vkontakte/android/fragments/FriendsFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendsFragment$4;->this$0:Lcom/vkontakte/android/fragments/FriendsFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/FriendsFragment;->access$9(Lcom/vkontakte/android/fragments/FriendsFragment;)Lcom/vkontakte/android/FriendRequestsView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/FriendRequestsView;->loadData()V

    .line 162
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendsFragment$4;->this$0:Lcom/vkontakte/android/fragments/FriendsFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/vkontakte/android/fragments/FriendsFragment;->access$15(Lcom/vkontakte/android/fragments/FriendsFragment;Z)V

    .line 164
    :cond_0
    return-void
.end method
