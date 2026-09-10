.class Lcom/vkontakte/android/fragments/GroupsFragment$12;
.super Ljava/lang/Object;
.source "GroupsFragment.java"

# interfaces
.implements Lcom/vkontakte/android/api/GroupsGet$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/GroupsFragment;->update()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/GroupsFragment;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/GroupsFragment;)V
    .locals 0

    .prologue
    .line 374
    iput-object p1, p0, Lcom/vkontakte/android/fragments/GroupsFragment$12;->this$0:Lcom/vkontakte/android/fragments/GroupsFragment;

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

    .line 395
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GroupsFragment$12;->this$0:Lcom/vkontakte/android/fragments/GroupsFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/GroupsFragment;->access$1800(Lcom/vkontakte/android/fragments/GroupsFragment;)Lcom/vkontakte/android/ui/ErrorView;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/vkontakte/android/ui/ErrorView;->setErrorInfo(ILjava/lang/String;)V

    .line 396
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GroupsFragment$12;->this$0:Lcom/vkontakte/android/fragments/GroupsFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/GroupsFragment;->access$1800(Lcom/vkontakte/android/fragments/GroupsFragment;)Lcom/vkontakte/android/ui/ErrorView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1, v2}, Lcom/vkontakte/android/Global;->showViewAnimated(Landroid/view/View;ZI)V

    .line 397
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GroupsFragment$12;->this$0:Lcom/vkontakte/android/fragments/GroupsFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/GroupsFragment;->access$1600(Lcom/vkontakte/android/fragments/GroupsFragment;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/vkontakte/android/Global;->showViewAnimated(Landroid/view/View;ZI)V

    .line 398
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GroupsFragment$12;->this$0:Lcom/vkontakte/android/fragments/GroupsFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/fragments/GroupsFragment;->access$1702(Lcom/vkontakte/android/fragments/GroupsFragment;Lcom/vkontakte/android/APIRequest;)Lcom/vkontakte/android/APIRequest;

    .line 399
    return-void
.end method

.method public success(Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/api/Group;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/api/Group;>;"
    const/16 v6, 0x12c

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 377
    iget-object v2, p0, Lcom/vkontakte/android/fragments/GroupsFragment$12;->this$0:Lcom/vkontakte/android/fragments/GroupsFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/GroupsFragment;->access$1100(Lcom/vkontakte/android/fragments/GroupsFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 378
    iget-object v2, p0, Lcom/vkontakte/android/fragments/GroupsFragment$12;->this$0:Lcom/vkontakte/android/fragments/GroupsFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/GroupsFragment;->access$1100(Lcom/vkontakte/android/fragments/GroupsFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 379
    iget-object v2, p0, Lcom/vkontakte/android/fragments/GroupsFragment$12;->this$0:Lcom/vkontakte/android/fragments/GroupsFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/GroupsFragment;->access$1200(Lcom/vkontakte/android/fragments/GroupsFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 380
    iget-object v2, p0, Lcom/vkontakte/android/fragments/GroupsFragment$12;->this$0:Lcom/vkontakte/android/fragments/GroupsFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/GroupsFragment;->access$1300(Lcom/vkontakte/android/fragments/GroupsFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 381
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/api/Group;

    .line 382
    .local v0, "g":Lcom/vkontakte/android/api/Group;
    iget v2, v0, Lcom/vkontakte/android/api/Group;->type:I

    if-ne v2, v5, :cond_0

    iget-object v2, p0, Lcom/vkontakte/android/fragments/GroupsFragment$12;->this$0:Lcom/vkontakte/android/fragments/GroupsFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/GroupsFragment;->access$1300(Lcom/vkontakte/android/fragments/GroupsFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 383
    :cond_0
    iget-object v2, p0, Lcom/vkontakte/android/fragments/GroupsFragment$12;->this$0:Lcom/vkontakte/android/fragments/GroupsFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/GroupsFragment;->access$1200(Lcom/vkontakte/android/fragments/GroupsFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 385
    .end local v0    # "g":Lcom/vkontakte/android/api/Group;
    :cond_1
    iget-object v2, p0, Lcom/vkontakte/android/fragments/GroupsFragment$12;->this$0:Lcom/vkontakte/android/fragments/GroupsFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/GroupsFragment;->access$1000(Lcom/vkontakte/android/fragments/GroupsFragment;)Lcom/vkontakte/android/fragments/GroupListFragment;

    move-result-object v2

    iget-object v3, p0, Lcom/vkontakte/android/fragments/GroupsFragment$12;->this$0:Lcom/vkontakte/android/fragments/GroupsFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/GroupsFragment;->access$1200(Lcom/vkontakte/android/fragments/GroupsFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v2, v3, v4, v4}, Lcom/vkontakte/android/fragments/GroupListFragment;->setData(Ljava/util/ArrayList;ZZ)V

    .line 386
    iget-object v2, p0, Lcom/vkontakte/android/fragments/GroupsFragment$12;->this$0:Lcom/vkontakte/android/fragments/GroupsFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/GroupsFragment;->access$1400(Lcom/vkontakte/android/fragments/GroupsFragment;)Lcom/vkontakte/android/fragments/GroupListFragment;

    move-result-object v2

    iget-object v3, p0, Lcom/vkontakte/android/fragments/GroupsFragment$12;->this$0:Lcom/vkontakte/android/fragments/GroupsFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/GroupsFragment;->access$1300(Lcom/vkontakte/android/fragments/GroupsFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v2, v3, v5, v4}, Lcom/vkontakte/android/fragments/GroupListFragment;->setData(Ljava/util/ArrayList;ZZ)V

    .line 387
    iget-object v2, p0, Lcom/vkontakte/android/fragments/GroupsFragment$12;->this$0:Lcom/vkontakte/android/fragments/GroupsFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/GroupsFragment;->access$300(Lcom/vkontakte/android/fragments/GroupsFragment;)V

    .line 388
    iget-object v2, p0, Lcom/vkontakte/android/fragments/GroupsFragment$12;->this$0:Lcom/vkontakte/android/fragments/GroupsFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/GroupsFragment;->access$1500(Lcom/vkontakte/android/fragments/GroupsFragment;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-static {v2, v5, v6}, Lcom/vkontakte/android/Global;->showViewAnimated(Landroid/view/View;ZI)V

    .line 389
    iget-object v2, p0, Lcom/vkontakte/android/fragments/GroupsFragment$12;->this$0:Lcom/vkontakte/android/fragments/GroupsFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/GroupsFragment;->access$1600(Lcom/vkontakte/android/fragments/GroupsFragment;)Landroid/widget/ProgressBar;

    move-result-object v2

    invoke-static {v2, v4, v6}, Lcom/vkontakte/android/Global;->showViewAnimated(Landroid/view/View;ZI)V

    .line 390
    iget-object v2, p0, Lcom/vkontakte/android/fragments/GroupsFragment$12;->this$0:Lcom/vkontakte/android/fragments/GroupsFragment;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/vkontakte/android/fragments/GroupsFragment;->access$1702(Lcom/vkontakte/android/fragments/GroupsFragment;Lcom/vkontakte/android/APIRequest;)Lcom/vkontakte/android/APIRequest;

    .line 391
    return-void
.end method
