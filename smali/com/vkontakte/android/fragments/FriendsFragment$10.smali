.class Lcom/vkontakte/android/fragments/FriendsFragment$10;
.super Ljava/lang/Object;
.source "FriendsFragment.java"

# interfaces
.implements Lcom/vkontakte/android/api/FriendsGet$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/FriendsFragment;->update()V
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
    iput-object p1, p0, Lcom/vkontakte/android/fragments/FriendsFragment$10;->this$0:Lcom/vkontakte/android/fragments/FriendsFragment;

    .line 417
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 3
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    const/16 v2, 0x12c

    .line 444
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendsFragment$10;->this$0:Lcom/vkontakte/android/fragments/FriendsFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/FriendsFragment;->access$27(Lcom/vkontakte/android/fragments/FriendsFragment;)Lcom/vkontakte/android/ui/ErrorView;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/vkontakte/android/ui/ErrorView;->setErrorInfo(ILjava/lang/String;)V

    .line 445
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendsFragment$10;->this$0:Lcom/vkontakte/android/fragments/FriendsFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/FriendsFragment;->access$27(Lcom/vkontakte/android/fragments/FriendsFragment;)Lcom/vkontakte/android/ui/ErrorView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1, v2}, Lcom/vkontakte/android/Global;->showViewAnimated(Landroid/view/View;ZI)V

    .line 446
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendsFragment$10;->this$0:Lcom/vkontakte/android/fragments/FriendsFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/FriendsFragment;->access$22(Lcom/vkontakte/android/fragments/FriendsFragment;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/vkontakte/android/Global;->showViewAnimated(Landroid/view/View;ZI)V

    .line 447
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendsFragment$10;->this$0:Lcom/vkontakte/android/fragments/FriendsFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/fragments/FriendsFragment;->access$26(Lcom/vkontakte/android/fragments/FriendsFragment;Lcom/vkontakte/android/APIRequest;)V

    .line 448
    return-void
.end method

.method public success(Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/UserProfile;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    const/16 v6, 0x12c

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 420
    iget-object v1, p0, Lcom/vkontakte/android/fragments/FriendsFragment$10;->this$0:Lcom/vkontakte/android/fragments/FriendsFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/FriendsFragment;->access$2(Lcom/vkontakte/android/fragments/FriendsFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 421
    iget-object v1, p0, Lcom/vkontakte/android/fragments/FriendsFragment$10;->this$0:Lcom/vkontakte/android/fragments/FriendsFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/FriendsFragment;->access$2(Lcom/vkontakte/android/fragments/FriendsFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 422
    iget-object v1, p0, Lcom/vkontakte/android/fragments/FriendsFragment$10;->this$0:Lcom/vkontakte/android/fragments/FriendsFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/FriendsFragment;->access$11(Lcom/vkontakte/android/fragments/FriendsFragment;)Lcom/vkontakte/android/fragments/FriendListFragment;

    move-result-object v1

    iget-object v2, p0, Lcom/vkontakte/android/fragments/FriendsFragment$10;->this$0:Lcom/vkontakte/android/fragments/FriendsFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/FriendsFragment;->access$2(Lcom/vkontakte/android/fragments/FriendsFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2, v4, v4}, Lcom/vkontakte/android/fragments/FriendListFragment;->setData(Ljava/util/ArrayList;ZZ)V

    .line 423
    iget-object v1, p0, Lcom/vkontakte/android/fragments/FriendsFragment$10;->this$0:Lcom/vkontakte/android/fragments/FriendsFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/FriendsFragment;->access$5(Lcom/vkontakte/android/fragments/FriendsFragment;)Lcom/vkontakte/android/fragments/FriendListFragment;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/vkontakte/android/fragments/FriendListFragment;->setShowOnline(Z)V

    .line 424
    iget-object v1, p0, Lcom/vkontakte/android/fragments/FriendsFragment$10;->this$0:Lcom/vkontakte/android/fragments/FriendsFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/FriendsFragment;->access$5(Lcom/vkontakte/android/fragments/FriendsFragment;)Lcom/vkontakte/android/fragments/FriendListFragment;

    move-result-object v1

    iget-object v2, p0, Lcom/vkontakte/android/fragments/FriendsFragment$10;->this$0:Lcom/vkontakte/android/fragments/FriendsFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/FriendsFragment;->access$2(Lcom/vkontakte/android/fragments/FriendsFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2, v4, v4}, Lcom/vkontakte/android/fragments/FriendListFragment;->setData(Ljava/util/ArrayList;ZZ)V

    .line 425
    iget-object v1, p0, Lcom/vkontakte/android/fragments/FriendsFragment$10;->this$0:Lcom/vkontakte/android/fragments/FriendsFragment;

    invoke-static {v1, v4}, Lcom/vkontakte/android/fragments/FriendsFragment;->access$3(Lcom/vkontakte/android/fragments/FriendsFragment;I)V

    .line 426
    iget-object v1, p0, Lcom/vkontakte/android/fragments/FriendsFragment$10;->this$0:Lcom/vkontakte/android/fragments/FriendsFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/FriendsFragment;->access$2(Lcom/vkontakte/android/fragments/FriendsFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_3

    .line 429
    iget-object v1, p0, Lcom/vkontakte/android/fragments/FriendsFragment$10;->this$0:Lcom/vkontakte/android/fragments/FriendsFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/FriendsFragment;->access$9(Lcom/vkontakte/android/fragments/FriendsFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 430
    iget-object v1, p0, Lcom/vkontakte/android/fragments/FriendsFragment$10;->this$0:Lcom/vkontakte/android/fragments/FriendsFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/FriendsFragment;->access$2(Lcom/vkontakte/android/fragments/FriendsFragment;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/vkontakte/android/fragments/FriendsFragment$10;->this$0:Lcom/vkontakte/android/fragments/FriendsFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/FriendsFragment;->access$9(Lcom/vkontakte/android/fragments/FriendsFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vkontakte/android/data/Friends;->intersect(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 431
    iget-object v1, p0, Lcom/vkontakte/android/fragments/FriendsFragment$10;->this$0:Lcom/vkontakte/android/fragments/FriendsFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/FriendsFragment;->access$13(Lcom/vkontakte/android/fragments/FriendsFragment;)Lcom/vkontakte/android/fragments/FriendListFragment;

    move-result-object v1

    iget-object v2, p0, Lcom/vkontakte/android/fragments/FriendsFragment$10;->this$0:Lcom/vkontakte/android/fragments/FriendsFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/FriendsFragment;->access$9(Lcom/vkontakte/android/fragments/FriendsFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2, v4, v4}, Lcom/vkontakte/android/fragments/FriendListFragment;->setData(Ljava/util/ArrayList;ZZ)V

    .line 432
    iget-object v1, p0, Lcom/vkontakte/android/fragments/FriendsFragment$10;->this$0:Lcom/vkontakte/android/fragments/FriendsFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/FriendsFragment;->access$1(Lcom/vkontakte/android/fragments/FriendsFragment;)V

    .line 433
    iget-object v1, p0, Lcom/vkontakte/android/fragments/FriendsFragment$10;->this$0:Lcom/vkontakte/android/fragments/FriendsFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/FriendsFragment;->access$22(Lcom/vkontakte/android/fragments/FriendsFragment;)Landroid/widget/ProgressBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 434
    iget-object v1, p0, Lcom/vkontakte/android/fragments/FriendsFragment$10;->this$0:Lcom/vkontakte/android/fragments/FriendsFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/FriendsFragment;->access$23(Lcom/vkontakte/android/fragments/FriendsFragment;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-static {v1, v5, v6}, Lcom/vkontakte/android/Global;->showViewAnimated(Landroid/view/View;ZI)V

    .line 435
    iget-object v1, p0, Lcom/vkontakte/android/fragments/FriendsFragment$10;->this$0:Lcom/vkontakte/android/fragments/FriendsFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/FriendsFragment;->access$22(Lcom/vkontakte/android/fragments/FriendsFragment;)Landroid/widget/ProgressBar;

    move-result-object v1

    invoke-static {v1, v4, v6}, Lcom/vkontakte/android/Global;->showViewAnimated(Landroid/view/View;ZI)V

    .line 437
    :cond_1
    iget-object v1, p0, Lcom/vkontakte/android/fragments/FriendsFragment$10;->this$0:Lcom/vkontakte/android/fragments/FriendsFragment;

    invoke-virtual {v1}, Lcom/vkontakte/android/fragments/FriendsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "mutual"

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/vkontakte/android/fragments/FriendsFragment$10;->this$0:Lcom/vkontakte/android/fragments/FriendsFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/FriendsFragment;->access$24(Lcom/vkontakte/android/fragments/FriendsFragment;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/vkontakte/android/fragments/FriendsFragment$10;->this$0:Lcom/vkontakte/android/fragments/FriendsFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/FriendsFragment;->access$20(Lcom/vkontakte/android/fragments/FriendsFragment;)Landroid/support/v4/view/ViewPager;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v4}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 438
    :cond_2
    iget-object v1, p0, Lcom/vkontakte/android/fragments/FriendsFragment$10;->this$0:Lcom/vkontakte/android/fragments/FriendsFragment;

    invoke-static {v1, v4}, Lcom/vkontakte/android/fragments/FriendsFragment;->access$25(Lcom/vkontakte/android/fragments/FriendsFragment;Z)V

    .line 439
    iget-object v1, p0, Lcom/vkontakte/android/fragments/FriendsFragment$10;->this$0:Lcom/vkontakte/android/fragments/FriendsFragment;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/vkontakte/android/fragments/FriendsFragment;->access$26(Lcom/vkontakte/android/fragments/FriendsFragment;Lcom/vkontakte/android/APIRequest;)V

    .line 440
    return-void

    .line 426
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/UserProfile;

    .line 427
    .local v0, "u":Lcom/vkontakte/android/UserProfile;
    iget v2, v0, Lcom/vkontakte/android/UserProfile;->online:I

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/vkontakte/android/fragments/FriendsFragment$10;->this$0:Lcom/vkontakte/android/fragments/FriendsFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/FriendsFragment;->access$4(Lcom/vkontakte/android/fragments/FriendsFragment;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v2, v3}, Lcom/vkontakte/android/fragments/FriendsFragment;->access$3(Lcom/vkontakte/android/fragments/FriendsFragment;I)V

    goto/16 :goto_0
.end method
