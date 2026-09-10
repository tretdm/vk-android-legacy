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
    .line 173
    iput-object p1, p0, Lcom/vkontakte/android/fragments/FriendsFragment$4;->this$0:Lcom/vkontakte/android/fragments/FriendsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "arg0"    # I

    .prologue
    .line 193
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "arg0"    # I
    .param p2, "arg1"    # F
    .param p3, "arg2"    # I

    .prologue
    .line 187
    return-void
.end method

.method public onPageSelected(I)V
    .locals 3
    .param p1, "pos"    # I

    .prologue
    const/4 v1, 0x1

    .line 176
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendsFragment$4;->this$0:Lcom/vkontakte/android/fragments/FriendsFragment;

    invoke-static {v0, p1}, Lcom/vkontakte/android/fragments/FriendsFragment;->access$702(Lcom/vkontakte/android/fragments/FriendsFragment;I)I

    .line 177
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendsFragment$4;->this$0:Lcom/vkontakte/android/fragments/FriendsFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/FriendsFragment;->access$200(Lcom/vkontakte/android/fragments/FriendsFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendsFragment$4;->this$0:Lcom/vkontakte/android/fragments/FriendsFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/FriendsFragment;->access$800(Lcom/vkontakte/android/fragments/FriendsFragment;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    :goto_0
    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendsFragment$4;->this$0:Lcom/vkontakte/android/fragments/FriendsFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/FriendsFragment;->access$900(Lcom/vkontakte/android/fragments/FriendsFragment;)I

    move-result v0

    sget v2, Lcom/vkontakte/android/Global;->uid:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendsFragment$4;->this$0:Lcom/vkontakte/android/fragments/FriendsFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/FriendsFragment;->access$1000(Lcom/vkontakte/android/fragments/FriendsFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendsFragment$4;->this$0:Lcom/vkontakte/android/fragments/FriendsFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/FriendsFragment;->access$1100(Lcom/vkontakte/android/fragments/FriendsFragment;)Lcom/vkontakte/android/fragments/FriendRequestsFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->loadData()V

    .line 179
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendsFragment$4;->this$0:Lcom/vkontakte/android/fragments/FriendsFragment;

    invoke-static {v0, v1}, Lcom/vkontakte/android/fragments/FriendsFragment;->access$1002(Lcom/vkontakte/android/fragments/FriendsFragment;Z)Z

    .line 181
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 177
    goto :goto_0
.end method
