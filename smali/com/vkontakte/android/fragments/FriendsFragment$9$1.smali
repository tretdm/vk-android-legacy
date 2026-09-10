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
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/fragments/FriendsFragment$9$1;->this$1:Lcom/vkontakte/android/fragments/FriendsFragment$9;

    .line 382
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/fragments/FriendsFragment$9$1;)Lcom/vkontakte/android/fragments/FriendsFragment$9;
    .locals 1

    .prologue
    .line 382
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendsFragment$9$1;->this$1:Lcom/vkontakte/android/fragments/FriendsFragment$9;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 384
    iget-object v3, p0, Lcom/vkontakte/android/fragments/FriendsFragment$9$1;->this$1:Lcom/vkontakte/android/fragments/FriendsFragment$9;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/FriendsFragment$9;->access$0(Lcom/vkontakte/android/fragments/FriendsFragment$9;)Lcom/vkontakte/android/fragments/FriendsFragment;

    move-result-object v3

    invoke-static {v3}, Lcom/vkontakte/android/fragments/FriendsFragment;->access$2(Lcom/vkontakte/android/fragments/FriendsFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 385
    iget-object v3, p0, Lcom/vkontakte/android/fragments/FriendsFragment$9$1;->this$1:Lcom/vkontakte/android/fragments/FriendsFragment$9;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/FriendsFragment$9;->access$0(Lcom/vkontakte/android/fragments/FriendsFragment$9;)Lcom/vkontakte/android/fragments/FriendsFragment;

    move-result-object v3

    invoke-static {v3}, Lcom/vkontakte/android/fragments/FriendsFragment;->access$2(Lcom/vkontakte/android/fragments/FriendsFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {v3}, Lcom/vkontakte/android/data/Friends;->getFriends(Ljava/util/ArrayList;)V

    .line 386
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 387
    .local v0, "h":Landroid/os/Handler;
    new-instance v1, Lcom/vkontakte/android/fragments/FriendsFragment$9$1$1;

    invoke-direct {v1, p0, v0}, Lcom/vkontakte/android/fragments/FriendsFragment$9$1$1;-><init>(Lcom/vkontakte/android/fragments/FriendsFragment$9$1;Landroid/os/Handler;)V

    .line 396
    .local v1, "r":Ljava/lang/Runnable;
    iget-object v3, p0, Lcom/vkontakte/android/fragments/FriendsFragment$9$1;->this$1:Lcom/vkontakte/android/fragments/FriendsFragment$9;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/FriendsFragment$9;->access$0(Lcom/vkontakte/android/fragments/FriendsFragment$9;)Lcom/vkontakte/android/fragments/FriendsFragment;

    move-result-object v3

    invoke-static {v3}, Lcom/vkontakte/android/fragments/FriendsFragment;->access$11(Lcom/vkontakte/android/fragments/FriendsFragment;)Lcom/vkontakte/android/fragments/FriendListFragment;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/vkontakte/android/fragments/FriendListFragment;->runAfterInit(Ljava/lang/Runnable;)V

    .line 397
    iget-object v3, p0, Lcom/vkontakte/android/fragments/FriendsFragment$9$1;->this$1:Lcom/vkontakte/android/fragments/FriendsFragment$9;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/FriendsFragment$9;->access$0(Lcom/vkontakte/android/fragments/FriendsFragment$9;)Lcom/vkontakte/android/fragments/FriendsFragment;

    move-result-object v3

    invoke-static {v3}, Lcom/vkontakte/android/fragments/FriendsFragment;->access$11(Lcom/vkontakte/android/fragments/FriendsFragment;)Lcom/vkontakte/android/fragments/FriendListFragment;

    move-result-object v6

    iget-object v3, p0, Lcom/vkontakte/android/fragments/FriendsFragment$9$1;->this$1:Lcom/vkontakte/android/fragments/FriendsFragment$9;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/FriendsFragment$9;->access$0(Lcom/vkontakte/android/fragments/FriendsFragment$9;)Lcom/vkontakte/android/fragments/FriendsFragment;

    move-result-object v3

    invoke-static {v3}, Lcom/vkontakte/android/fragments/FriendsFragment;->access$2(Lcom/vkontakte/android/fragments/FriendsFragment;)Ljava/util/ArrayList;

    move-result-object v7

    iget-object v3, p0, Lcom/vkontakte/android/fragments/FriendsFragment$9$1;->this$1:Lcom/vkontakte/android/fragments/FriendsFragment$9;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/FriendsFragment$9;->access$0(Lcom/vkontakte/android/fragments/FriendsFragment$9;)Lcom/vkontakte/android/fragments/FriendsFragment;

    move-result-object v3

    invoke-static {v3}, Lcom/vkontakte/android/fragments/FriendsFragment;->access$7(Lcom/vkontakte/android/fragments/FriendsFragment;)I

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/vkontakte/android/fragments/FriendsFragment$9$1;->this$1:Lcom/vkontakte/android/fragments/FriendsFragment$9;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/FriendsFragment$9;->access$0(Lcom/vkontakte/android/fragments/FriendsFragment$9;)Lcom/vkontakte/android/fragments/FriendsFragment;

    move-result-object v3

    invoke-static {v3}, Lcom/vkontakte/android/fragments/FriendsFragment;->access$7(Lcom/vkontakte/android/fragments/FriendsFragment;)I

    move-result v3

    sget v8, Lcom/vkontakte/android/Global;->uid:I

    if-eq v3, v8, :cond_1

    move v3, v4

    :goto_0
    invoke-virtual {v6, v7, v3, v5}, Lcom/vkontakte/android/fragments/FriendListFragment;->setData(Ljava/util/ArrayList;ZZ)V

    .line 398
    iget-object v3, p0, Lcom/vkontakte/android/fragments/FriendsFragment$9$1;->this$1:Lcom/vkontakte/android/fragments/FriendsFragment$9;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/FriendsFragment$9;->access$0(Lcom/vkontakte/android/fragments/FriendsFragment$9;)Lcom/vkontakte/android/fragments/FriendsFragment;

    move-result-object v3

    invoke-static {v3}, Lcom/vkontakte/android/fragments/FriendsFragment;->access$5(Lcom/vkontakte/android/fragments/FriendsFragment;)Lcom/vkontakte/android/fragments/FriendListFragment;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/vkontakte/android/fragments/FriendListFragment;->setShowOnline(Z)V

    .line 399
    iget-object v3, p0, Lcom/vkontakte/android/fragments/FriendsFragment$9$1;->this$1:Lcom/vkontakte/android/fragments/FriendsFragment$9;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/FriendsFragment$9;->access$0(Lcom/vkontakte/android/fragments/FriendsFragment$9;)Lcom/vkontakte/android/fragments/FriendsFragment;

    move-result-object v3

    invoke-static {v3}, Lcom/vkontakte/android/fragments/FriendsFragment;->access$5(Lcom/vkontakte/android/fragments/FriendsFragment;)Lcom/vkontakte/android/fragments/FriendListFragment;

    move-result-object v3

    iget-object v5, p0, Lcom/vkontakte/android/fragments/FriendsFragment$9$1;->this$1:Lcom/vkontakte/android/fragments/FriendsFragment$9;

    invoke-static {v5}, Lcom/vkontakte/android/fragments/FriendsFragment$9;->access$0(Lcom/vkontakte/android/fragments/FriendsFragment$9;)Lcom/vkontakte/android/fragments/FriendsFragment;

    move-result-object v5

    invoke-static {v5}, Lcom/vkontakte/android/fragments/FriendsFragment;->access$2(Lcom/vkontakte/android/fragments/FriendsFragment;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v3, v5, v4, v4}, Lcom/vkontakte/android/fragments/FriendListFragment;->setData(Ljava/util/ArrayList;ZZ)V

    .line 400
    iget-object v3, p0, Lcom/vkontakte/android/fragments/FriendsFragment$9$1;->this$1:Lcom/vkontakte/android/fragments/FriendsFragment$9;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/FriendsFragment$9;->access$0(Lcom/vkontakte/android/fragments/FriendsFragment$9;)Lcom/vkontakte/android/fragments/FriendsFragment;

    move-result-object v3

    invoke-static {v3, v4}, Lcom/vkontakte/android/fragments/FriendsFragment;->access$3(Lcom/vkontakte/android/fragments/FriendsFragment;I)V

    .line 401
    iget-object v3, p0, Lcom/vkontakte/android/fragments/FriendsFragment$9$1;->this$1:Lcom/vkontakte/android/fragments/FriendsFragment$9;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/FriendsFragment$9;->access$0(Lcom/vkontakte/android/fragments/FriendsFragment$9;)Lcom/vkontakte/android/fragments/FriendsFragment;

    move-result-object v3

    invoke-static {v3}, Lcom/vkontakte/android/fragments/FriendsFragment;->access$2(Lcom/vkontakte/android/fragments/FriendsFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_2

    .line 404
    iget-object v3, p0, Lcom/vkontakte/android/fragments/FriendsFragment$9$1;->this$1:Lcom/vkontakte/android/fragments/FriendsFragment$9;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/FriendsFragment$9;->access$0(Lcom/vkontakte/android/fragments/FriendsFragment$9;)Lcom/vkontakte/android/fragments/FriendsFragment;

    move-result-object v3

    invoke-static {v3}, Lcom/vkontakte/android/fragments/FriendsFragment;->access$1(Lcom/vkontakte/android/fragments/FriendsFragment;)V

    .line 405
    const-wide/16 v3, 0x1f4

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 406
    return-void

    :cond_1
    move v3, v5

    .line 397
    goto :goto_0

    .line 401
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/UserProfile;

    .line 402
    .local v2, "u":Lcom/vkontakte/android/UserProfile;
    iget v4, v2, Lcom/vkontakte/android/UserProfile;->online:I

    if-lez v4, :cond_0

    iget-object v4, p0, Lcom/vkontakte/android/fragments/FriendsFragment$9$1;->this$1:Lcom/vkontakte/android/fragments/FriendsFragment$9;

    invoke-static {v4}, Lcom/vkontakte/android/fragments/FriendsFragment$9;->access$0(Lcom/vkontakte/android/fragments/FriendsFragment$9;)Lcom/vkontakte/android/fragments/FriendsFragment;

    move-result-object v4

    invoke-static {v4}, Lcom/vkontakte/android/fragments/FriendsFragment;->access$4(Lcom/vkontakte/android/fragments/FriendsFragment;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-static {v4, v5}, Lcom/vkontakte/android/fragments/FriendsFragment;->access$3(Lcom/vkontakte/android/fragments/FriendsFragment;I)V

    goto :goto_1
.end method
