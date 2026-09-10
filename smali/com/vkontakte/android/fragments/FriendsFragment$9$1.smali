.class Lcom/vkontakte/android/fragments/FriendsFragment$9$1;
.super Ljava/lang/Object;
.source "FriendsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/FriendsFragment$9;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/fragments/FriendsFragment$9;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/FriendsFragment$9;)V
    .locals 0

    .prologue
    .line 382
    iput-object p1, p0, Lcom/vkontakte/android/fragments/FriendsFragment$9$1;->this$1:Lcom/vkontakte/android/fragments/FriendsFragment$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 384
    iget-object v4, p0, Lcom/vkontakte/android/fragments/FriendsFragment$9$1;->this$1:Lcom/vkontakte/android/fragments/FriendsFragment$9;

    iget-object v4, v4, Lcom/vkontakte/android/fragments/FriendsFragment$9;->this$0:Lcom/vkontakte/android/fragments/FriendsFragment;

    invoke-static {v4}, Lcom/vkontakte/android/fragments/FriendsFragment;->access$200(Lcom/vkontakte/android/fragments/FriendsFragment;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 385
    iget-object v4, p0, Lcom/vkontakte/android/fragments/FriendsFragment$9$1;->this$1:Lcom/vkontakte/android/fragments/FriendsFragment$9;

    iget-object v4, v4, Lcom/vkontakte/android/fragments/FriendsFragment$9;->this$0:Lcom/vkontakte/android/fragments/FriendsFragment;

    invoke-static {v4}, Lcom/vkontakte/android/fragments/FriendsFragment;->access$200(Lcom/vkontakte/android/fragments/FriendsFragment;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-static {v4}, Lcom/vkontakte/android/data/Friends;->getFriends(Ljava/util/ArrayList;)V

    .line 386
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 387
    .local v0, "h":Landroid/os/Handler;
    new-instance v2, Lcom/vkontakte/android/fragments/FriendsFragment$9$1$1;

    invoke-direct {v2, p0, v0}, Lcom/vkontakte/android/fragments/FriendsFragment$9$1$1;-><init>(Lcom/vkontakte/android/fragments/FriendsFragment$9$1;Landroid/os/Handler;)V

    .line 396
    .local v2, "r":Ljava/lang/Runnable;
    iget-object v4, p0, Lcom/vkontakte/android/fragments/FriendsFragment$9$1;->this$1:Lcom/vkontakte/android/fragments/FriendsFragment$9;

    iget-object v4, v4, Lcom/vkontakte/android/fragments/FriendsFragment$9;->this$0:Lcom/vkontakte/android/fragments/FriendsFragment;

    invoke-static {v4}, Lcom/vkontakte/android/fragments/FriendsFragment;->access$300(Lcom/vkontakte/android/fragments/FriendsFragment;)Lcom/vkontakte/android/fragments/FriendListFragment;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/vkontakte/android/fragments/FriendListFragment;->runAfterInit(Ljava/lang/Runnable;)V

    .line 397
    iget-object v4, p0, Lcom/vkontakte/android/fragments/FriendsFragment$9$1;->this$1:Lcom/vkontakte/android/fragments/FriendsFragment$9;

    iget-object v4, v4, Lcom/vkontakte/android/fragments/FriendsFragment$9;->this$0:Lcom/vkontakte/android/fragments/FriendsFragment;

    invoke-static {v4}, Lcom/vkontakte/android/fragments/FriendsFragment;->access$300(Lcom/vkontakte/android/fragments/FriendsFragment;)Lcom/vkontakte/android/fragments/FriendListFragment;

    move-result-object v7

    iget-object v4, p0, Lcom/vkontakte/android/fragments/FriendsFragment$9$1;->this$1:Lcom/vkontakte/android/fragments/FriendsFragment$9;

    iget-object v4, v4, Lcom/vkontakte/android/fragments/FriendsFragment$9;->this$0:Lcom/vkontakte/android/fragments/FriendsFragment;

    invoke-static {v4}, Lcom/vkontakte/android/fragments/FriendsFragment;->access$200(Lcom/vkontakte/android/fragments/FriendsFragment;)Ljava/util/ArrayList;

    move-result-object v8

    iget-object v4, p0, Lcom/vkontakte/android/fragments/FriendsFragment$9$1;->this$1:Lcom/vkontakte/android/fragments/FriendsFragment$9;

    iget-object v4, v4, Lcom/vkontakte/android/fragments/FriendsFragment$9;->this$0:Lcom/vkontakte/android/fragments/FriendsFragment;

    invoke-static {v4}, Lcom/vkontakte/android/fragments/FriendsFragment;->access$900(Lcom/vkontakte/android/fragments/FriendsFragment;)I

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/vkontakte/android/fragments/FriendsFragment$9$1;->this$1:Lcom/vkontakte/android/fragments/FriendsFragment$9;

    iget-object v4, v4, Lcom/vkontakte/android/fragments/FriendsFragment$9;->this$0:Lcom/vkontakte/android/fragments/FriendsFragment;

    invoke-static {v4}, Lcom/vkontakte/android/fragments/FriendsFragment;->access$900(Lcom/vkontakte/android/fragments/FriendsFragment;)I

    move-result v4

    sget v9, Lcom/vkontakte/android/Global;->uid:I

    if-ne v4, v9, :cond_2

    :cond_0
    move v4, v6

    :goto_0
    invoke-virtual {v7, v8, v4, v6}, Lcom/vkontakte/android/fragments/FriendListFragment;->setData(Ljava/util/ArrayList;ZZ)V

    .line 398
    iget-object v4, p0, Lcom/vkontakte/android/fragments/FriendsFragment$9$1;->this$1:Lcom/vkontakte/android/fragments/FriendsFragment$9;

    iget-object v4, v4, Lcom/vkontakte/android/fragments/FriendsFragment$9;->this$0:Lcom/vkontakte/android/fragments/FriendsFragment;

    invoke-static {v4}, Lcom/vkontakte/android/fragments/FriendsFragment;->access$500(Lcom/vkontakte/android/fragments/FriendsFragment;)Lcom/vkontakte/android/fragments/FriendListFragment;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/vkontakte/android/fragments/FriendListFragment;->setShowOnline(Z)V

    .line 399
    iget-object v4, p0, Lcom/vkontakte/android/fragments/FriendsFragment$9$1;->this$1:Lcom/vkontakte/android/fragments/FriendsFragment$9;

    iget-object v4, v4, Lcom/vkontakte/android/fragments/FriendsFragment$9;->this$0:Lcom/vkontakte/android/fragments/FriendsFragment;

    invoke-static {v4}, Lcom/vkontakte/android/fragments/FriendsFragment;->access$500(Lcom/vkontakte/android/fragments/FriendsFragment;)Lcom/vkontakte/android/fragments/FriendListFragment;

    move-result-object v4

    iget-object v6, p0, Lcom/vkontakte/android/fragments/FriendsFragment$9$1;->this$1:Lcom/vkontakte/android/fragments/FriendsFragment$9;

    iget-object v6, v6, Lcom/vkontakte/android/fragments/FriendsFragment$9;->this$0:Lcom/vkontakte/android/fragments/FriendsFragment;

    invoke-static {v6}, Lcom/vkontakte/android/fragments/FriendsFragment;->access$200(Lcom/vkontakte/android/fragments/FriendsFragment;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v4, v6, v5, v5}, Lcom/vkontakte/android/fragments/FriendListFragment;->setData(Ljava/util/ArrayList;ZZ)V

    .line 400
    iget-object v4, p0, Lcom/vkontakte/android/fragments/FriendsFragment$9$1;->this$1:Lcom/vkontakte/android/fragments/FriendsFragment$9;

    iget-object v4, v4, Lcom/vkontakte/android/fragments/FriendsFragment$9;->this$0:Lcom/vkontakte/android/fragments/FriendsFragment;

    invoke-static {v4, v5}, Lcom/vkontakte/android/fragments/FriendsFragment;->access$402(Lcom/vkontakte/android/fragments/FriendsFragment;I)I

    .line 401
    iget-object v4, p0, Lcom/vkontakte/android/fragments/FriendsFragment$9$1;->this$1:Lcom/vkontakte/android/fragments/FriendsFragment$9;

    iget-object v4, v4, Lcom/vkontakte/android/fragments/FriendsFragment$9;->this$0:Lcom/vkontakte/android/fragments/FriendsFragment;

    invoke-static {v4}, Lcom/vkontakte/android/fragments/FriendsFragment;->access$200(Lcom/vkontakte/android/fragments/FriendsFragment;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vkontakte/android/UserProfile;

    .line 402
    .local v3, "u":Lcom/vkontakte/android/UserProfile;
    iget v4, v3, Lcom/vkontakte/android/UserProfile;->online:I

    if-lez v4, :cond_1

    iget-object v4, p0, Lcom/vkontakte/android/fragments/FriendsFragment$9$1;->this$1:Lcom/vkontakte/android/fragments/FriendsFragment$9;

    iget-object v4, v4, Lcom/vkontakte/android/fragments/FriendsFragment$9;->this$0:Lcom/vkontakte/android/fragments/FriendsFragment;

    invoke-static {v4}, Lcom/vkontakte/android/fragments/FriendsFragment;->access$408(Lcom/vkontakte/android/fragments/FriendsFragment;)I

    goto :goto_1

    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "u":Lcom/vkontakte/android/UserProfile;
    :cond_2
    move v4, v5

    .line 397
    goto :goto_0

    .line 404
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_3
    iget-object v4, p0, Lcom/vkontakte/android/fragments/FriendsFragment$9$1;->this$1:Lcom/vkontakte/android/fragments/FriendsFragment$9;

    iget-object v4, v4, Lcom/vkontakte/android/fragments/FriendsFragment$9;->this$0:Lcom/vkontakte/android/fragments/FriendsFragment;

    invoke-static {v4}, Lcom/vkontakte/android/fragments/FriendsFragment;->access$100(Lcom/vkontakte/android/fragments/FriendsFragment;)V

    .line 405
    const-wide/16 v4, 0x1f4

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 406
    return-void
.end method
