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
    .line 500
    iput-object p1, p0, Lcom/vkontakte/android/fragments/FriendListFragment$7;->this$0:Lcom/vkontakte/android/fragments/FriendListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 2
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 532
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendListFragment$7;->this$0:Lcom/vkontakte/android/fragments/FriendListFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/fragments/FriendListFragment;->access$1902(Lcom/vkontakte/android/fragments/FriendListFragment;Lcom/vkontakte/android/APIRequest;)Lcom/vkontakte/android/APIRequest;

    .line 533
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

    .line 504
    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt v0, v3, :cond_2

    .line 505
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendListFragment$7;->this$0:Lcom/vkontakte/android/fragments/FriendListFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/FriendListFragment;->access$1700(Lcom/vkontakte/android/fragments/FriendListFragment;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 506
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendListFragment$7;->this$0:Lcom/vkontakte/android/fragments/FriendListFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/FriendListFragment;->access$300(Lcom/vkontakte/android/fragments/FriendListFragment;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/fragments/FriendListFragment$Section;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/FriendListFragment$Section;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 513
    :goto_0
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendListFragment$7;->this$0:Lcom/vkontakte/android/fragments/FriendListFragment;

    invoke-virtual {v0}, Lcom/vkontakte/android/fragments/FriendListFragment;->updateList()V

    .line 514
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendListFragment$7;->this$0:Lcom/vkontakte/android/fragments/FriendListFragment;

    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcom/vkontakte/android/fragments/FriendListFragment;->access$1902(Lcom/vkontakte/android/fragments/FriendListFragment;Lcom/vkontakte/android/APIRequest;)Lcom/vkontakte/android/APIRequest;

    .line 515
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendListFragment$7;->this$0:Lcom/vkontakte/android/fragments/FriendListFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/FriendListFragment;->access$1700(Lcom/vkontakte/android/fragments/FriendListFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 516
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendListFragment$7;->this$0:Lcom/vkontakte/android/fragments/FriendListFragment;

    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcom/vkontakte/android/fragments/FriendListFragment;->access$1702(Lcom/vkontakte/android/fragments/FriendListFragment;Z)Z

    .line 517
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendListFragment$7;->this$0:Lcom/vkontakte/android/fragments/FriendListFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/FriendListFragment;->access$800(Lcom/vkontakte/android/fragments/FriendListFragment;)V

    .line 519
    :cond_0
    iget-object v3, p0, Lcom/vkontakte/android/fragments/FriendListFragment$7;->this$0:Lcom/vkontakte/android/fragments/FriendListFragment;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    move v0, v1

    :goto_1
    invoke-static {v3, v0}, Lcom/vkontakte/android/fragments/FriendListFragment;->access$2002(Lcom/vkontakte/android/fragments/FriendListFragment;Z)Z

    .line 520
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendListFragment$7;->this$0:Lcom/vkontakte/android/fragments/FriendListFragment;

    invoke-virtual {v0}, Lcom/vkontakte/android/fragments/FriendListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_4

    .line 528
    :goto_2
    return-void

    .line 508
    :cond_1
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendListFragment$7;->this$0:Lcom/vkontakte/android/fragments/FriendListFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/FriendListFragment;->access$1800(Lcom/vkontakte/android/fragments/FriendListFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 527
    :catch_0
    move-exception v0

    goto :goto_2

    .line 510
    :cond_2
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendListFragment$7;->this$0:Lcom/vkontakte/android/fragments/FriendListFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/FriendListFragment;->access$300(Lcom/vkontakte/android/fragments/FriendListFragment;)Ljava/util/ArrayList;

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

    .line 511
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendListFragment$7;->this$0:Lcom/vkontakte/android/fragments/FriendListFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/FriendListFragment;->access$1800(Lcom/vkontakte/android/fragments/FriendListFragment;)Ljava/util/ArrayList;

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

    .line 519
    goto :goto_1

    .line 521
    :cond_4
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendListFragment$7;->this$0:Lcom/vkontakte/android/fragments/FriendListFragment;

    invoke-virtual {v0}, Lcom/vkontakte/android/fragments/FriendListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/vkontakte/android/fragments/FriendListFragment$7$1;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/fragments/FriendListFragment$7$1;-><init>(Lcom/vkontakte/android/fragments/FriendListFragment$7;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2
.end method
