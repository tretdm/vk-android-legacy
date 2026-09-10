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
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/fragments/FriendListFragment$6;->this$0:Lcom/vkontakte/android/fragments/FriendListFragment;

    .line 459
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 461
    :try_start_0
    iget-object v2, p0, Lcom/vkontakte/android/fragments/FriendListFragment$6;->this$0:Lcom/vkontakte/android/fragments/FriendListFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/FriendListFragment;->access$8(Lcom/vkontakte/android/fragments/FriendListFragment;)Ljava/util/concurrent/Semaphore;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 462
    :goto_0
    new-instance v0, Lcom/vkontakte/android/fragments/FriendListFragment$Section;

    iget-object v2, p0, Lcom/vkontakte/android/fragments/FriendListFragment$6;->this$0:Lcom/vkontakte/android/fragments/FriendListFragment;

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Lcom/vkontakte/android/fragments/FriendListFragment$Section;-><init>(Lcom/vkontakte/android/fragments/FriendListFragment;Lcom/vkontakte/android/fragments/FriendListFragment$Section;)V

    .line 463
    .local v0, "s":Lcom/vkontakte/android/fragments/FriendListFragment$Section;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/vkontakte/android/fragments/FriendListFragment$Section;->list:Ljava/util/ArrayList;

    .line 464
    iget-object v2, p0, Lcom/vkontakte/android/fragments/FriendListFragment$6;->this$0:Lcom/vkontakte/android/fragments/FriendListFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/FriendListFragment;->access$14(Lcom/vkontakte/android/fragments/FriendListFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 468
    iget-object v2, p0, Lcom/vkontakte/android/fragments/FriendListFragment$6;->this$0:Lcom/vkontakte/android/fragments/FriendListFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/FriendListFragment;->access$1(Lcom/vkontakte/android/fragments/FriendListFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 469
    iget-object v2, p0, Lcom/vkontakte/android/fragments/FriendListFragment$6;->this$0:Lcom/vkontakte/android/fragments/FriendListFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/FriendListFragment;->access$1(Lcom/vkontakte/android/fragments/FriendListFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 470
    iget-object v2, p0, Lcom/vkontakte/android/fragments/FriendListFragment$6;->this$0:Lcom/vkontakte/android/fragments/FriendListFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/FriendListFragment;->access$8(Lcom/vkontakte/android/fragments/FriendListFragment;)Ljava/util/concurrent/Semaphore;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->release()V

    .line 471
    iget-object v2, p0, Lcom/vkontakte/android/fragments/FriendListFragment$6;->this$0:Lcom/vkontakte/android/fragments/FriendListFragment;

    invoke-virtual {v2}, Lcom/vkontakte/android/fragments/FriendListFragment;->updateList()V

    .line 472
    return-void

    .line 464
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/UserProfile;

    .line 465
    .local v1, "user":Lcom/vkontakte/android/UserProfile;
    if-eqz v1, :cond_0

    iget v3, v1, Lcom/vkontakte/android/UserProfile;->online:I

    if-lez v3, :cond_0

    .line 466
    iget-object v3, v0, Lcom/vkontakte/android/fragments/FriendListFragment$Section;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 461
    .end local v0    # "s":Lcom/vkontakte/android/fragments/FriendListFragment$Section;
    .end local v1    # "user":Lcom/vkontakte/android/UserProfile;
    :catch_0
    move-exception v2

    goto :goto_0
.end method
