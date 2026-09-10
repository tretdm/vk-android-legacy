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
    .line 417
    iput-object p1, p0, Lcom/vkontakte/android/fragments/FriendsFragment$10;->this$0:Lcom/vkontakte/android/fragments/FriendsFragment;

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

    invoke-static {v0}, Lcom/vkontakte/android/fragments/FriendsFragment;->access$2100(Lcom/vkontakte/android/fragments/FriendsFragment;)Lcom/vkontakte/android/ui/ErrorView;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/vkontakte/android/ui/ErrorView;->setErrorInfo(ILjava/lang/String;)V

    .line 445
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendsFragment$10;->this$0:Lcom/vkontakte/android/fragments/FriendsFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/FriendsFragment;->access$2100(Lcom/vkontakte/android/fragments/FriendsFragment;)Lcom/vkontakte/android/ui/ErrorView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1, v2}, Lcom/vkontakte/android/Global;->showViewAnimated(Landroid/view/View;ZI)V

    .line 446
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendsFragment$10;->this$0:Lcom/vkontakte/android/fragments/FriendsFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/FriendsFragment;->access$1500(Lcom/vkontakte/android/fragments/FriendsFragment;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/vkontakte/android/Global;->showViewAnimated(Landroid/view/View;ZI)V

    .line 447
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendsFragment$10;->this$0:Lcom/vkontakte/android/fragments/FriendsFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/fragments/FriendsFragment;->access$2002(Lcom/vkontakte/android/fragments/FriendsFragment;Lcom/vkontakte/android/APIRequest;)Lcom/vkontakte/android/APIRequest;

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
    iget-object v2, p0, Lcom/vkontakte/android/fragments/FriendsFragment$10;->this$0:Lcom/vkontakte/android/fragments/FriendsFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/FriendsFragment;->access$200(Lcom/vkontakte/android/fragments/FriendsFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 421
    iget-object v2, p0, Lcom/vkontakte/android/fragments/FriendsFragment$10;->this$0:Lcom/vkontakte/android/fragments/FriendsFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/FriendsFragment;->access$200(Lcom/vkontakte/android/fragments/FriendsFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 422
    iget-object v2, p0, Lcom/vkontakte/android/fragments/FriendsFragment$10;->this$0:Lcom/vkontakte/android/fragments/FriendsFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/FriendsFragment;->access$300(Lcom/vkontakte/android/fragments/FriendsFragment;)Lcom/vkontakte/android/fragments/FriendListFragment;

    move-result-object v2

    iget-object v3, p0, Lcom/vkontakte/android/fragments/FriendsFragment$10;->this$0:Lcom/vkontakte/android/fragments/FriendsFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/FriendsFragment;->access$200(Lcom/vkontakte/android/fragments/FriendsFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v2, v3, v4, v4}, Lcom/vkontakte/android/fragments/FriendListFragment;->setData(Ljava/util/ArrayList;ZZ)V

    .line 423
    iget-object v2, p0, Lcom/vkontakte/android/fragments/FriendsFragment$10;->this$0:Lcom/vkontakte/android/fragments/FriendsFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/FriendsFragment;->access$500(Lcom/vkontakte/android/fragments/FriendsFragment;)Lcom/vkontakte/android/fragments/FriendListFragment;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/vkontakte/android/fragments/FriendListFragment;->setShowOnline(Z)V

    .line 424
    iget-object v2, p0, Lcom/vkontakte/android/fragments/FriendsFragment$10;->this$0:Lcom/vkontakte/android/fragments/FriendsFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/FriendsFragment;->access$500(Lcom/vkontakte/android/fragments/FriendsFragment;)Lcom/vkontakte/android/fragments/FriendListFragment;

    move-result-object v2

    iget-object v3, p0, Lcom/vkontakte/android/fragments/FriendsFragment$10;->this$0:Lcom/vkontakte/android/fragments/FriendsFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/FriendsFragment;->access$200(Lcom/vkontakte/android/fragments/FriendsFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v2, v3, v4, v4}, Lcom/vkontakte/android/fragments/FriendListFragment;->setData(Ljava/util/ArrayList;ZZ)V

    .line 425
    iget-object v2, p0, Lcom/vkontakte/android/fragments/FriendsFragment$10;->this$0:Lcom/vkontakte/android/fragments/FriendsFragment;

    invoke-static {v2, v4}, Lcom/vkontakte/android/fragments/FriendsFragment;->access$402(Lcom/vkontakte/android/fragments/FriendsFragment;I)I

    .line 426
    iget-object v2, p0, Lcom/vkontakte/android/fragments/FriendsFragment$10;->this$0:Lcom/vkontakte/android/fragments/FriendsFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/FriendsFragment;->access$200(Lcom/vkontakte/android/fragments/FriendsFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/UserProfile;

    .line 427
    .local v1, "u":Lcom/vkontakte/android/UserProfile;
    iget v2, v1, Lcom/vkontakte/android/UserProfile;->online:I

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/vkontakte/android/fragments/FriendsFragment$10;->this$0:Lcom/vkontakte/android/fragments/FriendsFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/FriendsFragment;->access$408(Lcom/vkontakte/android/fragments/FriendsFragment;)I

    goto :goto_0

    .line 429
    .end local v1    # "u":Lcom/vkontakte/android/UserProfile;
    :cond_1
    iget-object v2, p0, Lcom/vkontakte/android/fragments/FriendsFragment$10;->this$0:Lcom/vkontakte/android/fragments/FriendsFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/FriendsFragment;->access$1700(Lcom/vkontakte/android/fragments/FriendsFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 430
    iget-object v2, p0, Lcom/vkontakte/android/fragments/FriendsFragment$10;->this$0:Lcom/vkontakte/android/fragments/FriendsFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/FriendsFragment;->access$200(Lcom/vkontakte/android/fragments/FriendsFragment;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/vkontakte/android/fragments/FriendsFragment$10;->this$0:Lcom/vkontakte/android/fragments/FriendsFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/FriendsFragment;->access$1700(Lcom/vkontakte/android/fragments/FriendsFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vkontakte/android/data/Friends;->intersect(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 431
    iget-object v2, p0, Lcom/vkontakte/android/fragments/FriendsFragment$10;->this$0:Lcom/vkontakte/android/fragments/FriendsFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/FriendsFragment;->access$1800(Lcom/vkontakte/android/fragments/FriendsFragment;)Lcom/vkontakte/android/fragments/FriendListFragment;

    move-result-object v2

    iget-object v3, p0, Lcom/vkontakte/android/fragments/FriendsFragment$10;->this$0:Lcom/vkontakte/android/fragments/FriendsFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/FriendsFragment;->access$1700(Lcom/vkontakte/android/fragments/FriendsFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v2, v3, v4, v4}, Lcom/vkontakte/android/fragments/FriendListFragment;->setData(Ljava/util/ArrayList;ZZ)V

    .line 432
    iget-object v2, p0, Lcom/vkontakte/android/fragments/FriendsFragment$10;->this$0:Lcom/vkontakte/android/fragments/FriendsFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/FriendsFragment;->access$100(Lcom/vkontakte/android/fragments/FriendsFragment;)V

    .line 433
    iget-object v2, p0, Lcom/vkontakte/android/fragments/FriendsFragment$10;->this$0:Lcom/vkontakte/android/fragments/FriendsFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/FriendsFragment;->access$1500(Lcom/vkontakte/android/fragments/FriendsFragment;)Landroid/widget/ProgressBar;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v2

    if-nez v2, :cond_2

    .line 434
    iget-object v2, p0, Lcom/vkontakte/android/fragments/FriendsFragment$10;->this$0:Lcom/vkontakte/android/fragments/FriendsFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/FriendsFragment;->access$1600(Lcom/vkontakte/android/fragments/FriendsFragment;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-static {v2, v5, v6}, Lcom/vkontakte/android/Global;->showViewAnimated(Landroid/view/View;ZI)V

    .line 435
    iget-object v2, p0, Lcom/vkontakte/android/fragments/FriendsFragment$10;->this$0:Lcom/vkontakte/android/fragments/FriendsFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/FriendsFragment;->access$1500(Lcom/vkontakte/android/fragments/FriendsFragment;)Landroid/widget/ProgressBar;

    move-result-object v2

    invoke-static {v2, v4, v6}, Lcom/vkontakte/android/Global;->showViewAnimated(Landroid/view/View;ZI)V

    .line 437
    :cond_2
    iget-object v2, p0, Lcom/vkontakte/android/fragments/FriendsFragment$10;->this$0:Lcom/vkontakte/android/fragments/FriendsFragment;

    invoke-virtual {v2}, Lcom/vkontakte/android/fragments/FriendsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "mutual"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/vkontakte/android/fragments/FriendsFragment$10;->this$0:Lcom/vkontakte/android/fragments/FriendsFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/FriendsFragment;->access$1900(Lcom/vkontakte/android/fragments/FriendsFragment;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/vkontakte/android/fragments/FriendsFragment$10;->this$0:Lcom/vkontakte/android/fragments/FriendsFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/FriendsFragment;->access$1300(Lcom/vkontakte/android/fragments/FriendsFragment;)Landroid/support/v4/view/ViewPager;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3, v4}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 438
    :cond_3
    iget-object v2, p0, Lcom/vkontakte/android/fragments/FriendsFragment$10;->this$0:Lcom/vkontakte/android/fragments/FriendsFragment;

    invoke-static {v2, v4}, Lcom/vkontakte/android/fragments/FriendsFragment;->access$1902(Lcom/vkontakte/android/fragments/FriendsFragment;Z)Z

    .line 439
    iget-object v2, p0, Lcom/vkontakte/android/fragments/FriendsFragment$10;->this$0:Lcom/vkontakte/android/fragments/FriendsFragment;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/vkontakte/android/fragments/FriendsFragment;->access$2002(Lcom/vkontakte/android/fragments/FriendsFragment;Lcom/vkontakte/android/APIRequest;)Lcom/vkontakte/android/APIRequest;

    .line 440
    return-void
.end method
