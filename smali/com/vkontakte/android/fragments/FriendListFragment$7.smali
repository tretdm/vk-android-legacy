.class Lcom/vkontakte/android/fragments/FriendListFragment$7;
.super Ljava/lang/Object;
.source "FriendListFragment.java"

# interfaces
.implements Lcom/vkontakte/android/api/UsersSearch$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/FriendListFragment;->loadMore()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/FriendListFragment;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/FriendListFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/fragments/FriendListFragment$7;->this$0:Lcom/vkontakte/android/fragments/FriendListFragment;

    .line 492
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/fragments/FriendListFragment$7;)Lcom/vkontakte/android/fragments/FriendListFragment;
    .locals 1

    .prologue
    .line 492
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendListFragment$7;->this$0:Lcom/vkontakte/android/fragments/FriendListFragment;

    return-object v0
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 2
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 524
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendListFragment$7;->this$0:Lcom/vkontakte/android/fragments/FriendListFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/fragments/FriendListFragment;->access$17(Lcom/vkontakte/android/fragments/FriendListFragment;Lcom/vkontakte/android/APIRequest;)V

    .line 525
    return-void
.end method

.method public success(Ljava/util/ArrayList;I)V
    .locals 5
    .param p2, "total"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/UserProfile;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p1, "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    const/16 v3, 0x32

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 496
    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt v0, v3, :cond_2

    .line 497
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendListFragment$7;->this$0:Lcom/vkontakte/android/fragments/FriendListFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/FriendListFragment;->access$15(Lcom/vkontakte/android/fragments/FriendListFragment;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 498
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendListFragment$7;->this$0:Lcom/vkontakte/android/fragments/FriendListFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/FriendListFragment;->access$1(Lcom/vkontakte/android/fragments/FriendListFragment;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/fragments/FriendListFragment$Section;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/FriendListFragment$Section;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 505
    :goto_0
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendListFragment$7;->this$0:Lcom/vkontakte/android/fragments/FriendListFragment;

    invoke-virtual {v0}, Lcom/vkontakte/android/fragments/FriendListFragment;->updateList()V

    .line 506
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendListFragment$7;->this$0:Lcom/vkontakte/android/fragments/FriendListFragment;

    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcom/vkontakte/android/fragments/FriendListFragment;->access$17(Lcom/vkontakte/android/fragments/FriendListFragment;Lcom/vkontakte/android/APIRequest;)V

    .line 507
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendListFragment$7;->this$0:Lcom/vkontakte/android/fragments/FriendListFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/FriendListFragment;->access$15(Lcom/vkontakte/android/fragments/FriendListFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 508
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendListFragment$7;->this$0:Lcom/vkontakte/android/fragments/FriendListFragment;

    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcom/vkontakte/android/fragments/FriendListFragment;->access$18(Lcom/vkontakte/android/fragments/FriendListFragment;Z)V

    .line 509
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendListFragment$7;->this$0:Lcom/vkontakte/android/fragments/FriendListFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/FriendListFragment;->access$7(Lcom/vkontakte/android/fragments/FriendListFragment;)V

    .line 511
    :cond_0
    iget-object v3, p0, Lcom/vkontakte/android/fragments/FriendListFragment$7;->this$0:Lcom/vkontakte/android/fragments/FriendListFragment;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    move v0, v1

    :goto_1
    invoke-static {v3, v0}, Lcom/vkontakte/android/fragments/FriendListFragment;->access$19(Lcom/vkontakte/android/fragments/FriendListFragment;Z)V

    .line 512
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendListFragment$7;->this$0:Lcom/vkontakte/android/fragments/FriendListFragment;

    invoke-virtual {v0}, Lcom/vkontakte/android/fragments/FriendListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_4

    .line 520
    :goto_2
    return-void

    .line 500
    :cond_1
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendListFragment$7;->this$0:Lcom/vkontakte/android/fragments/FriendListFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/FriendListFragment;->access$16(Lcom/vkontakte/android/fragments/FriendListFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 519
    :catch_0
    move-exception v0

    goto :goto_2

    .line 502
    :cond_2
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendListFragment$7;->this$0:Lcom/vkontakte/android/fragments/FriendListFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/FriendListFragment;->access$1(Lcom/vkontakte/android/fragments/FriendListFragment;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/fragments/FriendListFragment$Section;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/FriendListFragment$Section;->list:Ljava/util/ArrayList;

    const/4 v3, 0x0

    const/16 v4, 0x32

    invoke-virtual {p1, v3, v4}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 503
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendListFragment$7;->this$0:Lcom/vkontakte/android/fragments/FriendListFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/FriendListFragment;->access$16(Lcom/vkontakte/android/fragments/FriendListFragment;)Ljava/util/ArrayList;

    move-result-object v0

    const/16 v3, 0x32

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {p1, v3, v4}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_3
    move v0, v2

    .line 511
    goto :goto_1

    .line 513
    :cond_4
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendListFragment$7;->this$0:Lcom/vkontakte/android/fragments/FriendListFragment;

    invoke-virtual {v0}, Lcom/vkontakte/android/fragments/FriendListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/vkontakte/android/fragments/FriendListFragment$7$1;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/fragments/FriendListFragment$7$1;-><init>(Lcom/vkontakte/android/fragments/FriendListFragment$7;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2
.end method
