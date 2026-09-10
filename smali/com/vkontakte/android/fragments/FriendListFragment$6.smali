.class Lcom/vkontakte/android/fragments/FriendListFragment$6;
.super Ljava/lang/Object;
.source "FriendListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/FriendListFragment;->updateOnline()V
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
    .line 467
    iput-object p1, p0, Lcom/vkontakte/android/fragments/FriendListFragment$6;->this$0:Lcom/vkontakte/android/fragments/FriendListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 469
    :try_start_0
    iget-object v3, p0, Lcom/vkontakte/android/fragments/FriendListFragment$6;->this$0:Lcom/vkontakte/android/fragments/FriendListFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/FriendListFragment;->access$1000(Lcom/vkontakte/android/fragments/FriendListFragment;)Ljava/util/concurrent/Semaphore;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 470
    :goto_0
    new-instance v1, Lcom/vkontakte/android/fragments/FriendListFragment$Section;

    iget-object v3, p0, Lcom/vkontakte/android/fragments/FriendListFragment$6;->this$0:Lcom/vkontakte/android/fragments/FriendListFragment;

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4}, Lcom/vkontakte/android/fragments/FriendListFragment$Section;-><init>(Lcom/vkontakte/android/fragments/FriendListFragment;Lcom/vkontakte/android/fragments/FriendListFragment$1;)V

    .line 471
    .local v1, "s":Lcom/vkontakte/android/fragments/FriendListFragment$Section;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v1, Lcom/vkontakte/android/fragments/FriendListFragment$Section;->list:Ljava/util/ArrayList;

    .line 472
    iget-object v3, p0, Lcom/vkontakte/android/fragments/FriendListFragment$6;->this$0:Lcom/vkontakte/android/fragments/FriendListFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/FriendListFragment;->access$1600(Lcom/vkontakte/android/fragments/FriendListFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/UserProfile;

    .line 473
    .local v2, "user":Lcom/vkontakte/android/UserProfile;
    if-eqz v2, :cond_0

    iget v3, v2, Lcom/vkontakte/android/UserProfile;->online:I

    if-lez v3, :cond_0

    .line 474
    iget-object v3, v1, Lcom/vkontakte/android/fragments/FriendListFragment$Section;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 476
    .end local v2    # "user":Lcom/vkontakte/android/UserProfile;
    :cond_1
    iget-object v3, p0, Lcom/vkontakte/android/fragments/FriendListFragment$6;->this$0:Lcom/vkontakte/android/fragments/FriendListFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/FriendListFragment;->access$300(Lcom/vkontakte/android/fragments/FriendListFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 477
    iget-object v3, p0, Lcom/vkontakte/android/fragments/FriendListFragment$6;->this$0:Lcom/vkontakte/android/fragments/FriendListFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/FriendListFragment;->access$300(Lcom/vkontakte/android/fragments/FriendListFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 478
    iget-object v3, p0, Lcom/vkontakte/android/fragments/FriendListFragment$6;->this$0:Lcom/vkontakte/android/fragments/FriendListFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/FriendListFragment;->access$1000(Lcom/vkontakte/android/fragments/FriendListFragment;)Ljava/util/concurrent/Semaphore;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/Semaphore;->release()V

    .line 479
    iget-object v3, p0, Lcom/vkontakte/android/fragments/FriendListFragment$6;->this$0:Lcom/vkontakte/android/fragments/FriendListFragment;

    invoke-virtual {v3}, Lcom/vkontakte/android/fragments/FriendListFragment;->updateList()V

    .line 480
    return-void

    .line 469
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "s":Lcom/vkontakte/android/fragments/FriendListFragment$Section;
    :catch_0
    move-exception v3

    goto :goto_0
.end method
