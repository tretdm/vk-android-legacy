.class Lcom/vkontakte/android/fragments/PostListFragment$9;
.super Ljava/lang/Object;
.source "PostListFragment.java"

# interfaces
.implements Lcom/vkontakte/android/api/NewsfeedAddBan$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/PostListFragment;->hideSource(Lcom/vkontakte/android/NewsEntry;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/PostListFragment;

.field final synthetic val$de:Lcom/vkontakte/android/NewsEntry;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/PostListFragment;Lcom/vkontakte/android/NewsEntry;)V
    .locals 0

    .prologue
    .line 521
    iput-object p1, p0, Lcom/vkontakte/android/fragments/PostListFragment$9;->this$0:Lcom/vkontakte/android/fragments/PostListFragment;

    iput-object p2, p0, Lcom/vkontakte/android/fragments/PostListFragment$9;->val$de:Lcom/vkontakte/android/NewsEntry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 3
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 546
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostListFragment$9;->this$0:Lcom/vkontakte/android/fragments/PostListFragment;

    invoke-virtual {v0}, Lcom/vkontakte/android/fragments/PostListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0d00d0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 547
    return-void
.end method

.method public success()V
    .locals 8

    .prologue
    .line 524
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 525
    .local v4, "toRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/NewsEntry;>;"
    iget-object v5, p0, Lcom/vkontakte/android/fragments/PostListFragment$9;->this$0:Lcom/vkontakte/android/fragments/PostListFragment;

    iget-object v5, v5, Lcom/vkontakte/android/fragments/PostListFragment;->data:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/NewsEntry;

    .line 526
    .local v0, "e":Lcom/vkontakte/android/NewsEntry;
    iget v5, v0, Lcom/vkontakte/android/NewsEntry;->userID:I

    iget-object v6, p0, Lcom/vkontakte/android/fragments/PostListFragment$9;->val$de:Lcom/vkontakte/android/NewsEntry;

    iget v6, v6, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    if-ne v5, v6, :cond_0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 528
    .end local v0    # "e":Lcom/vkontakte/android/NewsEntry;
    :cond_1
    iget-object v5, p0, Lcom/vkontakte/android/fragments/PostListFragment$9;->this$0:Lcom/vkontakte/android/fragments/PostListFragment;

    iget-object v5, v5, Lcom/vkontakte/android/fragments/PostListFragment;->preloadedData:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/NewsEntry;

    .line 529
    .restart local v0    # "e":Lcom/vkontakte/android/NewsEntry;
    iget v5, v0, Lcom/vkontakte/android/NewsEntry;->userID:I

    iget-object v6, p0, Lcom/vkontakte/android/fragments/PostListFragment$9;->val$de:Lcom/vkontakte/android/NewsEntry;

    iget v6, v6, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    if-ne v5, v6, :cond_2

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 531
    .end local v0    # "e":Lcom/vkontakte/android/NewsEntry;
    :cond_3
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/NewsEntry;

    .line 532
    .restart local v0    # "e":Lcom/vkontakte/android/NewsEntry;
    iget-object v5, p0, Lcom/vkontakte/android/fragments/PostListFragment$9;->this$0:Lcom/vkontakte/android/fragments/PostListFragment;

    iget-object v5, v5, Lcom/vkontakte/android/fragments/PostListFragment;->data:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    .line 534
    .end local v0    # "e":Lcom/vkontakte/android/NewsEntry;
    :cond_4
    iget-object v5, p0, Lcom/vkontakte/android/fragments/PostListFragment$9;->this$0:Lcom/vkontakte/android/fragments/PostListFragment;

    iget-object v5, v5, Lcom/vkontakte/android/fragments/PostListFragment;->items:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 535
    .local v3, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/vkontakte/android/ui/posts/PostDisplayItem;>;"
    :cond_5
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 536
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/ui/posts/PostDisplayItem;

    .line 537
    .local v2, "item":Lcom/vkontakte/android/ui/posts/PostDisplayItem;
    iget v5, v2, Lcom/vkontakte/android/ui/posts/PostDisplayItem;->postOwnerID:I

    iget-object v6, p0, Lcom/vkontakte/android/fragments/PostListFragment$9;->val$de:Lcom/vkontakte/android/NewsEntry;

    iget v6, v6, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    if-ne v5, v6, :cond_5

    .line 538
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_3

    .line 540
    .end local v2    # "item":Lcom/vkontakte/android/ui/posts/PostDisplayItem;
    :cond_6
    iget-object v5, p0, Lcom/vkontakte/android/fragments/PostListFragment$9;->this$0:Lcom/vkontakte/android/fragments/PostListFragment;

    invoke-virtual {v5}, Lcom/vkontakte/android/fragments/PostListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    iget-object v5, p0, Lcom/vkontakte/android/fragments/PostListFragment$9;->val$de:Lcom/vkontakte/android/NewsEntry;

    iget v5, v5, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    if-lez v5, :cond_7

    const v5, 0x7f0d0188

    :goto_4
    const/4 v7, 0x1

    invoke-static {v6, v5, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 541
    iget-object v5, p0, Lcom/vkontakte/android/fragments/PostListFragment$9;->this$0:Lcom/vkontakte/android/fragments/PostListFragment;

    invoke-virtual {v5}, Lcom/vkontakte/android/fragments/PostListFragment;->updateList()V

    .line 542
    return-void

    .line 540
    :cond_7
    const v5, 0x7f0d0187

    goto :goto_4
.end method
