.class Lcom/vkontakte/android/fragments/GroupListFragment$8;
.super Ljava/lang/Object;
.source "GroupListFragment.java"

# interfaces
.implements Lcom/vkontakte/android/api/GroupsSearch$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/GroupListFragment;->loadMore()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/GroupListFragment;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/GroupListFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/fragments/GroupListFragment$8;->this$0:Lcom/vkontakte/android/fragments/GroupListFragment;

    .line 309
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/fragments/GroupListFragment$8;)Lcom/vkontakte/android/fragments/GroupListFragment;
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GroupListFragment$8;->this$0:Lcom/vkontakte/android/fragments/GroupListFragment;

    return-object v0
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 3
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 347
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GroupListFragment$8;->this$0:Lcom/vkontakte/android/fragments/GroupListFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/fragments/GroupListFragment;->access$9(Lcom/vkontakte/android/fragments/GroupListFragment;Lcom/vkontakte/android/APIRequest;)V

    .line 348
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GroupListFragment$8;->this$0:Lcom/vkontakte/android/fragments/GroupListFragment;

    invoke-virtual {v0}, Lcom/vkontakte/android/fragments/GroupListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_1

    .line 351
    :cond_0
    :goto_0
    return-void

    .line 349
    :cond_1
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GroupListFragment$8;->this$0:Lcom/vkontakte/android/fragments/GroupListFragment;

    invoke-virtual {v0}, Lcom/vkontakte/android/fragments/GroupListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_2

    const v0, 0x7f08006b

    :goto_1
    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 350
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GroupListFragment$8;->this$0:Lcom/vkontakte/android/fragments/GroupListFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/GroupListFragment;->access$2(Lcom/vkontakte/android/fragments/GroupListFragment;)Lcom/vkontakte/android/ui/PinnedHeaderListView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/fragments/GroupListFragment$8;->this$0:Lcom/vkontakte/android/fragments/GroupListFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/GroupListFragment;->access$2(Lcom/vkontakte/android/fragments/GroupListFragment;)Lcom/vkontakte/android/ui/PinnedHeaderListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/PinnedHeaderListView;->isRefreshing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/fragments/GroupListFragment$8;->this$0:Lcom/vkontakte/android/fragments/GroupListFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/GroupListFragment;->access$2(Lcom/vkontakte/android/fragments/GroupListFragment;)Lcom/vkontakte/android/ui/PinnedHeaderListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/PinnedHeaderListView;->refreshDone()V

    goto :goto_0

    .line 349
    :cond_2
    const v0, 0x7f080068

    goto :goto_1
.end method

.method public success(Ljava/util/List;I)V
    .locals 5
    .param p2, "total"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/vkontakte/android/api/Group;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p1, "results":Ljava/util/List;, "Ljava/util/List<Lcom/vkontakte/android/api/Group;>;"
    const/16 v3, 0x32

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 313
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, v3, :cond_3

    .line 314
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GroupListFragment$8;->this$0:Lcom/vkontakte/android/fragments/GroupListFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/GroupListFragment;->access$7(Lcom/vkontakte/android/fragments/GroupListFragment;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 315
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GroupListFragment$8;->this$0:Lcom/vkontakte/android/fragments/GroupListFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/GroupListFragment;->access$0(Lcom/vkontakte/android/fragments/GroupListFragment;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/fragments/GroupListFragment$Section;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/GroupListFragment$Section;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 322
    :goto_0
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GroupListFragment$8;->this$0:Lcom/vkontakte/android/fragments/GroupListFragment;

    invoke-virtual {v0}, Lcom/vkontakte/android/fragments/GroupListFragment;->updateList()V

    .line 323
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GroupListFragment$8;->this$0:Lcom/vkontakte/android/fragments/GroupListFragment;

    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcom/vkontakte/android/fragments/GroupListFragment;->access$9(Lcom/vkontakte/android/fragments/GroupListFragment;Lcom/vkontakte/android/APIRequest;)V

    .line 324
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GroupListFragment$8;->this$0:Lcom/vkontakte/android/fragments/GroupListFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/GroupListFragment;->access$7(Lcom/vkontakte/android/fragments/GroupListFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 325
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GroupListFragment$8;->this$0:Lcom/vkontakte/android/fragments/GroupListFragment;

    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcom/vkontakte/android/fragments/GroupListFragment;->access$10(Lcom/vkontakte/android/fragments/GroupListFragment;Z)V

    .line 326
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GroupListFragment$8;->this$0:Lcom/vkontakte/android/fragments/GroupListFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/GroupListFragment;->access$6(Lcom/vkontakte/android/fragments/GroupListFragment;)V

    .line 328
    :cond_0
    iget-object v3, p0, Lcom/vkontakte/android/fragments/GroupListFragment$8;->this$0:Lcom/vkontakte/android/fragments/GroupListFragment;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    move v0, v1

    :goto_1
    invoke-static {v3, v0}, Lcom/vkontakte/android/fragments/GroupListFragment;->access$11(Lcom/vkontakte/android/fragments/GroupListFragment;Z)V

    .line 329
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GroupListFragment$8;->this$0:Lcom/vkontakte/android/fragments/GroupListFragment;

    invoke-virtual {v0}, Lcom/vkontakte/android/fragments/GroupListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_5

    .line 343
    :cond_1
    :goto_2
    return-void

    .line 317
    :cond_2
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GroupListFragment$8;->this$0:Lcom/vkontakte/android/fragments/GroupListFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/GroupListFragment;->access$8(Lcom/vkontakte/android/fragments/GroupListFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 335
    :catch_0
    move-exception v0

    .line 336
    :goto_3
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GroupListFragment$8;->this$0:Lcom/vkontakte/android/fragments/GroupListFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/GroupListFragment;->access$2(Lcom/vkontakte/android/fragments/GroupListFragment;)Lcom/vkontakte/android/ui/PinnedHeaderListView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vkontakte/android/fragments/GroupListFragment$8;->this$0:Lcom/vkontakte/android/fragments/GroupListFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/GroupListFragment;->access$2(Lcom/vkontakte/android/fragments/GroupListFragment;)Lcom/vkontakte/android/ui/PinnedHeaderListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/PinnedHeaderListView;->isRefreshing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 337
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GroupListFragment$8;->this$0:Lcom/vkontakte/android/fragments/GroupListFragment;

    invoke-virtual {v0}, Lcom/vkontakte/android/fragments/GroupListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/vkontakte/android/fragments/GroupListFragment$8$2;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/fragments/GroupListFragment$8$2;-><init>(Lcom/vkontakte/android/fragments/GroupListFragment$8;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_2

    .line 319
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GroupListFragment$8;->this$0:Lcom/vkontakte/android/fragments/GroupListFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/GroupListFragment;->access$0(Lcom/vkontakte/android/fragments/GroupListFragment;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/fragments/GroupListFragment$Section;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/GroupListFragment$Section;->list:Ljava/util/ArrayList;

    const/4 v3, 0x0

    const/16 v4, 0x32

    invoke-interface {p1, v3, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 320
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GroupListFragment$8;->this$0:Lcom/vkontakte/android/fragments/GroupListFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/GroupListFragment;->access$8(Lcom/vkontakte/android/fragments/GroupListFragment;)Ljava/util/ArrayList;

    move-result-object v0

    const/16 v3, 0x32

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {p1, v3, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_0

    :cond_4
    move v0, v2

    .line 328
    goto :goto_1

    .line 330
    :cond_5
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GroupListFragment$8;->this$0:Lcom/vkontakte/android/fragments/GroupListFragment;

    invoke-virtual {v0}, Lcom/vkontakte/android/fragments/GroupListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/vkontakte/android/fragments/GroupListFragment$8$1;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/fragments/GroupListFragment$8$1;-><init>(Lcom/vkontakte/android/fragments/GroupListFragment$8;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3
.end method
